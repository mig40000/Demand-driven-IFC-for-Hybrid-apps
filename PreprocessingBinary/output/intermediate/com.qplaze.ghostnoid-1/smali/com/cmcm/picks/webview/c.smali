.class public Lcom/cmcm/picks/webview/c;
.super Ljava/lang/Object;
.source "WebViews.java"


# direct methods
.method public static a(Landroid/webkit/WebView;)V
    .locals 2
    .param p0    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    .line 26
    :goto_0
    return-void

    .line 22
    :cond_0
    :try_start_0
    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/cmcm/picks/webview/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;Z)V
    .locals 2
    .param p0    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 37
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_1
    :try_start_0
    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/cmcm/picks/webview/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/cmcm/picks/webview/c$1;

    invoke-direct {v0}, Lcom/cmcm/picks/webview/c$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    return-void
.end method
