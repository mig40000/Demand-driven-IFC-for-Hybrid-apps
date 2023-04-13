.class public Lcom/appodeal/ads/c/r;
.super Lcom/appodeal/ads/z;


# static fields
.field private static b:Lcom/appodeal/ads/w;


# instance fields
.field private c:Lcom/yandex/mobile/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/z;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/w;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/c/r;->b:Lcom/appodeal/ads/w;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/c/r;

    invoke-direct {v0}, Lcom/appodeal/ads/c/r;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/w;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/w;-><init>(Ljava/lang/String;Lcom/appodeal/ads/z;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/w;->c()Lcom/appodeal/ads/w;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/c/r;->b:Lcom/appodeal/ads/w;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/c/r;->b:Lcom/appodeal/ads/w;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)V
    .locals 4

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
    sget-object v0, Lcom/appodeal/ads/c/r;->b:Lcom/appodeal/ads/w;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v1, "metrica_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v2, "block_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/yandex/metrica/YandexMetrica;->activate(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/AdView;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appodeal/ads/c/r;->c:Lcom/yandex/mobile/ads/AdView;

    iget-object v1, p0, Lcom/appodeal/ads/c/r;->c:Lcom/yandex/mobile/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/AdView;->setBlockId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/c/r;->c:Lcom/yandex/mobile/ads/AdView;

    sget-object v1, Lcom/yandex/mobile/ads/AdSize;->BANNER_300x250:Lcom/yandex/mobile/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/AdView;->setAdSize(Lcom/yandex/mobile/ads/AdSize;)V

    invoke-static {}, Lcom/yandex/mobile/ads/AdRequest;->builder()Lcom/yandex/mobile/ads/AdRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/appodeal/ads/an;->e(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/AdRequest$Builder;->withLocation(Landroid/location/Location;)Lcom/yandex/mobile/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/AdRequest$Builder;->build()Lcom/yandex/mobile/ads/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/c/r;->c:Lcom/yandex/mobile/ads/AdView;

    new-instance v2, Lcom/appodeal/ads/c/s;

    sget-object v3, Lcom/appodeal/ads/c/r;->b:Lcom/appodeal/ads/w;

    invoke-direct {v2, v3, p2, p3}, Lcom/appodeal/ads/c/s;-><init>(Lcom/appodeal/ads/w;II)V

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/AdView;->setAdEventListener(Lcom/yandex/mobile/ads/AdEventListener;)V

    iget-object v1, p0, Lcom/appodeal/ads/c/r;->c:Lcom/yandex/mobile/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/AdView;->loadAd(Lcom/yandex/mobile/ads/AdRequest;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/appodeal/ads/c/r;->c:Lcom/yandex/mobile/ads/AdView;

    return-object v0
.end method
