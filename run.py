#!/usr/bin/python3
from argparse import ArgumentParser, RawTextHelpFormatter
import os
import logging
import typing
import subprocess
import re
from time import time
from sys import exit, stderr, stdout, stdin

PROJECT_ROOT = os.path.join(os.getenv("PWD"))
TIMEOUT = 1000


def make_config(
    app_name: str,
    apk_file: str,
    js_dir: str,
    js_script: str,
    database: str,
    susi_file: str,
    android_sdk_root: str,
    version: int,
):
    res = dict()
    print(f"Using SDK_ROOT={android_sdk_root}")
    android_path = os.path.join(
        android_sdk_root, "platforms", f"android-{version}", "android.jar"
    )

    if not os.path.exists(android_path):
        print(f"android.jar not present in {android_path}")
        exit(127)

    if not os.path.exists(apk_file):
        print(f"apk file not present {apk_file}")
        exit(127)

    if not os.path.exists(susi_file):
        print(f"cannot find {susi_file}")
        exit(127)

    if not os.path.exists(database):
        print(f"database not found: {database}")
        exit(127)
    if not os.path.exists(js_dir):
        print(f"cannot locate directory {js_dir}")
        exit(127)

    if not os.path.exists(os.path.join(js_dir, js_script)):
        print(f"cannot locate file {os.path.join(js_dir, js_script)}")

    res["appName"] = app_name
    res["apkFile"] = apk_file
    res["jsDir"] = js_dir
    res["jsFilePath"] = js_script
    res["apiLevel"] = version
    res["androidJarPath"] = android_path
    res["dbPath"] = database
    res["susiFile"] = susi_file
    return res


def ifc_analysis(config_file: str) -> None:
    jar_path = os.path.join("iwanDroid-1.0-jar-with-dependencies.jar")

    if not os.path.exists(jar_path):
        print(f"failed to find {jar_path}")
        exit(100)

    command = " ".join(
        [
            "java",
            "-Xmx16G",
            # "-Xss2G",
            "-jar",
            jar_path,
            "-p",
            config_file,
        ]
    )

    print("running command: ", command)
    try:
        subprocess.run(command, shell=True, timeout=TIMEOUT)
    except subprocess.TimeoutExpired:
        print("timeout")


def run_pre_processing(apps_path: str) -> None:
    if apps_path is None:
        raise ValueError("apps_path is none")

    jar_path = os.path.join(".", "Preprocessing", "Preprocessing.jar")

    if not os.path.exists(jar_path):
        print(f"failed to find {jar_path}")
        exit(100)

    command = [
        "java",
        "-Xmx16G",
        "-jar",
        jar_path,
        apps_path,
    ]
    cmd = " ".join(command)
    try:
        subprocess.run(cmd, shell=True, timeout=TIMEOUT)
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


def get_js_file(app_js_dir: str, apk: str) -> str:
    files: str = []
    apk = apk.replace(".apk", "")
    for _, _, f in os.walk(app_js_dir):
        files.extend([x for x in f if x.startswith(apk)])
    return files[0] if len(files) > 0 else None


def run_ifc(apps_directory, database, susi_file, android_sdk_root, version):
    if apps_directory is None:
        raise ValueError("apps_directory is None")

    if database is None:
        raise ValueError("database is None")

    if susi_file is None:
        raise ValueError("susi_file is None")

    for _, apk, apk_path in scan_directory_for_apks(apps_directory):
        logs_dir = os.path.join(apps_directory, "logs_new")
        if not os.path.exists(logs_dir):
            os.mkdir(logs_dir)
        logfile = os.path.join(logs_dir, f"{apk}.log")
        logging.basicConfig(filename=logfile, filemode="w")
        js_root = os.path.join(".", "JSCODE")
        js_dir = js_root
        js_file = get_js_file(js_dir, apk)

        if js_file is not None:
            config = make_config(
                apk.replace(".apk", ""),
                apk_path,
                js_dir,
                js_file,
                database,
                susi_file,
                android_sdk_root,
                version
            )

            for k, v in config.items():
                print(f"{k}={v}")

            print("initiating IFC analysis")
            config_file = write_config_to_file(apps_directory, config)
            start = time()
            ifc_analysis(config_file)
            end = time()
            print(f"\n\nTOTAL TIME: {end - start}/60")
        else:
            print("Could not find js files", file=stderr)


def write_config_to_file(path_prefix: str, config: typing.Dict[str, str]) -> str:
    filename = os.path.join(path_prefix, f"{config.get('appName')}.prop")
    with open(filename, "w") as f:
        for k, v in config.items():
            f.write(f"{k}={v}\n")
    print(f"created config file {filename}")
    return filename


def sanity_check(args) -> None:
    if not os.path.exists(args.susi_file):
        raise ValueError(f"Cannot find {args.susi_file}")
    if not os.path.exists(args.database):
        raise ValueError(f"Database {args.database} does not exist")
    if not os.path.exists(args.apps_directory):
        raise ValueError(f"Invalid APK directory {args.apps_directory}")
    if args.android_sdk_root is None or not os.path.exists(args.android_sdk_root):
        raise ValueError(f"Set ANDROID_SDK_ROOT or give a valid path")


def main() -> None:
    parser = ArgumentParser("iwandroid", formatter_class=RawTextHelpFormatter)
    parser.add_argument(
        "-d",
        dest="database",
        type=str,
        help="database path from pre-processing (default: Intent.sqlite)",
        default="Intent.sqlite",
    )
    parser.add_argument(
        "-apks",
        dest="apps_directory",
        type=str,
        help="android apk files",
        required=True,
    )
    parser.add_argument(
        "-s",
        dest="susi_file",
        type=str,
        help="sources/sinks file (default=SourcesSinks.txt)",
        default=os.path.join(".", "IFCAnalysis", "resource", "SourcesAndSinks.txt"),
    )
    parser.add_argument(
        "-l",
        dest="android_sdk_root",
        type=str,
        help="path/to/android/sdk/root",
        default=os.environ.get("ANDROID_SDK_ROOT"),
    )
    parser.add_argument(
        "-v",
        dest="version",
        type=int,
        help="android version number",
        default=30
    )
    args = parser.parse_args()
    sanity_check(args)
    run_pre_processing(args.apps_directory)
    run_ifc(args.apps_directory, args.database, args.susi_file, args.android_sdk_root, args.version)


if __name__ == "__main__":
    main()
