.class public Lcom/appodeal/ads/e/c;
.super Lcom/appodeal/ads/aq;


# static fields
.field private static b:Lcom/appodeal/ads/ap;


# instance fields
.field private c:Lcom/appodeal/ads/e/d;

.field private d:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/aq;-><init>()V

    return-void
.end method

.method private static g()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.applovin.adview.AppLovinInterstitialActivity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/e/c;->b:Lcom/appodeal/ads/ap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/e/c;

    invoke-direct {v0}, Lcom/appodeal/ads/e/c;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ap;

    invoke-static {}, Lcom/appodeal/ads/e/c;->g()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/ap;->a(I)Lcom/appodeal/ads/ap;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/e/c;->b:Lcom/appodeal/ads/ap;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/e/c;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 6

    iget-object v0, p0, Lcom/appodeal/ads/e/c;->d:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object v2, p0, Lcom/appodeal/ads/e/c;->c:Lcom/appodeal/ads/e/d;

    iget-object v3, p0, Lcom/appodeal/ads/e/c;->c:Lcom/appodeal/ads/e/d;

    iget-object v4, p0, Lcom/appodeal/ads/e/c;->c:Lcom/appodeal/ads/e/d;

    iget-object v5, p0, Lcom/appodeal/ads/e/c;->c:Lcom/appodeal/ads/e/d;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/e/c;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "applovin_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk()V

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v1

    invoke-static {p1}, Lcom/appodeal/ads/an;->e(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/applovin/sdk/AppLovinTargetingData;->setLocation(Landroid/location/Location;)V

    new-instance v1, Lcom/appodeal/ads/e/d;

    sget-object v2, Lcom/appodeal/ads/e/c;->b:Lcom/appodeal/ads/ap;

    invoke-direct {v1, v2, p2, p3}, Lcom/appodeal/ads/e/d;-><init>(Lcom/appodeal/ads/ap;II)V

    iput-object v1, p0, Lcom/appodeal/ads/e/c;->c:Lcom/appodeal/ads/e/d;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/e/c;->d:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object v0, p0, Lcom/appodeal/ads/e/c;->d:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object v1, p0, Lcom/appodeal/ads/e/c;->c:Lcom/appodeal/ads/e/d;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0
.end method
