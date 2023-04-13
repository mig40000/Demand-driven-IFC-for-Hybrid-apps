.class public Lcom/appodeal/ads/b/aa;
.super Lcom/appodeal/ads/r;


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

.method private static f()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/b/aa;->b:Lcom/appodeal/ads/o;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/b/aa;

    invoke-direct {v0}, Lcom/appodeal/ads/b/aa;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/o;

    invoke-static {}, Lcom/appodeal/ads/b/aa;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/o;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/r;)V

    sput-object v1, Lcom/appodeal/ads/b/aa;->b:Lcom/appodeal/ads/o;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/b/aa;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/b/aa;->b:Lcom/appodeal/ads/o;

    invoke-static {p1, v0, p2}, Lcom/appodeal/ads/an;->a(Landroid/app/Activity;Lcom/appodeal/ads/o;I)V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 11

    const/4 v2, 0x0

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/b/aa;->a:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lcom/appodeal/ads/b/t;

    sget-object v0, Lcom/appodeal/ads/b/aa;->b:Lcom/appodeal/ads/o;

    invoke-direct {v7, v0, p2, p3}, Lcom/appodeal/ads/b/t;-><init>(Lcom/appodeal/ads/o;II)V

    sget-object v0, Lcom/appodeal/ads/b/aa;->b:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/appodeal/ads/b/aa;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v9

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    iget-object v3, p0, Lcom/appodeal/ads/b/aa;->a:Ljava/lang/String;

    const/4 v10, 0x1

    move-object v1, p1

    move-object v4, v2

    move-object v8, v7

    invoke-direct/range {v0 .. v10}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;Z)V

    iput-object v0, p0, Lcom/appodeal/ads/b/aa;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    return-void
.end method

.method public a(Lcom/appodeal/ads/InterstitialActivity;I)V
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/b/aa;->d:Lcom/appodeal/ads/InterstitialActivity;

    invoke-static {p1}, Lcom/appodeal/ads/as;->a(Lcom/appodeal/ads/InterstitialActivity;)V

    iget-object v0, p0, Lcom/appodeal/ads/b/aa;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/b/aa;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    invoke-virtual {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;->show(Landroid/app/Activity;)V

    sget-object v0, Lcom/appodeal/ads/b/aa;->b:Lcom/appodeal/ads/o;

    invoke-static {p2, v0}, Lcom/appodeal/ads/q;->a(ILcom/appodeal/ads/o;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/appodeal/ads/InterstitialActivity;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/aa;->d:Lcom/appodeal/ads/InterstitialActivity;

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
