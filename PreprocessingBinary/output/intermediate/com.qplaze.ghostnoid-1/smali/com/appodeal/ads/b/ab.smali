.class public Lcom/appodeal/ads/b/ab;
.super Lcom/appodeal/ads/r;


# static fields
.field private static b:Lcom/appodeal/ads/o;


# instance fields
.field private c:Lcom/revmob/RevMob;

.field private d:Lcom/revmob/ads/interstitial/RevMobFullscreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/r;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/b/ab;)Lcom/revmob/RevMob;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/ab;->c:Lcom/revmob/RevMob;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/b/ab;Lcom/revmob/ads/interstitial/RevMobFullscreen;)Lcom/revmob/ads/interstitial/RevMobFullscreen;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b/ab;->d:Lcom/revmob/ads/interstitial/RevMobFullscreen;

    return-object p1
.end method

.method static synthetic f()Lcom/appodeal/ads/o;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/b/ab;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method

.method private static g()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.revmob.FullscreenActivity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/b/ab;->b:Lcom/appodeal/ads/o;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/b/ab;

    invoke-direct {v0}, Lcom/appodeal/ads/b/ab;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/o;

    invoke-static {}, Lcom/appodeal/ads/b/ab;->g()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/o;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/r;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/o;->d()Lcom/appodeal/ads/o;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/b/ab;->b:Lcom/appodeal/ads/o;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/b/ab;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/ab;->d:Lcom/revmob/ads/interstitial/RevMobFullscreen;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->show()V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 3

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "media_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/revmob/RevMob;->session()Lcom/revmob/RevMob;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/revmob/RevMob;->session()Lcom/revmob/RevMob;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/b/ac;

    sget-object v2, Lcom/appodeal/ads/b/ab;->b:Lcom/appodeal/ads/o;

    invoke-direct {v1, v2, p2, p3}, Lcom/appodeal/ads/b/ac;-><init>(Lcom/appodeal/ads/o;II)V

    invoke-virtual {v0, p1, v1}, Lcom/revmob/RevMob;->createFullscreen(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/b/ab;->d:Lcom/revmob/ads/interstitial/RevMobFullscreen;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/appodeal/ads/b/ab$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/appodeal/ads/b/ab$1;-><init>(Lcom/appodeal/ads/b/ab;IILandroid/app/Activity;)V

    invoke-static {p1, v1, v0}, Lcom/revmob/RevMob;->startWithListener(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/b/ab;->c:Lcom/revmob/RevMob;

    iget-object v0, p0, Lcom/appodeal/ads/b/ab;->c:Lcom/revmob/RevMob;

    invoke-static {p1, v0}, Lcom/appodeal/ads/networks/s;->a(Landroid/app/Activity;Lcom/revmob/RevMob;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
