.class public Lcom/appodeal/ads/a/ad;
.super Lcom/appodeal/ads/k;


# static fields
.field private static c:Lcom/appodeal/ads/h;


# instance fields
.field private d:Lcom/yandex/mobile/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/k;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/h;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/a/ad;->c:Lcom/appodeal/ads/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/a/ad;

    invoke-direct {v0}, Lcom/appodeal/ads/a/ad;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/h;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/h;-><init>(Ljava/lang/String;Lcom/appodeal/ads/k;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/h;->c()Lcom/appodeal/ads/h;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/a/ad;->c:Lcom/appodeal/ads/h;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/a/ad;->c:Lcom/appodeal/ads/h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)V
    .locals 8

    const/16 v7, 0x2d8

    const/16 v6, 0x32

    const/16 v5, 0x5a

    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.62"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/appodeal/ads/a/ad;->c:Lcom/appodeal/ads/h;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "metrica_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v2, "block_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v4, "height"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/a/ad;->b:I

    invoke-static {}, Lcom/appodeal/ads/g;->d()I

    move-result v0

    if-gt v3, v0, :cond_2

    iget v0, p0, Lcom/appodeal/ads/a/ad;->b:I

    invoke-static {}, Lcom/appodeal/ads/g;->c()I

    move-result v4

    if-le v0, v4, :cond_3

    :cond_2
    sget-object v0, Lcom/appodeal/ads/a/ad;->c:Lcom/appodeal/ads/h;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lcom/yandex/metrica/YandexMetrica;->activate(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/AdView;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/a/ad;->d:Lcom/yandex/mobile/ads/AdView;

    iget-object v0, p0, Lcom/appodeal/ads/a/ad;->d:Lcom/yandex/mobile/ads/AdView;

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/AdView;->setBlockId(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appodeal/ads/an;->g(Landroid/content/Context;)F

    move-result v0

    invoke-static {p1}, Lcom/appodeal/ads/an;->h(Landroid/content/Context;)F

    move-result v1

    sget-boolean v2, Lcom/appodeal/ads/g;->t:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x44360000    # 728.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    const/high16 v0, 0x44340000    # 720.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    if-ne v3, v7, :cond_4

    iget v0, p0, Lcom/appodeal/ads/a/ad;->b:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/a/ad;->d:Lcom/yandex/mobile/ads/AdView;

    sget-object v1, Lcom/yandex/mobile/ads/AdSize;->BANNER_728x90:Lcom/yandex/mobile/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/AdView;->setAdSize(Lcom/yandex/mobile/ads/AdSize;)V

    iput v5, p0, Lcom/appodeal/ads/a/ad;->b:I

    :goto_1
    invoke-static {}, Lcom/yandex/mobile/ads/AdRequest;->builder()Lcom/yandex/mobile/ads/AdRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/appodeal/ads/an;->e(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/AdRequest$Builder;->withLocation(Landroid/location/Location;)Lcom/yandex/mobile/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/AdRequest$Builder;->build()Lcom/yandex/mobile/ads/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/a/ad;->d:Lcom/yandex/mobile/ads/AdView;

    new-instance v2, Lcom/appodeal/ads/a/ae;

    sget-object v3, Lcom/appodeal/ads/a/ad;->c:Lcom/appodeal/ads/h;

    invoke-direct {v2, v3, p2, p3}, Lcom/appodeal/ads/a/ae;-><init>(Lcom/appodeal/ads/h;II)V

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/AdView;->setAdEventListener(Lcom/yandex/mobile/ads/AdEventListener;)V

    iget-object v1, p0, Lcom/appodeal/ads/a/ad;->d:Lcom/yandex/mobile/ads/AdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/AdView;->setAutoRefreshEnabled(Z)V

    iget-object v1, p0, Lcom/appodeal/ads/a/ad;->d:Lcom/yandex/mobile/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/AdView;->loadAd(Lcom/yandex/mobile/ads/AdRequest;)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x140

    if-ne v3, v0, :cond_5

    iget v0, p0, Lcom/appodeal/ads/a/ad;->b:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/appodeal/ads/a/ad;->d:Lcom/yandex/mobile/ads/AdView;

    sget-object v1, Lcom/yandex/mobile/ads/AdSize;->BANNER_320x50:Lcom/yandex/mobile/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/AdView;->setAdSize(Lcom/yandex/mobile/ads/AdSize;)V

    iput v6, p0, Lcom/appodeal/ads/a/ad;->b:I

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/appodeal/ads/a/ad;->c:Lcom/appodeal/ads/h;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/AdView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/AdView;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/AdView;->destroy()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-static {p1}, Lcom/yandex/mobile/ads/MobileAds;->enableLogging(Z)V

    return-void
.end method

.method public c()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/ad;->d:Lcom/yandex/mobile/ads/AdView;

    return-object v0
.end method
