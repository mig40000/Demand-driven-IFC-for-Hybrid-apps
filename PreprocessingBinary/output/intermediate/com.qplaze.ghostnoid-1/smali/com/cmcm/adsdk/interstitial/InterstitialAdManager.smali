.class public Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;
.super Ljava/lang/Object;
.source "InterstitialAdManager.java"

# interfaces
.implements Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;


# static fields
.field private static mIsReport:Z

.field private static sCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;


# instance fields
.field private interstitialRequest:Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;

.field private mContext:Landroid/content/Context;

.field private posId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->mIsReport:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->posId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static getInterstitialCallBack()Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->sCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    return-object v0
.end method

.method public static getOfferReport()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->mIsReport:Z

    return v0
.end method


# virtual methods
.method public adClicked(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 1
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 62
    sget-object v0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->sCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->sCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    invoke-interface {v0}, Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;->onAdClicked()V

    .line 65
    :cond_0
    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 1
    .param p1, "errorcode"    # I

    .prologue
    .line 55
    sget-object v0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->sCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->sCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    invoke-interface {v0, p1}, Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;->onAdLoadFailed(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public adLoaded()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->sCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->sCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    invoke-interface {v0}, Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;->onAdLoaded()V

    .line 51
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->interstitialRequest:Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;

    if-eqz v0, :cond_0

    .line 73
    iput-object v1, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->interstitialRequest:Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;

    .line 74
    sput-object v1, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->sCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    .line 76
    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->interstitialRequest:Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;

    iget-object v1, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->posId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->interstitialRequest:Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->interstitialRequest:Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;

    invoke-virtual {v0, p0}, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->setAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V

    .line 28
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->interstitialRequest:Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->loadAd()V

    .line 29
    return-void
.end method

.method public setInterstialOverClickEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 68
    invoke-static {p1}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->setOverClickEnable(Z)V

    .line 69
    return-void
.end method

.method public setInterstitialCallBack(Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    .prologue
    .line 39
    sput-object p1, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->sCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    .line 40
    invoke-static {p1}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->setInterstitialAdCallBack(Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;)V

    .line 41
    return-void
.end method

.method public setOfferReport(Z)V
    .locals 0
    .param p1, "isReport"    # Z

    .prologue
    .line 78
    sput-boolean p1, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->mIsReport:Z

    .line 79
    return-void
.end method

.method public showAd()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->interstitialRequest:Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->interstitialRequest:Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/interstitial/InterstitialRequestInternal;->showAd()V

    .line 36
    :cond_0
    return-void
.end method
