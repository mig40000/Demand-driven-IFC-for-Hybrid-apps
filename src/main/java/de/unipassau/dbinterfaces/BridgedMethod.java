package de.unipassau.dbinterfaces;

public record BridgedMethod(String appName, String initiatingClass, String clazz, String interfaceObject, String accessSpecifier,
                            String signature) {

    @Override
    public String toString() {
        return "BridgedMethodInfo{" +
                "appName='" + appName + '\'' +
                ", initiatingClass='" + initiatingClass + '\'' +
                ", clazz='" + clazz + '\'' +
                ", interfaceObject='" + interfaceObject + '\'' +
                ", accessSpecifier='" + accessSpecifier + '\'' +
                ", signature='" + signature + '\'' +
                '}';
    }
}
