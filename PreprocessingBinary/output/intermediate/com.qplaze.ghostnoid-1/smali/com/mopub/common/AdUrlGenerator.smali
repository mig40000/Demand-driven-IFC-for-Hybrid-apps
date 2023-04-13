.class public abstract Lcom/mopub/common/AdUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;


# static fields
.field private static final AD_UNIT_ID_KEY:Ljava/lang/String; = "id"

.field private static final BUNDLE_ID_KEY:Ljava/lang/String; = "bundle"

.field private static final CARRIER_NAME_KEY:Ljava/lang/String; = "cn"

.field private static final CARRIER_TYPE_KEY:Ljava/lang/String; = "ct"

.field private static final COUNTRY_CODE_KEY:Ljava/lang/String; = "iso"

.field private static final IS_MRAID_KEY:Ljava/lang/String; = "mr"

.field private static final KEYWORDS_KEY:Ljava/lang/String; = "q"

.field private static final LAT_LONG_ACCURACY_KEY:Ljava/lang/String; = "lla"

.field private static final LAT_LONG_FRESHNESS_KEY:Ljava/lang/String; = "llf"

.field private static final LAT_LONG_FROM_SDK_KEY:Ljava/lang/String; = "llsdk"

.field private static final LAT_LONG_KEY:Ljava/lang/String; = "ll"

.field private static final MOBILE_COUNTRY_CODE_KEY:Ljava/lang/String; = "mcc"

.field private static final MOBILE_NETWORK_CODE_KEY:Ljava/lang/String; = "mnc"

.field private static final ORIENTATION_KEY:Ljava/lang/String; = "o"

.field private static final SCREEN_SCALE_KEY:Ljava/lang/String; = "sc_a"

.field private static final SDK_VERSION_KEY:Ljava/lang/String; = "nv"

.field private static final TIMEZONE_OFFSET_KEY:Ljava/lang/String; = "z"


# instance fields
.field protected mAdUnitId:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mKeywords:Ljava/lang/String;

.field protected mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addParam(Ljava/lang/String;Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V
    .locals 1

    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static calculateLocationStalenessInMilliseconds(Landroid/location/Location;)I
    .locals 4

    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-int v0, v0

    return v0
.end method

.method private mncPortionLength(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected addBaseParams(Lcom/mopub/common/ClientMetadata;)V
    .locals 3

    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setAdUnitId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setSdkVersion(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setDeviceInfo([Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setBundleId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mKeywords:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setKeywords(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setLocation(Landroid/location/Location;)V

    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setTimezone(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getOrientationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setOrientation(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceDimensions()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setDeviceDimensions(Landroid/graphics/Point;)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setDensity(F)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setMccCode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setMncCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setIsoCountryCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setCarrierName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setNetworkType(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->appendAdvertisingInfoTemplates()V

    return-void
.end method

.method protected setAdUnitId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setBundleId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bundle"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setCarrierName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cn"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setDensity(F)V
    .locals 3

    const-string v0, "sc_a"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setIsoCountryCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setKeywords(Ljava/lang/String;)V
    .locals 1

    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setLocation(Landroid/location/Location;)V
    .locals 6
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v1

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "ll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lla"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "llf"

    invoke-static {p1}, Lcom/mopub/common/AdUrlGenerator;->calculateLocationStalenessInMilliseconds(Landroid/location/Location;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v0, :cond_2

    const-string v0, "llsdk"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected setMccCode(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    const-string v1, "mcc"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->mncPortionLength(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected setMncCode(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    const-string v1, "mnc"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->mncPortionLength(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected setMraidFlag(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "mr"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setNetworkType(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V
    .locals 1

    const-string v0, "ct"

    invoke-direct {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    return-void
.end method

.method protected setOrientation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "o"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setSdkVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setTimezone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "z"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mAdUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public withFacebookSupported(Z)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mLocation:Landroid/location/Location;

    return-object p0
.end method
