.class public Lcom/appodeal/ads/b/k;
.super Lcom/appodeal/ads/r;


# static fields
.field private static b:Lcom/appodeal/ads/o;


# instance fields
.field private c:Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/r;-><init>()V

    return-void
.end method

.method private static f()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.cmcm.adsdk.interstitial.PicksInterstitialActivity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/b/k;->b:Lcom/appodeal/ads/o;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/b/k;

    invoke-direct {v0}, Lcom/appodeal/ads/b/k;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/o;

    invoke-static {}, Lcom/appodeal/ads/b/k;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/o;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/r;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/o;->d()Lcom/appodeal/ads/o;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/b/k;->b:Lcom/appodeal/ads/o;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/b/k;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/k;->c:Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->showAd()V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 4

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v2, "posId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v3, "channelId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/appodeal/ads/networks/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/networks/i$a;

    invoke-direct {v0}, Lcom/appodeal/ads/networks/i$a;-><init>()V

    invoke-static {v0}, Lcom/cmcm/adsdk/CMAdManagerFactory;->setImageDownloadListener(Lcom/cmcm/adsdk/ImageDownloadListener;)V

    new-instance v0, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;

    invoke-direct {v0, p1, v2}, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appodeal/ads/b/k;->c:Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;

    iget-object v0, p0, Lcom/appodeal/ads/b/k;->c:Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;

    new-instance v1, Lcom/appodeal/ads/b/l;

    sget-object v2, Lcom/appodeal/ads/b/k;->b:Lcom/appodeal/ads/o;

    invoke-direct {v1, v2, p2, p3}, Lcom/appodeal/ads/b/l;-><init>(Lcom/appodeal/ads/o;II)V

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->setInterstitialCallBack(Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;)V

    iget-object v0, p0, Lcom/appodeal/ads/b/k;->c:Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/interstitial/InterstitialAdManager;->loadAd()V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
