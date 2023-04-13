.class public Lcom/appodeal/ads/g/o;
.super Lcom/appodeal/ads/aq;


# static fields
.field private static b:Lcom/appodeal/ads/ap;


# instance fields
.field private c:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/aq;-><init>()V

    return-void
.end method

.method private static g()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.mopub.mobileads.MoPubActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.mopub.common.MoPubBrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.mopub.mobileads.MraidActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.mopub.mobileads.MraidVideoPlayerActivity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/g/o;->b:Lcom/appodeal/ads/ap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/g/o;

    invoke-direct {v0}, Lcom/appodeal/ads/g/o;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ap;

    invoke-static {}, Lcom/appodeal/ads/g/o;->g()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->d()Lcom/appodeal/ads/ap;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/g/o;->b:Lcom/appodeal/ads/ap;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g/o;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mopub/mobileads/VastVideoViewController;->mShowingSkippable:Z

    iget-object v0, p0, Lcom/appodeal/ads/g/o;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 3

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "mopub_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v2, "preload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v2, "preload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/appodeal/ads/AppodealSettings;->b:Z

    :cond_0
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {v0, p1, v1}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appodeal/ads/g/o;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v0, p0, Lcom/appodeal/ads/g/o;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    new-instance v1, Lcom/appodeal/ads/g/p;

    sget-object v2, Lcom/appodeal/ads/g/o;->b:Lcom/appodeal/ads/ap;

    invoke-direct {v1, v2, p2, p3}, Lcom/appodeal/ads/g/p;-><init>(Lcom/appodeal/ads/ap;II)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    invoke-static {p1}, Lcom/appodeal/ads/Appodeal;->getUserSettings(Landroid/content/Context;)Lcom/appodeal/ads/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/UserSettings;->toMopubString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/appodeal/ads/g/o;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/g/o;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
