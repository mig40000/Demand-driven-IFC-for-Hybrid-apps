.class public Lcom/appodeal/ads/a/x;
.super Lcom/appodeal/ads/k;


# static fields
.field private static c:Lcom/appodeal/ads/h;


# instance fields
.field private d:Lcom/revmob/ads/banner/RevMobBanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/k;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/a/x;Landroid/app/Activity;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/a/x;->b(Landroid/app/Activity;II)V

    return-void
.end method

.method private b(Landroid/app/Activity;II)V
    .locals 5

    const/16 v0, 0x140

    invoke-static {}, Lcom/revmob/RevMob;->session()Lcom/revmob/RevMob;

    move-result-object v1

    new-instance v2, Lcom/appodeal/ads/a/y;

    sget-object v3, Lcom/appodeal/ads/a/x;->c:Lcom/appodeal/ads/h;

    invoke-direct {v2, v3, p2, p3}, Lcom/appodeal/ads/a/y;-><init>(Lcom/appodeal/ads/h;II)V

    invoke-virtual {v1, p1, v2}, Lcom/revmob/RevMob;->preLoadBanner(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v1

    iput-object v1, p0, Lcom/appodeal/ads/a/x;->d:Lcom/revmob/ads/banner/RevMobBanner;

    iget-object v1, p0, Lcom/appodeal/ads/a/x;->d:Lcom/revmob/ads/banner/RevMobBanner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/revmob/ads/banner/RevMobBanner;->setAutoReload(Z)V

    iget-object v1, p0, Lcom/appodeal/ads/a/x;->d:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v1}, Lcom/revmob/ads/banner/RevMobBanner;->determineDefaultDimensions()V

    invoke-static {p1}, Lcom/appodeal/ads/an;->g(Landroid/content/Context;)F

    move-result v1

    invoke-static {p1}, Lcom/appodeal/ads/an;->h(Landroid/content/Context;)F

    move-result v2

    sget v3, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/appodeal/ads/g;->t:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x44360000    # 728.0f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    const/high16 v1, 0x44340000    # 720.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    const/16 v0, 0x2d8

    const/16 v1, 0x5a

    iput v1, p0, Lcom/appodeal/ads/a/x;->b:I

    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/a/x;->d:Lcom/revmob/ads/banner/RevMobBanner;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    int-to-float v0, v0

    invoke-static {p1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p0, Lcom/appodeal/ads/a/x;->b:I

    int-to-float v3, v3

    invoke-static {p1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/revmob/ads/banner/RevMobBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v1, 0x27

    iput v1, p0, Lcom/appodeal/ads/a/x;->b:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x32

    iput v1, p0, Lcom/appodeal/ads/a/x;->b:I

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/h;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/a/x;->c:Lcom/appodeal/ads/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/a/x;

    invoke-direct {v0}, Lcom/appodeal/ads/a/x;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/h;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/h;-><init>(Ljava/lang/String;Lcom/appodeal/ads/k;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/h;->c()Lcom/appodeal/ads/h;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/a/x;->c:Lcom/appodeal/ads/h;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/a/x;->c:Lcom/appodeal/ads/h;

    return-object v0
.end method

.method static synthetic h()Lcom/appodeal/ads/h;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/a/x;->c:Lcom/appodeal/ads/h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "media_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/revmob/RevMob;->session()Lcom/revmob/RevMob;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/a/x;->b(Landroid/app/Activity;II)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/appodeal/ads/a/x$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/appodeal/ads/a/x$1;-><init>(Lcom/appodeal/ads/a/x;IILandroid/app/Activity;)V

    invoke-static {p1, v1, v0}, Lcom/revmob/RevMob;->startWithListener(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;Ljava/lang/String;)Lcom/revmob/RevMob;

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/revmob/ads/banner/RevMobBanner;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->hide()V

    check-cast p1, Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {p1}, Lcom/revmob/ads/banner/RevMobBanner;->release()V

    :cond_0
    return-void
.end method

.method public c()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/x;->d:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->show()V

    iget-object v0, p0, Lcom/appodeal/ads/a/x;->d:Lcom/revmob/ads/banner/RevMobBanner;

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
