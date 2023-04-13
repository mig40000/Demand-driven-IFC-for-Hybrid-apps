.class public Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;
.super Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;
.source "InterstitialRequestInternal.java"


# instance fields
.field private mCachedAd:Lcom/cmcm/baseapi/ads/INativeAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public adLoaded(Ljava/lang/String;)V
    .locals 2
    .param p1, "adTypeName"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->getAdLoader(Ljava/lang/Object;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAdLoader;->getAd()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mCachedAd:Lcom/cmcm/baseapi/ads/INativeAd;

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->adLoaded(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected checkIfAllfinished()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "CMCMADSDK"

    const-string v1, "check finish"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mIsFinished:Z

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "CMCMADSDK"

    const-string v1, "already finished"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mCachedAd:Lcom/cmcm/baseapi/ads/INativeAd;

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->notifyAdLoaded()V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->isAllLoaderFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->notifyAdFailed(I)V

    goto :goto_0
.end method

.method protected getLoadAdTypeSize()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public loadAd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    sget-object v0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mPositionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loadAd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mCachedAd:Lcom/cmcm/baseapi/ads/INativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mCachedAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->hasExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->notifyAdLoaded()V

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    iput-boolean v3, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mIsOpenPriority:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mIsPreload:Z

    .line 33
    iput-boolean v3, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mOptimizeEnabled:Z

    .line 34
    invoke-super {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->loadAd()V

    goto :goto_0
.end method

.method public showAd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mCachedAd:Lcom/cmcm/baseapi/ads/INativeAd;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mCachedAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0, v1}, Lcom/cmcm/baseapi/ads/INativeAd;->registerViewForInteraction(Landroid/view/View;)Z

    .line 78
    iput-object v1, p0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->mCachedAd:Lcom/cmcm/baseapi/ads/INativeAd;

    .line 80
    :cond_0
    return-void
.end method
