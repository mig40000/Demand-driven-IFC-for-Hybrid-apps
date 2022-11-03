package de.unipassau.dbinterfaces;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.nio.file.Path;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BridgedMethodInfoList {
    private final List<BridgedMethodInfo> bridgedMethods = new ArrayList<>();

    private final Logger LOGGER = LoggerFactory.getLogger(BridgedMethodInfoList.class);

    private void add(String appName, String initiatingClass, String bridgedClass, String interfaceObjects, String bridgeMethods) {
        // TODO: Extract the bridged methods and get the objects and add it to webview objects
        for (String bridgeMethod : bridgeMethods.split("\n")) {
            // [0]: .method keyword, [1]: access specifier, [2]: method signature
            String[] tokens = bridgeMethod.split(" ");
            String tokenType = tokens[0];
            String accessSpecifier = tokens[1];
            String methodSign = tokens[2];

            if (!tokenType.equals(".method")) {
                LOGGER.error("Invalid method name");
            }


//            String[] arguments = extractArguments(tokens[2]);
//            String methodName = extractMethodName(methodSign);
//            String methodReturnType = extractMethodReturnType(methodSign);

            BridgedMethodInfo info = new BridgedMethodInfo(appName, initiatingClass, bridgedClass, interfaceObjects, accessSpecifier, methodSign);
            bridgedMethods.add(info);
        }
    }

    public static BridgedMethodInfoList load(Path dbPath) {
        BridgedMethodInfoList webViewsList = new BridgedMethodInfoList();
        String url = "jdbc:sqlite:" + dbPath.toString();
        try (Connection connection = DriverManager.getConnection(url)) {
            Statement stmt = connection.createStatement();
            ResultSet rows = stmt.executeQuery("SELECT * from webview_prime");
            while (rows.next()) {
                int index = 0;
                var appName = rows.getString(++index);
                var initiatingClass = rows.getString(++index);
                var bridgeClass = rows.getString(++index);
                var interfaceObject = rows.getString(++index);
                var bridgeMethods = rows.getString(++index);

                // Exclude the last ';' from the class names
                initiatingClass = initiatingClass.substring(0, initiatingClass.length()-1);
                bridgeClass = bridgeClass.substring(0, bridgeClass.length()-1);
                webViewsList.add(appName, initiatingClass, bridgeClass, interfaceObject, bridgeMethods);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return webViewsList;
    }


//    private String extractMethodName(String methodSignature) {
//        int indxOpenBracnes = methodSignature.indexOf('(');
//        return methodSignature.substring(0, indxOpenBracnes);
//    }
//
//    private String extractMethodReturnType(String methodSignature) {
//        int indxClosedBraces = methodSignature.indexOf(')');
//        String returnType = methodSignature.substring(indxClosedBraces+1);
//        if (returnType.equals("V")) {
//            return "Void";
//        } else {
//            return returnType;
//        }
//    }
//
//    private String[] extractArguments(String methodSignature) {
//        int indxOpenBraces = methodSignature.indexOf('(');
//        int idxClosedBraces = methodSignature.indexOf(')');
//        return methodSignature.substring(indxOpenBraces+1,idxClosedBraces).split(";");
//    }

    @Override
    public String toString() {
        StringBuilder buffer = new StringBuilder();
        for (var bridgeMethod : bridgedMethods) {
            buffer.append(bridgeMethod);
            buffer.append(System.getProperty("line.separator"));
        }
        return buffer.toString();
    }

    public int size() {
        return bridgedMethods.size();
    }

    public List<BridgedMethodInfo> getBridgedMethods() {
        return bridgedMethods;
    }

    public BridgedMethodInfo get(int index) {
        return bridgedMethods.get(index);
    }
}
