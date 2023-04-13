.class public Lcom/appodeal/ads/b/ah;
.super Lcom/appodeal/ads/r;


# static fields
.field private static b:Lcom/appodeal/ads/o;


# instance fields
.field private c:Lcom/yandex/mobile/ads/InterstitialAd;


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

    const-string v2, "com.yandex.mobile.ads.AdActivity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/b/ah;->b:Lcom/appodeal/ads/o;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/b/ah;

    invoke-direct {v0}, Lcom/appodeal/ads/b/ah;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/o;

    invoke-static {}, Lcom/appodeal/ads/b/ah;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/o;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/r;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/o;->d()Lcom/appodeal/ads/o;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/b/ah;->b:Lcom/appodeal/ads/o;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/b/ah;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/ah;->c:Lcom/yandex/mobile/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/InterstitialAd;->show()V

    return-void
.end method

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
    sget-object v0, Lcom/appodeal/ads/b/ah;->b:Lcom/appodeal/ads/o;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "metrica_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v2, "block_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/yandex/metrica/YandexMetrica;->activate(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/InterstitialAd;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appodeal/ads/b/ah;->c:Lcom/yandex/mobile/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appodeal/ads/b/ah;->c:Lcom/yandex/mobile/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/InterstitialAd;->setBlockId(Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/AdRequest;->builder()Lcom/yandex/mobile/ads/AdRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/appodeal/ads/an;->e(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/AdRequest$Builder;->withLocation(Landroid/location/Location;)Lcom/yandex/mobile/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/AdRequest$Builder;->build()Lcom/yandex/mobile/ads/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b/ah;->c:Lcom/yandex/mobile/ads/InterstitialAd;

    new-instance v2, Lcom/appodeal/ads/b/ai;

    sget-object v3, Lcom/appodeal/ads/b/ah;->b:Lcom/appodeal/ads/o;

    invoke-direct {v2, v3, p2, p3}, Lcom/appodeal/ads/b/ai;-><init>(Lcom/appodeal/ads/o;II)V

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/InterstitialAd;->setInterstitialEventListener(Lcom/yandex/mobile/ads/InterstitialEventListener;)V

    iget-object v1, p0, Lcom/appodeal/ads/b/ah;->c:Lcom/yandex/mobile/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/InterstitialAd;->loadAd(Lcom/yandex/mobile/ads/AdRequest;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    invoke-static {p1}, Lcom/yandex/mobile/ads/MobileAds;->enableLogging(Z)V

    return-void
.end method
