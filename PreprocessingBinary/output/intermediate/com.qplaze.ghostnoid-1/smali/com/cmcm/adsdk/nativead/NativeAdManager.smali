.class public Lcom/cmcm/adsdk/nativead/NativeAdManager;
.super Ljava/lang/Object;
.source "NativeAdManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

.field public requestParams:Lcom/cmcm/adsdk/CMRequestParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posid"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    .line 25
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->mContext:Landroid/content/Context;

    .line 30
    :goto_0
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    .line 32
    return-void

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public getAd()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdManager$1;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/NativeAdManager$1;-><init>(Lcom/cmcm/adsdk/nativead/NativeAdManager;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    return-object v0
.end method

.method public getPosBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->getPosBeans()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->getRequestErrorInfo()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestLastError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->getLastResult()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd(Z)V

    .line 50
    return-void
.end method

.method public preloadAd()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd(Z)V

    .line 46
    return-void
.end method

.method protected requestAd(Z)V
    .locals 2
    .param p1, "isPreload"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->setRequestParams(Lcom/cmcm/adsdk/CMRequestParams;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->setPreload(Z)V

    .line 57
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->loadAd()V

    .line 58
    return-void
.end method

.method public setNativeAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->setAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V

    .line 42
    :cond_0
    return-void
.end method

.method public setOpenPriority(Z)V
    .locals 1
    .param p1, "openPriority"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->setOpenPriority(Z)V

    .line 94
    return-void
.end method

.method public setRequestParams(Lcom/cmcm/adsdk/CMRequestParams;)V
    .locals 0
    .param p1, "params"    # Lcom/cmcm/adsdk/CMRequestParams;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    .line 36
    return-void
.end method
