package de.unipassau.dbinterfaces;

import de.unipassau.utils.Config;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.*;
import java.util.function.Consumer;
import java.util.stream.Collectors;

public class BridgedMethodList extends ArrayList<BridgedMethod> implements Iterable<BridgedMethod> {
    private final List<BridgedMethod> bridgedMethods = new ArrayList<>();

    private static final Logger logger = LoggerFactory.getLogger(Config.ToolName);

    private void add(String appName, String initiatingClass, String bridgedClass, String interfaceObjects, String bridgeMethods) {
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

    public static BridgedMethodList load(String dbPath) {
        BridgedMethodList webViewsList = new BridgedMethodList();
        String url = "jdbc:sqlite:" + dbPath;
        logger.info("Reading Bridge Interfaces from database {}", dbPath);
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
                if (!initiatingClass.isEmpty() && !bridgeClass.isEmpty()) {
                    initiatingClass = initiatingClass.substring(0, initiatingClass.length() - 1);
                    bridgeClass = bridgeClass.substring(0, bridgeClass.length() - 1);
                    webViewsList.add(appName, initiatingClass, bridgeClass, interfaceObject, bridgeMethods);
                } else {
                    logger.warn("Could not found initialingClass and bridge class for {}", appName);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return webViewsList;
    }

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
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        BridgedMethodList that = (BridgedMethodList) o;
        return Objects.equals(bridgedMethods, that.bridgedMethods);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), bridgedMethods);
    }

    public List<BridgedMethod> getBridgeMethodsInClass(String clazz) {
        return this.bridgedMethods.stream().filter(method -> clazz.equals(method.clazz())).collect(Collectors.toList());
    }
}
