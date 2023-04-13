.class public Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;
.super Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;
.source "BannerAdManagerRequest.java"


# instance fields
.field private mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/adsdk/banner/CMBannerAdSize;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;
    .param p3, "adSize"    # Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/cmcm/adsdk/banner/CMBannerParams;

    invoke-direct {v0}, Lcom/cmcm/adsdk/banner/CMBannerParams;-><init>()V

    .line 31
    invoke-virtual {v0, p3}, Lcom/cmcm/adsdk/banner/CMBannerParams;->setBannerViewSize(Lcom/cmcm/adsdk/banner/CMBannerAdSize;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->setRequestParams(Lcom/cmcm/adsdk/CMRequestParams;)V

    .line 33
    return-void
.end method


# virtual methods
.method public adLoaded(Ljava/lang/String;)V
    .locals 4
    .param p1, "adTypeName"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner loaded type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->getAdLoader(Ljava/lang/Object;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAdLoader;->getAd()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    if-nez v1, :cond_1

    .line 58
    iput-object v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    .line 66
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->adLoaded(Ljava/lang/String;)V

    .line 67
    return-void

    .line 60
    :cond_1
    const-string v1, "CMCMADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view callbacked,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to unregister view"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->unregisterView()V

    goto :goto_0
.end method

.method protected checkIfAllfinished()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "CMCMADSDK"

    const-string v1, "check finish"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/cmcm/adsdk/utils/Assure;->checkRunningOnUIThread()V

    .line 73
    iget-boolean v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mIsFinished:Z

    if-eqz v0, :cond_1

    .line 74
    const-string v0, "CMCMADSDK"

    const-string v1, "already finished"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->notifyAdLoaded()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->isAllLoaderFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->notifyAdFailed(I)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "CMCMADSDK"

    const-string v1, "banner unregister view"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->unregisterView()V

    .line 98
    :cond_0
    return-void
.end method

.method public getAdObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLoadAdTypeSize()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public loadAd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    sget-object v0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mPositionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loadAd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-boolean v3, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mIsOpenPriority:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mIsPreload:Z

    .line 44
    iput-boolean v3, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mOptimizeEnabled:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    .line 46
    invoke-super {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->loadAd()V

    .line 47
    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->mSrcNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0, p1}, Lcom/cmcm/baseapi/ads/INativeAd;->registerViewForInteraction(Landroid/view/View;)Z

    .line 91
    :cond_0
    return-void
.end method
