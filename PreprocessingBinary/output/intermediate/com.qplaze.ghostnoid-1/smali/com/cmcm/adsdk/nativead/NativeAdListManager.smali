.class public Lcom/cmcm/adsdk/nativead/NativeAdListManager;
.super Ljava/lang/Object;
.source "NativeAdListManager.java"


# instance fields
.field private mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/adsdk/nativead/INativeAdListListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posid"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/cmcm/adsdk/nativead/INativeAdListListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    invoke-direct {v0, p1, p2}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    .line 17
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    invoke-virtual {v0, p3}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->setAdListener(Lcom/cmcm/adsdk/nativead/INativeAdListListener;)V

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/nativead/NativeAdListManager;)Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    return-object v0
.end method


# virtual methods
.method public getAdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdListManager$1;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/NativeAdListManager$1;-><init>(Lcom/cmcm/adsdk/nativead/NativeAdListManager;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

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
    .line 41
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->getPosBeans()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->getRequestErrorInfo()Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestLastError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->getLastResult()Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAds(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->loadAds(I)V

    .line 22
    return-void
.end method

.method public setOpenPriority(Z)V
    .locals 1
    .param p1, "openPriority"    # Z

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->mRequest:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->setOpenPriority(Z)V

    .line 26
    return-void
.end method
