.class public Lcom/appodeal/ads/b/ad;
.super Lcom/appodeal/ads/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/b/ad$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/o;


# instance fields
.field private c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

.field private d:Lcom/appodeal/ads/InterstitialActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/r;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/b/ad;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/b/ad;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b/ad;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/b/ad;Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b/ad;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    return-object p1
.end method

.method static synthetic f()Lcom/appodeal/ads/o;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/b/ad;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method

.method private static g()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/b/ad;->b:Lcom/appodeal/ads/o;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/b/ad;

    invoke-direct {v0}, Lcom/appodeal/ads/b/ad;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/o;

    invoke-static {}, Lcom/appodeal/ads/b/ad;->g()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/o;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/r;)V

    sput-object v1, Lcom/appodeal/ads/b/ad;->b:Lcom/appodeal/ads/o;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/b/ad;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/b/ad;->b:Lcom/appodeal/ads/o;

    invoke-static {p1, v0, p2}, Lcom/appodeal/ads/an;->a(Landroid/app/Activity;Lcom/appodeal/ads/o;I)V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 8

    const/4 v7, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/b/ad;->b:Lcom/appodeal/ads/o;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    :goto_0
    return-void

    :cond_0
    iput-object v7, p0, Lcom/appodeal/ads/b/ad;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "rp_account"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v2, "rp_site"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v3, "rp_zonesize"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v4, "rp_adtype"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v5, "loadFunction"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v3, v4}, Lcom/appodeal/ads/networks/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/appodeal/ads/networks/m;

    new-instance v2, Lcom/appodeal/ads/b/ad$a;

    invoke-direct {v2, p0, v7}, Lcom/appodeal/ads/b/ad$a;-><init>(Lcom/appodeal/ads/b/ad;Lcom/appodeal/ads/b/ad$1;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/networks/m;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/m$a;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/appodeal/ads/InterstitialActivity;I)V
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/b/ad;->d:Lcom/appodeal/ads/InterstitialActivity;

    invoke-static {p1}, Lcom/appodeal/ads/as;->a(Lcom/appodeal/ads/InterstitialActivity;)V

    iget-object v0, p0, Lcom/appodeal/ads/b/ad;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    invoke-virtual {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;->show(Landroid/app/Activity;)V

    sget-object v0, Lcom/appodeal/ads/b/ad;->b:Lcom/appodeal/ads/o;

    invoke-static {p2, v0}, Lcom/appodeal/ads/q;->a(ILcom/appodeal/ads/o;)V

    return-void
.end method

.method public c()Lcom/appodeal/ads/InterstitialActivity;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/ad;->d:Lcom/appodeal/ads/InterstitialActivity;

    return-object v0
.end method
