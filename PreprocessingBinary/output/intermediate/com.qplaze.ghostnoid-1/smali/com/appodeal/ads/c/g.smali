.class public Lcom/appodeal/ads/c/g;
.super Lcom/appodeal/ads/z;


# static fields
.field private static c:Lcom/appodeal/ads/w;


# instance fields
.field public b:Lcom/cmcm/adsdk/banner/CMNativeBannerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/z;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/w;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/c/g;->c:Lcom/appodeal/ads/w;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/c/g;

    invoke-direct {v0}, Lcom/appodeal/ads/c/g;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/w;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/w;-><init>(Ljava/lang/String;Lcom/appodeal/ads/z;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/w;->c()Lcom/appodeal/ads/w;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/c/g;->c:Lcom/appodeal/ads/w;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/c/g;->c:Lcom/appodeal/ads/w;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)V
    .locals 4

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v2, "posId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v3, "channelId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/appodeal/ads/networks/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-direct {v0, p1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/c/g;->b:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    iget-object v0, p0, Lcom/appodeal/ads/c/g;->b:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    sget-object v1, Lcom/cmcm/adsdk/banner/CMBannerAdSize;->BANNER_300_250:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->setAdSize(Lcom/cmcm/adsdk/banner/CMBannerAdSize;)V

    iget-object v0, p0, Lcom/appodeal/ads/c/g;->b:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->setBannerAutorefreshEnabled(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/c/g;->b:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-virtual {v0, v2}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->setPosid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/c/g;->b:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    new-instance v1, Lcom/appodeal/ads/c/h;

    sget-object v2, Lcom/appodeal/ads/c/g;->c:Lcom/appodeal/ads/w;

    invoke-direct {v1, v2, p2, p3}, Lcom/appodeal/ads/c/h;-><init>(Lcom/appodeal/ads/w;II)V

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->setAdListener(Lcom/cmcm/adsdk/banner/CMBannerAdListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/c/g;->b:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->loadAd()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-virtual {p1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->onDestroy()V

    :cond_0
    return-void
.end method

.method public c()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/c/g;->b:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
