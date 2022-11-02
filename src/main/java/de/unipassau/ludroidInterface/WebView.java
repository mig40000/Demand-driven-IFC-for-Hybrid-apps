package de.unipassau.ludroidInterface;

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
}
