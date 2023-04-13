.class public Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateReset;
.super Lcom/unity3d/ads2/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads2/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateReset"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads2/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads2/configuration/Configuration;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads2/configuration/InitializeThread$1;)V

    .line 69
    iput-object p1, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/ads2/configuration/Configuration;

    .line 70
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads2/configuration/InitializeThread$InitializeState;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    const-string v0, "Unity Ads init: starting init"

    invoke-static {v0}, Lcom/unity3d/ads2/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 76
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 77
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v2

    .line 78
    const/4 v0, 0x1

    .line 80
    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v2, v4}, Lcom/unity3d/ads2/webview/WebViewApp;->setWebAppLoaded(Z)V

    .line 82
    invoke-virtual {v2, v4}, Lcom/unity3d/ads2/webview/WebViewApp;->setWebAppInitialized(Z)V

    .line 84
    invoke-virtual {v2}, Lcom/unity3d/ads2/webview/WebViewApp;->getWebView()Lcom/unity3d/ads2/webview/WebView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 85
    new-instance v0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateReset$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateReset$1;-><init>(Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateReset;Lcom/unity3d/ads2/webview/WebViewApp;Landroid/os/ConditionVariable;)V

    invoke-static {v0}, Lcom/unity3d/ads2/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    .line 97
    :cond_0
    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError;

    const-string v1, "reset webapp"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Reset failed on opening ConditionVariable"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 111
    :goto_0
    return-object v0

    .line 102
    :cond_1
    invoke-static {v4}, Lcom/unity3d/ads2/properties/SdkProperties;->setInitialized(Z)V

    .line 103
    invoke-static {}, Lcom/unity3d/ads2/placement/Placement;->reset()V

    .line 104
    invoke-static {}, Lcom/unity3d/ads2/broadcast/BroadcastMonitor;->removeAllBroadcastListeners()V

    .line 105
    invoke-static {}, Lcom/unity3d/ads2/cache/CacheThread;->cancel()V

    .line 106
    invoke-static {}, Lcom/unity3d/ads2/connectivity/ConnectivityMonitor;->stopAll()V

    .line 107
    invoke-static {}, Lcom/unity3d/ads2/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads2/device/StorageManager;->init(Landroid/content/Context;)Z

    .line 108
    invoke-static {}, Lcom/unity3d/ads2/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads2/device/AdvertisingId;->init(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/ads2/configuration/Configuration;

    invoke-static {}, Lcom/unity3d/ads2/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads2/configuration/Configuration;->setConfigUrl(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;

    iget-object v1, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/ads2/configuration/Configuration;

    invoke-direct {v0, v1}, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;-><init>(Lcom/unity3d/ads2/configuration/Configuration;)V

    goto :goto_0
.end method
