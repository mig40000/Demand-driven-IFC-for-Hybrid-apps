package de.unipassau.dbinterfaces;

import java.util.Objects;

public record BridgeDetail(String packageName, String activityId, String injectedClass,
                           String injectedObject, String functionCalled) {

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
