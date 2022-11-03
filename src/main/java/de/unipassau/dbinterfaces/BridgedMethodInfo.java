package de.unipassau.dbinterfaces;

import java.util.Arrays;

public record BridgedMethodInfo(String initiatingClass, String bridgedClass, String interfaceObject, String accessSpecifier,
                                String name, String[] arguments, String returnType) {

    @Override
    public String toString() {
        return "BridgedMethodInfo{" +
                "initiatingClass='" + initiatingClass + '\'' +
                ", bridgedClass='" + bridgedClass + '\'' +
                ", interfaceObject='" + interfaceObject + '\'' +
                ", accessSpecifier='" + accessSpecifier + '\'' +
                ", name='" + name + '\'' +
                ", arguments=" + Arrays.toString(arguments) +
                ", returnType='" + returnType + '\'' +
                '}';
    }
}
