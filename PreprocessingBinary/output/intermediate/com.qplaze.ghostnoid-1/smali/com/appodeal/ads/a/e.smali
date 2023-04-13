.class public Lcom/appodeal/ads/a/e;
.super Lcom/appodeal/ads/k;


# static fields
.field private static d:Lcom/appodeal/ads/h;


# instance fields
.field public c:Lcom/appodeal/ads/a/f;

.field private e:Lcom/amazon/device/ads/AdLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/k;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/h;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/a/e;->d:Lcom/appodeal/ads/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/a/e;

    invoke-direct {v0}, Lcom/appodeal/ads/a/e;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/h;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/h;-><init>(Ljava/lang/String;Lcom/appodeal/ads/k;)V

    sput-object v1, Lcom/appodeal/ads/a/e;->d:Lcom/appodeal/ads/h;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/a/e;->d:Lcom/appodeal/ads/h;

    return-object v0
.end method

.method public static h()Lcom/appodeal/ads/h;
    .locals 4

    sget-object v0, Lcom/appodeal/ads/a/e;->d:Lcom/appodeal/ads/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.amazon.device.ads.AdLayout"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/a/e;

    invoke-direct {v0}, Lcom/appodeal/ads/a/e;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/h;

    const-string v2, "amazon_ads"

    invoke-direct {v1, v2, v0}, Lcom/appodeal/ads/h;-><init>(Ljava/lang/String;Lcom/appodeal/ads/k;)V

    sput-object v1, Lcom/appodeal/ads/a/e;->d:Lcom/appodeal/ads/h;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/a/e;->d:Lcom/appodeal/ads/h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "amazon_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->a:Z

    if-eqz v0, :cond_0

    invoke-static {v4}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    :cond_0
    invoke-static {p1}, Lcom/appodeal/ads/an;->g(Landroid/content/Context;)F

    move-result v0

    invoke-static {p1}, Lcom/appodeal/ads/an;->h(Landroid/content/Context;)F

    move-result v1

    sget-boolean v2, Lcom/appodeal/ads/g;->t:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x44360000    # 728.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    const/high16 v0, 0x44340000    # 720.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/amazon/device/ads/AdLayout;

    sget-object v1, Lcom/amazon/device/ads/AdSize;->SIZE_728x90:Lcom/amazon/device/ads/AdSize;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdSize;->disableScaling()Lcom/amazon/device/ads/AdSize;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V

    iput-object v0, p0, Lcom/appodeal/ads/a/e;->e:Lcom/amazon/device/ads/AdLayout;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/appodeal/ads/a/e;->b:I

    :goto_0
    new-instance v0, Lcom/appodeal/ads/a/f;

    sget-object v1, Lcom/appodeal/ads/a/e;->d:Lcom/appodeal/ads/h;

    invoke-direct {v0, v1, p2, p3}, Lcom/appodeal/ads/a/f;-><init>(Lcom/appodeal/ads/h;II)V

    iput-object v0, p0, Lcom/appodeal/ads/a/e;->c:Lcom/appodeal/ads/a/f;

    iget-object v0, p0, Lcom/appodeal/ads/a/e;->e:Lcom/amazon/device/ads/AdLayout;

    iget-object v1, p0, Lcom/appodeal/ads/a/e;->c:Lcom/appodeal/ads/a/f;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/appodeal/ads/a/e;->e:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoLocation(Z)Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/a/e;->e:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    return-void

    :cond_1
    new-instance v0, Lcom/amazon/device/ads/AdLayout;

    sget-object v1, Lcom/amazon/device/ads/AdSize;->SIZE_320x50:Lcom/amazon/device/ads/AdSize;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdSize;->disableScaling()Lcom/amazon/device/ads/AdSize;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V

    iput-object v0, p0, Lcom/appodeal/ads/a/e;->e:Lcom/amazon/device/ads/AdLayout;

    const/16 v0, 0x32

    iput v0, p0, Lcom/appodeal/ads/a/e;->b:I

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->enableLogging(Z)V

    return-void
.end method

.method public c()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/e;->e:Lcom/amazon/device/ads/AdLayout;

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
