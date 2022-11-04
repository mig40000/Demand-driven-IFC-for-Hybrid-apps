package de.unipassau.dbinterfaces;

import de.unipassau.utils.Config;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import java.util.function.Consumer;

public class BridgedMethods implements Iterable<BridgedMethod> {
    private final List<BridgedMethod> bridgedMethods = new ArrayList<>();

    private final static Logger logger = LoggerFactory.getLogger(Config.ToolName);

    private void add(String appName, String initiatingClass, String bridgedClass, String interfaceObjects, String bridgeMethods) {
        // TODO: Extract the bridged methods and get the objects and add it to webview objects
        for (String bridgeMethod : bridgeMethods.split("\n")) {
            // [0]: .method keyword, [1]: access specifier, [2]: method signature
            String[] tokens = bridgeMethod.split(" ");
            String tokenType = tokens[0];
            String accessSpecifier = tokens[1];
            String methodSign = tokens[2];

            if (!tokenType.equals(".method"))
                logger.error("Invalid method name");
            BridgedMethod info = new BridgedMethod(appName, initiatingClass, bridgedClass, interfaceObjects, accessSpecifier, methodSign);
            bridgedMethods.add(info);
        }
    }

    public static BridgedMethods load(String dbPath) {
        BridgedMethods webViewsList = new BridgedMethods();
        String url = "jdbc:sqlite:" + dbPath;
        logger.info("Reading Bridge Interfaces from database " + dbPath);
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
                initiatingClass = initiatingClass.substring(0, initiatingClass.length() - 1);
                bridgeClass = bridgeClass.substring(0, bridgeClass.length() - 1);
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

    public List<BridgedMethod> getBridgedMethods() {
        return bridgedMethods;
    }

    public BridgedMethod get(int index) {
        return bridgedMethods.get(index);
    }

    @Override
    public Iterator<BridgedMethod> iterator() {
        return bridgedMethods.iterator();
    }

    @Override
    public void forEach(Consumer<? super BridgedMethod> action) {
        Iterable.super.forEach(action);
    }

    @Override
    public Spliterator<BridgedMethod> spliterator() {
        return Iterable.super.spliterator();
    }
}
