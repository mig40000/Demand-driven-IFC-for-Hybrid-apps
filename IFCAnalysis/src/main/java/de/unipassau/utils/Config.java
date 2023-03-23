package de.unipassau.utils;

public class Config {
    public String Apk;
    public int ApiLevel = -1;
    public String androidJarpath;
    public String database;
    public String sourceSinkFile;

    public static String ToolName = "HiDemandFlow";
    private static Config config;

    public static Config getConfig() {
        if (config == null) {
            config = new Config();
        }
        return config;
    }
}
