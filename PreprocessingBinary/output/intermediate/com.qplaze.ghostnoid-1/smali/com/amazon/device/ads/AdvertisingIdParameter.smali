.class Lcom/amazon/device/ads/AdvertisingIdParameter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/device/ads/UserIdParameter;


# static fields
.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "deviceId"


# instance fields
.field private final advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private advertisingIndentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

.field private final settings:Lcom/amazon/device/ads/Settings;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v2

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/device/ads/AdvertisingIdParameter;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/DeviceInfo;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/DeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    iput-object p2, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->settings:Lcom/amazon/device/ads/Settings;

    iput-object p3, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    iput-object p4, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    return-void
.end method

.method private canIdentify()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIndentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "configVersion"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->setShouldSetCurrentAdvertisingIdentifier(Z)Lcom/amazon/device/ads/AdvertisingIdentifier;

    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIndentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIndentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public evaluate(Lcom/amazon/device/ads/WebRequest;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdParameter;->canIdentify()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v1, "debug.idfa"

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIndentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "idfa"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUdidSha1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v3, "debug.sha1udid"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
