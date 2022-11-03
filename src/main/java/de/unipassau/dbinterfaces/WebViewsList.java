package de.unipassau.dbinterfaces;

import java.nio.file.Path;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class WebViewsList {
    private final List<WebView> webViews = new ArrayList<>();

    public static WebViewsList load(Path dbPath) {
        WebViewsList webViewsList = new WebViewsList();
        String url = "jdbc:sqlite:" + dbPath.toString();
        try (Connection connection = DriverManager.getConnection(url)) {
            Statement stmt = connection.createStatement();
            ResultSet rows = stmt.executeQuery("SELECT * from webviews");
            while (rows.next()) {
                int index = 0;
                var apk = rows.getString(++index);
                var className = rows.getString(++index);
                var slice = rows.getString(++index);
                var usesWebView = rows.getBoolean(++index);
                var permissionset = rows.getBoolean(++index);
                var jsEnabled = rows.getBoolean(++index);
                var injects = rows.getBoolean(++index);
                var injectedClass = rows.getString(++index);
                var annotated = rows.getInt(++index);
                var invoked = rows.getInt(++index);
                var leaks = rows.getString(++index);
                WebView webView = new WebView(apk, className, slice, usesWebView, permissionset, jsEnabled, injects, injectedClass, annotated, invoked, leaks);
                webViewsList.webViews.add(webView);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return webViewsList;
    }

    public Set<String> getInjectedClass(String apk) {
        return webViews.stream().filter(webView -> webView.apk().equals(apk)).map(WebView::injectedClass).collect(Collectors.toSet());
    }
}
