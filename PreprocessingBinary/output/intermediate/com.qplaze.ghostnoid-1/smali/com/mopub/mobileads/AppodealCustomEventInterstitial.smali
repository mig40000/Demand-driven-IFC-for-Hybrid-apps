.class public Lcom/mopub/mobileads/AppodealCustomEventInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;

# interfaces
.implements Lcom/appodeal/ads/InterstitialCallbacks;


# static fields
.field private static final API_KEY:Ljava/lang/String; = "appKey"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "appKey"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    iput-object p2, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->activity:Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "appKey"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/appodeal/ads/Appodeal;->setInterstitialCallbacks(Lcom/appodeal/ads/InterstitialCallbacks;)V

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/appodeal/ads/Appodeal;->setAutoCache(IZ)V

    iget-object v1, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->activity:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcom/appodeal/ads/Appodeal;->initialize(Landroid/app/Activity;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->activity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/appodeal/ads/Appodeal;->cache(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInterstitialClicked()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    return-void
.end method

.method public onInterstitialClosed()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    return-void
.end method

.method public onInterstitialFailedToLoad()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onInterstitialLoaded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    return-void
.end method

.method public onInterstitialShown()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    return-void
.end method

.method protected onInvalidate()V
    .locals 0

    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AppodealCustomEventInterstitial;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->show(Landroid/app/Activity;I)Z

    :cond_0
    return-void
.end method
