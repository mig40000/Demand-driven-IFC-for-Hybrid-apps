.class public Lcom/appodeal/ads/b/u;
.super Lcom/appodeal/ads/r;


# static fields
.field private static b:Lcom/appodeal/ads/o;


# instance fields
.field private c:Lcom/my/target/ads/InterstitialAd;


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

    const-string v2, "com.my.target.ads.MyTargetActivity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/b/u;->b:Lcom/appodeal/ads/o;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/b/u;

    invoke-direct {v0}, Lcom/appodeal/ads/b/u;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/o;

    invoke-static {}, Lcom/appodeal/ads/b/u;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/o;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/r;)V

    sput-object v1, Lcom/appodeal/ads/b/u;->b:Lcom/appodeal/ads/o;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/b/u;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/u;->c:Lcom/my/target/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/my/target/ads/InterstitialAd;->show()V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 3

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "mailru_slot_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/my/target/ads/InterstitialAd;

    invoke-static {p1}, Lcom/appodeal/ads/networks/n;->a(Landroid/content/Context;)Lcom/my/target/ads/CustomParams;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/my/target/ads/InterstitialAd;-><init>(ILandroid/content/Context;Lcom/my/target/ads/CustomParams;)V

    iput-object v1, p0, Lcom/appodeal/ads/b/u;->c:Lcom/my/target/ads/InterstitialAd;

    iget-object v0, p0, Lcom/appodeal/ads/b/u;->c:Lcom/my/target/ads/InterstitialAd;

    new-instance v1, Lcom/appodeal/ads/b/v;

    sget-object v2, Lcom/appodeal/ads/b/u;->b:Lcom/appodeal/ads/o;

    invoke-direct {v1, v2, p2, p3}, Lcom/appodeal/ads/b/v;-><init>(Lcom/appodeal/ads/o;II)V

    invoke-virtual {v0, v1}, Lcom/my/target/ads/InterstitialAd;->setListener(Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/b/u;->c:Lcom/my/target/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/my/target/ads/InterstitialAd;->load()V

    return-void
.end method
