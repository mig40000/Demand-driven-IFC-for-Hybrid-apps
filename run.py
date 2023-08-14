from argparse import ArgumentParser, RawTextHelpFormatter
import os
import logging

PROJECT_ROOT = os.path.join(os.getenv("PWD"))
SUSI_FILE = os.path.join(PROJECT_ROOT, "IFCAnalysis", "resource", "SourcesAndSinks.txt")


def make_config(app_name: str,
                apk_file: str,
                js_dir: str,
                js_script: str,
                database: str,
                susi_file: str,
                version: int = 30,
                ) -> typing.Dict[str, str]:
    res = dict()

    android_sdk_root = os.getenv('ANDROID_SDK_ROOT')
    logging.info(f"Using SDK_ROOT={android_sdk_root}")
    android_path = os.path.join(android_sdk_root, "platforms", f"android-{version}", "android.jar")

    if not os.path.exists(android_path):
        logging.info(f"android.jar not present in {android_path}")
        exit(127)

    if not os.path.exists(apk_file):
        logging.info(f'apk file not present {apk_file}')
        exit(127)

    if not os.path.exists(susi_file):
        logging.info(f'cannot find {susi_file}')
        exit(127)

    if not os.path.exists(database):
        logging.info(f'database not found: {database}')
        exit(127)
    if not os.path.exists(js_dir):
        logging.info(f'cannot locate directory {js_dir}')
        exit(127)

    if not os.path.exists(os.path.join(js_dir, js_script)):
        logging.info(f'cannot locate file {os.path.join(js_dir, js_script)}')

    res['appName'] = app_name
    res['apkFile'] = apk_file
    res['jsDir'] = js_dir
    res['jsFilePath'] = js_script
    res['apiLevel'] = version
    res['androidJarPath'] = android_path
    res['dbPath'] = database
    res['susiFile'] = susi_file
    return res

def ifc_analysis(config_file: str, logfile) -> None:
    command = ["java",
               "-Xmx16G",
               # "-Xss2G",
               "-jar",
               os.path.join(PROJECT_ROOT, "IFCAnalysis", "target", "iwanDroid-1.0-jar-with-dependencies.jar"),
               "-p", config_file]
    logging.info("command= ", command)
    f = open(logfile, 'a')
    try:
        subprocess.run(' '.join(command), shell=True, timeout=TIMEOUT, stdout=f, stderr=f)
    except subprocess.TimeoutExpired:
        print("timeout")


def pre_processing(apps_path : str) -> None:
    command = ["java",
               "-Xmx16G",
               # "-Xss2G",
               "-jar",
               os.path.join(PROJECT_ROOT, "Preprocessing", "Preprocessing.jar"),
               "-p", config_file]
    logging.info("command= ", command)
    f = open(logfile, 'a')
    try:
        subprocess.run(' '.join(command), shell=True, timeout=TIMEOUT, stdout=f, stderr=f)
    except subprocess.TimeoutExpired:
        print("timeout")

def has_android_sdk() -> bool:
    return os.environ.get("ANDROID_SDK_ROOT") is not None


def scan_directory_for_apks(root_dir: str):
    for root, _, files in os.walk(root_dir):
        for file in files:
            if file.endswith(".apk"):
                yield root_dir, file, os.path.join(root_dir, file)


def construct_js_dir(js_root_dir: str, apk: str) -> str:
    apk = apk.replace(".apk", "")
    canonical_path = re.sub("_[0-9]+", "", apk)
    return os.path.join(js_root_dir, canonical_path)

def get_js_file(app_js_dir: str) -> str:
    files = []
    for _, _, f in os.walk(app_js_dir):
        files.extend(f)
    return files[0] if len(files) > 0 else None


def runifc():
    for (root, apk, apk_path) in scan_directory_for_apks(apps_directory):
        logfile = os.path.join(apps_directory, "logs_new", f"{apk}.log")
        logging.basicConfig(filename=logfile, filemode='w')
        js_root = os.path.join(PROJECT_ROOT, "IFCAnalysis", "dataUpload", "JSCode", "JSCodeProcessed")
        js_dir = construct_js_dir(js_root, apk)
        js_file = get_js_file(js_dir)

        if js_file is not None:
            config = make_config(
                apk.replace(".apk", ""),
                apk_path,
                js_dir,
                get_js_file(js_dir),
                database,
                SUSI_FILE
            )

            for k, v in config.items():
                logging.info(f'{k}={v}')

            logging.info(f"------ INITIATING ANALYSIS [{apk}]-------------------")
            config_file = write_config_to_file(apps_directory, config)
            start = time()
            ifc_analysis(config_file, logfile)
            end = time()
            logging.info(f"\n\nTOTAL TIME: {end - start}/60")
        else:
            logging.error("Could not find js files")


def main() -> None:
    parser = ArgumentParser('charlie.py', formatter_class=RawTextHelpFormatter)
    parser.add_argument("-d", dest='database', type=str,
                        help="database path from pre-processing (default: Intent.sqlite)", default="Intent.sqlite")
    parser.add_argument("-apk", dest='apps_directory', type=str, help="android APKs")
    parser.add_argument("-s", dest='SUSI_FILE', type=str, help="sources/sinks file (default=SourcesSinks.txt)", default=os.path.join(".", "IFCAnalysis", "resource", "SourcesAndSinks.txt"))
    pre_processing(apps_directory)

if __name__ == '__main__':
    main()