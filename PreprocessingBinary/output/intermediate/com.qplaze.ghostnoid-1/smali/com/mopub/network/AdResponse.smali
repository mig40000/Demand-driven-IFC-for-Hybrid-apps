.class public Lcom/mopub/network/AdResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdResponse$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAdTimeoutDelayMillis:Ljava/lang/Integer;
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

.field private final mClickTrackingUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCustomEventClassName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDspCreativeId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mEventDetails:Lcom/mopub/common/event/EventDetails;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFailoverUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFullAdType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mHeight:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mImpressionTrackingUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mJsonBody:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mNetworkType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRedirectUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRefreshTimeMillis:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mResponseBody:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRewardedVideoCompletionUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRewardedVideoCurrencyAmount:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRewardedVideoCurrencyName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mScrollable:Z

.field private final mServerExtras:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimestamp:J

.field private final mWidth:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mopub/network/AdResponse$Builder;)V
    .locals 2
    .param p1    # Lcom/mopub/network/AdResponse$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$000(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mAdType:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$100(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mAdUnitId:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$200(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mFullAdType:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$300(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mNetworkType:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$400(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCurrencyName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$500(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCurrencyAmount:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$600(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCompletionUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$700(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRedirectUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$800(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mClickTrackingUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$900(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mImpressionTrackingUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1000(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mFailoverUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1100(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRequestId:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1200(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mWidth:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1300(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mHeight:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1400(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mAdTimeoutDelayMillis:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1500(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRefreshTimeMillis:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1600(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mDspCreativeId:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1700(Lcom/mopub/network/AdResponse$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/network/AdResponse;->mScrollable:Z

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1800(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mResponseBody:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1900(Lcom/mopub/network/AdResponse$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mJsonBody:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2000(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/common/event/EventDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2100(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mCustomEventClassName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2200(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mServerExtras:Ljava/util/Map;

    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/network/AdResponse;->mTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/network/AdResponse$Builder;Lcom/mopub/network/AdResponse$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/network/AdResponse;-><init>(Lcom/mopub/network/AdResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public getAdTimeoutMillis()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mAdTimeoutDelayMillis:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mAdType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mClickTrackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomEventClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mCustomEventClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mDspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventDetails()Lcom/mopub/common/event/EventDetails;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    return-object v0
.end method

.method public getFailoverUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mFailoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFullAdType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mFullAdType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImpressionTrackingUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mImpressionTrackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonBody()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mJsonBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTimeMillis()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoCompletionUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCompletionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoCurrencyAmount()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCurrencyAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoCurrencyName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerExtras()Ljava/util/Map;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mServerExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getStringBody()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/mopub/network/AdResponse;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasJson()Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mJsonBody:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/network/AdResponse;->mScrollable:Z

    return v0
.end method

.method public toBuilder()Lcom/mopub/network/AdResponse$Builder;
    .locals 3

    new-instance v0, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {v0}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mAdType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRedirectUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mClickTrackingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mImpressionTrackingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setImpressionTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mFailoverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mWidth:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mopub/network/AdResponse;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/AdResponse$Builder;->setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mAdTimeoutDelayMillis:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mRefreshTimeMillis:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mDspCreativeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mopub/network/AdResponse;->mScrollable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setScrollable(Ljava/lang/Boolean;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mResponseBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mJsonBody:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setEventDetails(Lcom/mopub/common/event/EventDetails;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mCustomEventClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mServerExtras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    return-object v0
.end method
