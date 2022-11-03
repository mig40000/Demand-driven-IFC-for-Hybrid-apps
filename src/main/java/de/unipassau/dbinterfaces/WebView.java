package de.unipassau.dbinterfaces;

import java.util.Objects;

public record WebView(String apk, String className, String slice, boolean usesWebview,
                      boolean permissionSet, boolean jsEnabled, boolean injects, String injectedClass,
                      int annotatedMethods, int invoked, String leaks) {

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
