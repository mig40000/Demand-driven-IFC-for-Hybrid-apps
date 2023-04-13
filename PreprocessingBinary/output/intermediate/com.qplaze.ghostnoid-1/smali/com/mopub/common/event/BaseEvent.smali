.class public abstract Lcom/mopub/common/event/BaseEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/event/BaseEvent$Builder;,
        Lcom/mopub/common/event/BaseEvent$SamplingRate;,
        Lcom/mopub/common/event/BaseEvent$Category;,
        Lcom/mopub/common/event/BaseEvent$Name;,
        Lcom/mopub/common/event/BaseEvent$AppPlatform;,
        Lcom/mopub/common/event/BaseEvent$SdkProduct;,
        Lcom/mopub/common/event/BaseEvent$ScribeCategory;
    }
.end annotation


# instance fields
.field private final mAdCreativeId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdHeightPx:Ljava/lang/Double;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdNetworkType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdWidthPx:Ljava/lang/Double;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCategory:Lcom/mopub/common/event/BaseEvent$Category;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mClientMetaData:Lcom/mopub/common/ClientMetadata;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDeviceScreenHeightDip:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDeviceScreenWidthDip:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDspCreativeId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGeoAccuracy:Ljava/lang/Double;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGeoLat:Ljava/lang/Double;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGeoLon:Ljava/lang/Double;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mIsoCountryCode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mName:Lcom/mopub/common/event/BaseEvent$Name;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNetworkOperator:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mNetworkOperatorName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mNetworkType:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPerformanceDurationMs:Ljava/lang/Double;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestRetries:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestStatusCode:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestUri:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSamplingRate:D

.field private final mScribeCategory:Lcom/mopub/common/event/BaseEvent$ScribeCategory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSdkProduct:Lcom/mopub/common/event/BaseEvent$SdkProduct;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSimIsoCountryCode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSimOperator:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSimOperatorName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTimestampUtcMs:J


# direct methods
.method public constructor <init>(Lcom/mopub/common/event/BaseEvent$Builder;)V
    .locals 3
    .param p1    # Lcom/mopub/common/event/BaseEvent$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$000(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mScribeCategory:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$100(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$Name;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mName:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$200(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$Category;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mCategory:Lcom/mopub/common/event/BaseEvent$Category;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$300(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$SdkProduct;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mSdkProduct:Lcom/mopub/common/event/BaseEvent$SdkProduct;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$400(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdUnitId:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$500(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdCreativeId:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$600(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdType:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$700(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdNetworkType:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$800(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdWidthPx:Ljava/lang/Double;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$900(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdHeightPx:Ljava/lang/Double;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$1000(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mDspCreativeId:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$1100(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mGeoLat:Ljava/lang/Double;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$1200(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mGeoLon:Ljava/lang/Double;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$1300(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mGeoAccuracy:Ljava/lang/Double;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$1400(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mPerformanceDurationMs:Ljava/lang/Double;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$1500(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mRequestId:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$1600(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mRequestStatusCode:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$1700(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mRequestUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$1800(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mRequestRetries:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->access$1900(Lcom/mopub/common/event/BaseEvent$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/event/BaseEvent;->mSamplingRate:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/event/BaseEvent;->mTimestampUtcMs:J

    invoke-static {}, Lcom/mopub/common/ClientMetadata;->getInstance()Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceScreenWidthDip()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mDeviceScreenWidthDip:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceScreenHeightDip()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mDeviceScreenHeightDip:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mNetworkType:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mNetworkOperator:Ljava/lang/String;

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mNetworkOperatorName:Ljava/lang/String;

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mIsoCountryCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mSimOperator:Ljava/lang/String;

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mSimOperatorName:Ljava/lang/String;

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSimIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mSimIsoCountryCode:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->mDeviceScreenWidthDip:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->mDeviceScreenHeightDip:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->mNetworkType:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->mNetworkOperator:Ljava/lang/String;

    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->mNetworkOperatorName:Ljava/lang/String;

    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->mIsoCountryCode:Ljava/lang/String;

    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->mSimOperator:Ljava/lang/String;

    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->mSimOperatorName:Ljava/lang/String;

    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->mSimIsoCountryCode:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAdCreativeId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdHeightPx()Ljava/lang/Double;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdHeightPx:Ljava/lang/Double;

    return-object v0
.end method

.method public getAdNetworkType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidthPx()Ljava/lang/Double;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mAdWidthPx:Ljava/lang/Double;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppPlatform()Lcom/mopub/common/event/BaseEvent$AppPlatform;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/mopub/common/event/BaseEvent$AppPlatform;->ANDROID:Lcom/mopub/common/event/BaseEvent$AppPlatform;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCategory()Lcom/mopub/common/event/BaseEvent$Category;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mCategory:Lcom/mopub/common/event/BaseEvent$Category;

    return-object v0
.end method

.method public getClientAdvertisingId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClientDoNotTrack()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->isDoNotTrackSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceProduct()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceScreenHeightDip()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mDeviceScreenHeightDip:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeviceScreenWidthDip()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mDeviceScreenWidthDip:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mDspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoAccuracy()Ljava/lang/Double;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mGeoAccuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public getGeoLat()Ljava/lang/Double;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mGeoLat:Ljava/lang/Double;

    return-object v0
.end method

.method public getGeoLon()Ljava/lang/Double;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mGeoLon:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Lcom/mopub/common/event/BaseEvent$Name;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mName:Lcom/mopub/common/event/BaseEvent$Name;

    return-object v0
.end method

.method public getNetworkIsoCountryCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mIsoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mNetworkOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSimCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mSimOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSimIsoCountryCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mSimIsoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSimOperatorName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mSimOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mNetworkType:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0
.end method

.method public getObfuscatedClientAdvertisingId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "ifa:XXXX"

    return-object v0
.end method

.method public getPerformanceDurationMs()Ljava/lang/Double;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mPerformanceDurationMs:Ljava/lang/Double;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestRetries()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mRequestRetries:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestStatusCode()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mRequestStatusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mRequestUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingRate()D
    .locals 2

    iget-wide v0, p0, Lcom/mopub/common/event/BaseEvent;->mSamplingRate:D

    return-wide v0
.end method

.method public getScribeCategory()Lcom/mopub/common/event/BaseEvent$ScribeCategory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mScribeCategory:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    return-object v0
.end method

.method public getSdkProduct()Lcom/mopub/common/event/BaseEvent$SdkProduct;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mSdkProduct:Lcom/mopub/common/event/BaseEvent$SdkProduct;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->mClientMetaData:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimestampUtcMs()Ljava/lang/Long;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/mopub/common/event/BaseEvent;->mTimestampUtcMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseEvent\nScribeCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getScribeCategory()Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getName()Lcom/mopub/common/event/BaseEvent$Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getCategory()Lcom/mopub/common/event/BaseEvent$Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SdkProduct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getSdkProduct()Lcom/mopub/common/event/BaseEvent$SdkProduct;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SdkVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdUnitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdCreativeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdWidthPx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdWidthPx()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdHeightPx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdHeightPx()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DspCreativeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppPlatform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAppPlatform()Lcom/mopub/common/event/BaseEvent$AppPlatform;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceManufacturer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceProduct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceOsVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceScreenWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceScreenWidthDip()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceScreenHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceScreenHeightDip()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GeoLat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getGeoLat()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GeoLon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getGeoLon()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GeoAccuracy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getGeoAccuracy()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PerformanceDurationMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getPerformanceDurationMs()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkOperatorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkOperatorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkOperatorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkIsoCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkIsoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkSimCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkSimCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkSimOperatorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkSimIsoCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkSimIsoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RequestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RequestStatusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getRequestStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RequestUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getRequestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RequestRetries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getRequestRetries()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SamplingRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getSamplingRate()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TimestampUtcMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getTimestampUtcMs()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
