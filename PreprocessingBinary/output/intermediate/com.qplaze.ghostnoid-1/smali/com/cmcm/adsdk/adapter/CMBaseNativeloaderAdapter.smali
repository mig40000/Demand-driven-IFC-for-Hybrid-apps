.class public abstract Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;
.super Ljava/lang/Object;
.source "CMBaseNativeloaderAdapter.java"

# interfaces
.implements Lcom/cmcm/baseapi/ads/INativeAdLoader;


# instance fields
.field protected mAdTypeName:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mNativeAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

.field protected mNativeAdListener:Lcom/cmcm/adsdk/base/INativeReqeustCallBack;

.field public mPositionId:Ljava/lang/String;

.field protected requestParams:Lcom/cmcm/adsdk/CMRequestParams;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;
    .param p3, "adTypeName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;->mPositionId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;->mNativeAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .line 25
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;->mPositionId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;->mAdTypeName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getAdTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;->mAdTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Lcom/cmcm/adsdk/CMRequestParams;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    return-object v0
.end method

.method public abstract loadAds(I)V
.end method

.method protected removeExpiredAds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/baseapi/ads/INativeAd;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 63
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 65
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public setAdClickListener(Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V
    .locals 0
    .param p1, "adClickListener"    # Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;->mNativeAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .line 55
    return-void
.end method

.method public setAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V
    .locals 0
    .param p1, "adListener"    # Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    .prologue
    .line 51
    return-void
.end method

.method public setLoadCallBack(Lcom/cmcm/adsdk/base/INativeReqeustCallBack;)V
    .locals 0
    .param p1, "adListener"    # Lcom/cmcm/adsdk/base/INativeReqeustCallBack;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;->mNativeAdListener:Lcom/cmcm/adsdk/base/INativeReqeustCallBack;

    .line 47
    return-void
.end method

.method public setRequestParams(Lcom/cmcm/adsdk/CMRequestParams;)V
    .locals 0
    .param p1, "requestParams"    # Lcom/cmcm/adsdk/CMRequestParams;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    .line 38
    return-void
.end method
