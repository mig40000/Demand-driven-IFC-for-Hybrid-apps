package de.unipassau.dbinterfaces;

import java.util.Objects;

public class BridgeDetail {
    private final String packageName;
    private final String activityId;
    private final String injectedClass;
    private final String injectedObject;
    private final String functionCalled;


    public BridgeDetail(String packageName, String activityId, String injectedClass, String injectedObject, String functionCalled) {
        this.packageName = packageName;
        this.activityId = activityId;
        this.injectedClass = injectedClass;
        this.injectedObject = injectedObject;
        this.functionCalled = functionCalled;
    }

    public String getPackageName() {
        return packageName;
    }

    public String getActivityId() {
        return activityId;
    }

    public String getInjectedClass() {
        return injectedClass;
    }

    public String getInjectedObject() {
        return injectedObject;
    }

    public String getFunctionCalled() {
        return functionCalled;
    }

    @Override
    public String toString() {
        return "BridgeDetail{" +
                "packageName='" + packageName + '\'' +
                ", activityId='" + activityId + '\'' +
                ", injectedClass='" + injectedClass + '\'' +
                ", injectedObject='" + injectedObject + '\'' +
                ", functionCalled='" + functionCalled + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BridgeDetail that = (BridgeDetail) o;
        return Objects.equals(packageName, that.packageName) && Objects.equals(activityId, that.activityId) && Objects.equals(injectedClass, that.injectedClass) && Objects.equals(injectedObject, that.injectedObject) && Objects.equals(functionCalled, that.functionCalled);
    }

    @Override
    public int hashCode() {
        return Objects.hash(packageName, activityId, injectedClass, injectedObject, functionCalled);
    }
}
