package de.unipassau.ludroidInterface;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.nio.file.Path;
import java.sql.*;
import java.util.ArrayList;
import java.util.Set;
import java.util.stream.Collectors;

public class BridgeDetailList {
    private ArrayList<BridgeDetail> bridgeDetails = new ArrayList<>();

    private static final Logger LOGGER = LoggerFactory.getLogger(BridgeDetailList.class);

    private void add(BridgeDetail b) {
        bridgeDetails.add(b);
    }

    public static BridgeDetailList load(Path dbPath) {
        BridgeDetailList list = new BridgeDetailList();
        String url = "jdbc:sqlite:" + dbPath.toString();
        try (Connection connection = DriverManager.getConnection(url)) {
            Statement stmt = connection.createStatement();
            ResultSet rows = stmt.executeQuery("SELECT * from bridgeDetails");
            while (rows.next()) {
                int index=0;
                String packageName = rows.getString(++index);
                String activityId = rows.getString(++index);
                String injectedClass = rows.getString(++index);
                String injectedObject = rows.getString(++index);
                String functionCalled = rows.getString(++index);
                BridgeDetail bridge = new BridgeDetail(packageName, activityId, injectedClass, injectedObject, functionCalled);
                list.add(bridge);
            }
            LOGGER.info("Loaded bridge details");
        } catch (SQLException e) {
            LOGGER.error("Failed to read from database [Unhandled exception] " + dbPath);
            e.printStackTrace();
        }
        return list;
    }

    private Set<BridgeDetail> getByPackageName(String apk) {
        return bridgeDetails.stream().filter(bridge -> bridge.getPackageName().equals(apk)).collect(Collectors.toSet());
    }
}
