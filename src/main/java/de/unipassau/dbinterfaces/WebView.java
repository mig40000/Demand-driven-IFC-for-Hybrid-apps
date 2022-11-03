package de.unipassau.dbinterfaces;

import java.util.Objects;

public class WebView {
    private final String apk;
    private final String className;
    private final String slice;
    private final boolean usesWebview;
    private final boolean permissionSet;
    private final boolean jsEnabled;
    private final boolean injects;
    private final String injectedClass;
    private final int annotatedMethods;
    private final int invoked;
    private final String leaks;

    public WebView(String apk, String className, String slice, boolean usesWebview, boolean permissionSet, boolean jsEnabled, boolean injects, String injectedClass, int annotatedMethods, int invoked, String leaks) {
        this.apk = apk;
        this.className = className;
        this.slice = slice;
        this.usesWebview = usesWebview;
        this.permissionSet = permissionSet;
        this.jsEnabled = jsEnabled;
        this.injects = injects;
        this.injectedClass = injectedClass;
        this.annotatedMethods = annotatedMethods;
        this.invoked = invoked;
        this.leaks = leaks;
    }

    public String getApk() {
        return apk;
    }

    public String getClassName() {
        return className;
    }

    public String getSlice() {
        return slice;
    }

    public boolean isUsesWebview() {
        return usesWebview;
    }

    public boolean isPermissionSet() {
        return permissionSet;
    }

    public boolean isJsEnabled() {
        return jsEnabled;
    }

    public boolean isInjects() {
        return injects;
    }

    public String getInjectedClass() {
        return injectedClass;
    }

    public int getAnnotatedMethods() {
        return annotatedMethods;
    }

    public int getInvoked() {
        return invoked;
    }

    public String getLeaks() {
        return leaks;
    }

    @Override
    public String toString() {
        return "WebView{" +
                "apk='" + apk + '\'' +
                ", className='" + className + '\'' +
                ", slice='" + slice + '\'' +
                ", usesWebview=" + usesWebview +
                ", permissionSet=" + permissionSet +
                ", jsEnabled=" + jsEnabled +
                ", injects=" + injects +
                ", injectedClass='" + injectedClass + '\'' +
                ", annotatedMethods=" + annotatedMethods +
                ", invoked=" + invoked +
                ", leaks='" + leaks + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        WebView webView = (WebView) o;
        return usesWebview == webView.usesWebview && permissionSet == webView.permissionSet && jsEnabled == webView.jsEnabled && injects == webView.injects && annotatedMethods == webView.annotatedMethods && invoked == webView.invoked && apk.equals(webView.apk) && className.equals(webView.className) && slice.equals(webView.slice) && injectedClass.equals(webView.injectedClass) && leaks.equals(webView.leaks);
    }

    @Override
    public int hashCode() {
        return Objects.hash(apk, className, slice, usesWebview, permissionSet, jsEnabled, injects, injectedClass, annotatedMethods, invoked, leaks);
    }
}
