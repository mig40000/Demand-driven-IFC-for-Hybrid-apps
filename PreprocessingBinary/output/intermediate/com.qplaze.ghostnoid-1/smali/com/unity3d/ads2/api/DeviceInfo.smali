.class public Lcom/unity3d/ads2/api/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads2/api/DeviceInfo$StorageType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingTrackingId(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getAndroidId(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static getApiLevel(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getApiLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static getBatteryLevel(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getBatteryLevel()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public static getBatteryStatus(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getBatteryStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public static getConnectionType(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/unity3d/ads2/device/Device;->isUsingWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "wifi"

    .line 91
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 92
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/unity3d/ads2/device/Device;->isActiveNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "cellular"

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "none"

    goto :goto_0
.end method

.method public static getDeviceVolume(Ljava/lang/Integer;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/unity3d/ads2/device/Device;->getStreamVolume(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method private static getFileForStorageType(Lcom/unity3d/ads2/api/DeviceInfo$StorageType;)Ljava/io/File;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/unity3d/ads2/api/DeviceInfo$1;->$SwitchMap$com$unity3d$ads2$api$DeviceInfo$StorageType:[I

    invoke-virtual {p0}, Lcom/unity3d/ads2/api/DeviceInfo$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled storagetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads2/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    invoke-static {}, Lcom/unity3d/ads2/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-static {}, Lcom/unity3d/ads2/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFreeMemory(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getFreeMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public static getFreeSpace(Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 6
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    invoke-static {p0}, Lcom/unity3d/ads2/api/DeviceInfo;->getStorageTypeFromString(Ljava/lang/String;)Lcom/unity3d/ads2/api/DeviceInfo$StorageType;

    move-result-object v0

    .line 219
    if-nez v0, :cond_0

    .line 220
    sget-object v0, Lcom/unity3d/ads2/device/DeviceError;->INVALID_STORAGETYPE:Lcom/unity3d/ads2/device/DeviceError;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads2/api/DeviceInfo;->getFileForStorageType(Lcom/unity3d/ads2/api/DeviceInfo$StorageType;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads2/device/Device;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 225
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 226
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v2}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    :cond_1
    sget-object v2, Lcom/unity3d/ads2/device/DeviceError;->COULDNT_GET_STORAGE_LOCATION:Lcom/unity3d/ads2/device/DeviceError;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getHeadset(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->isWiredHeadsetOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public static getInstalledPackages(ZLcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 121
    invoke-static {p0}, Lcom/unity3d/ads2/device/Device;->getInstalledPackages(Z)Ljava/util/List;

    move-result-object v0

    .line 122
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public static getLimitAdTrackingFlag(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static getManufacturer(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static getModel(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public static getNetworkOperator(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public static getNetworkOperatorName(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public static getNetworkType(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public static getOsVersion(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public static getRingerMode(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getRingerMode()I

    move-result v0

    .line 144
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 145
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 160
    :goto_0
    return-void

    .line 147
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled ringerMode error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads2/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :pswitch_0
    sget-object v1, Lcom/unity3d/ads2/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads2/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :pswitch_1
    sget-object v1, Lcom/unity3d/ads2/device/DeviceError;->AUDIOMANAGER_NULL:Lcom/unity3d/ads2/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getScreenBrightness(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getScreenBrightness()I

    move-result v0

    .line 175
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 176
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 187
    :goto_0
    return-void

    .line 178
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled screenBrightness error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads2/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :pswitch_0
    sget-object v1, Lcom/unity3d/ads2/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads2/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getScreenDensity(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getScreenDensity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public static getScreenHeight(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getScreenHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static getScreenLayout(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getScreenLayout()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static getScreenWidth(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getScreenWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method private static getStorageTypeFromString(Ljava/lang/String;)Lcom/unity3d/ads2/api/DeviceInfo$StorageType;
    .locals 3

    .prologue
    .line 193
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/ads2/api/DeviceInfo$StorageType;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads2/api/DeviceInfo$StorageType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 197
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSystemLanguage(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/unity3d/ads2/device/Device;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public static getTimeZone(Ljava/lang/Boolean;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 5
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static getTotalMemory(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getTotalMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public static getTotalSpace(Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 6
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 233
    invoke-static {p0}, Lcom/unity3d/ads2/api/DeviceInfo;->getStorageTypeFromString(Ljava/lang/String;)Lcom/unity3d/ads2/api/DeviceInfo$StorageType;

    move-result-object v0

    .line 235
    if-nez v0, :cond_0

    .line 236
    sget-object v0, Lcom/unity3d/ads2/device/DeviceError;->INVALID_STORAGETYPE:Lcom/unity3d/ads2/device/DeviceError;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads2/api/DeviceInfo;->getFileForStorageType(Lcom/unity3d/ads2/api/DeviceInfo$StorageType;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads2/device/Device;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 241
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 242
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v2}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_1
    sget-object v2, Lcom/unity3d/ads2/device/DeviceError;->COULDNT_GET_STORAGE_LOCATION:Lcom/unity3d/ads2/device/DeviceError;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getUniqueEventId(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->getUniqueEventId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public static isAppInstalled(Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/unity3d/ads2/device/Device;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public static isRooted(Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads2/device/Device;->isRooted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 117
    return-void
.end method
