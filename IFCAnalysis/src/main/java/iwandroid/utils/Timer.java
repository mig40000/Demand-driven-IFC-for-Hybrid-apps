package iwandroid.utils;

import iwandroid.main.Config;

public class Timer {
    private Config config;
    private long starttime;
    private long endtime;
    private long lastRecord;

    public Timer(Config config) {
        this.config = config;
        this.starttime = 0;
        this.lastRecord = 0;
        this.endtime = 0;
    }

    public void startTimer() {
        this.starttime = System.currentTimeMillis()/1000;
    }

    public void stopTimer() {
        this.endtime = System.currentTimeMillis()/1000;
    }

    public long lap() {
        long now = System.currentTimeMillis()/1000;
        long diff = now - this.lastRecord;
        this.lastRecord = now;
        return diff;
    }

    public long timeTaken() {
        return this.endtime-this.starttime;
    }
}
