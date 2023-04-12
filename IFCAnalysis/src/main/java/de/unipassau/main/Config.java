package de.unipassau.main;

public class Config {
    private String apk;
    private int apilevel = -1;
    private String androidJarpath;
    private String database;
    private String sourceSinkFile;

    public static String ToolName = "HiDemandFlow";

    private static Config config;

    private Config() {}

    public static Config getInstance() {
        if (config == null) {
            config = new Config();
        }
        return config;
    }

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

    public static String getToolName() {
        return ToolName;
    }

    public static void setToolName(String toolName) {
        ToolName = toolName;
    }

    public static Config getConfig() {
        return config;
    }

    public static void setConfig(Config config) {
        Config.config = config;
    }
}
