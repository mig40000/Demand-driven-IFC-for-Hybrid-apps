.class public Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;
.super Lcom/unity3d/ads2/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads2/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateAdBlockerCheck"
.end annotation


# instance fields
.field private _address:Ljava/net/InetAddress;

.field private _configuration:Lcom/unity3d/ads2/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads2/configuration/Configuration;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads2/configuration/InitializeThread$1;)V

    .line 120
    iput-object p1, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads2/configuration/Configuration;

    .line 121
    return-void
.end method

.method static synthetic access$102(Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    return-object p1
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads2/configuration/InitializeThread$InitializeState;
    .locals 4

    .prologue
    .line 129
    const-string v0, "Unity Ads init: checking for ad blockers"

    invoke-static {v0}, Lcom/unity3d/ads2/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 133
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads2/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/ads2/configuration/Configuration;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 139
    new-instance v2, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;-><init>(Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 150
    invoke-virtual {v2}, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->start()V

    .line 153
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    .line 154
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const-string v0, "Unity Ads init: halting init because Unity Ads config resolves to loopback address (due to ad blocker?)"

    invoke-static {v0}, Lcom/unity3d/ads2/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/unity3d/ads2/UnityAds;->getListener()Lcom/unity3d/ads2/IUnityAdsListener;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    new-instance v1, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;-><init>(Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;Lcom/unity3d/ads2/IUnityAdsListener;)V

    invoke-static {v1}, Lcom/unity3d/ads2/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    new-instance v0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateConfig;

    iget-object v1, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads2/configuration/Configuration;

    invoke-direct {v0, v1}, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateConfig;-><init>(Lcom/unity3d/ads2/configuration/Configuration;)V

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateConfig;

    iget-object v1, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads2/configuration/Configuration;

    invoke-direct {v0, v1}, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateConfig;-><init>(Lcom/unity3d/ads2/configuration/Configuration;)V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/unity3d/ads2/configuration/Configuration;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads2/configuration/Configuration;

    return-object v0
.end method
