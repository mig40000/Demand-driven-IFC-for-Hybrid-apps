package de.unipassau.main;

import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

public class Config {
    private String apk;
    private int apilevel = -1;
    private String androidJarpath;
    private String database;
    private String sourceSinkFile;
    private String jsDir;
    private String jsFilepath;

    private static Config config = null;

    private Config() {}

    @Contract(value = " -> new", pure = true)
    public static @NotNull Config makeEmpty() {
        return new Config();
    }

//    public static Config getInstance() {
//        if (config == null) {
//            config = new Config();
//        }
//        return config;
//    }

    public String getApk() {
        return apk;
    }

    public void setApk(String apk) {
        this.apk = apk;
    }

    public int getApilevel() {
        return apilevel;
    }

    public void setApilevel(int apilevel) {
        this.apilevel = apilevel;
    }

    public String getAndroidJarpath() {
        return androidJarpath;
    }

    public void setAndroidJarpath(String androidJarpath) {
        this.androidJarpath = androidJarpath;
    }

    public String getDatabase() {
        return database;
    }

    public void setDatabase(String database) {
        this.database = database;
    }

    public String getSourceSinkFile() {
        return sourceSinkFile;
    }

    public void setSourceSinkFile(String sourceSinkFile) {
        this.sourceSinkFile = sourceSinkFile;
    }

    public static void setConfig(Config config) {
        Config.config = config;
    }

    public String getJsDir() {
        return jsDir;
    }

    public void setJsDir(String jsDir) {
        this.jsDir = jsDir;
    }

    public String getJsFilepath() {
        return jsFilepath;
    }

    public void setJsFilepath(String jsFilepath) {
        this.jsFilepath = jsFilepath;
    }
}
