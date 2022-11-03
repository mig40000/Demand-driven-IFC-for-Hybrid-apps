package de.unipassau.dbinterfaces;

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
}
