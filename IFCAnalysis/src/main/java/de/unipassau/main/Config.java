package de.unipassau.main;

import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

public class Config {
    private String apkFile;
    private int apilevel = -1;
    private String androidJarpath;
    private String database;
    private String sourceSinkFile;
    private String jsDir;
    private String jsFilepath;
    private String appName;

    protected Config() {}

    @Contract(value = " -> new", pure = true)
    public static @NotNull Config emptyConfig() {
        return new Config();
    }

    public String getApkFile() {
        return apkFile;
    }

    public void setApkFile(String apkFile) {
        this.apkFile = apkFile;
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

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }
}
