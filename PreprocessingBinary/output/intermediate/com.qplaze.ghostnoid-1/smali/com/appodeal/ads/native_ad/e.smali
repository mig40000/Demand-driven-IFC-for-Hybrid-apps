.class public Lcom/appodeal/ads/native_ad/e;
.super Lcom/appodeal/ads/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/native_ad/e$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/af;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/e;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/e;IILcom/appodeal/ads/ac;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/native_ad/e;->a(IILcom/appodeal/ads/ac;I)V

    return-void
.end method

.method static synthetic c()Lcom/appodeal/ads/ac;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/native_ad/e;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ac;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/native_ad/e;->b:Lcom/appodeal/ads/ac;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/native_ad/e;

    invoke-direct {v0}, Lcom/appodeal/ads/native_ad/e;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ac;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/ac;-><init>(Ljava/lang/String;Lcom/appodeal/ads/af;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/ac;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/native_ad/e;->b:Lcom/appodeal/ads/ac;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/native_ad/e;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;III)V
    .locals 6

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/native_ad/e;->b:Lcom/appodeal/ads/ac;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v2, "posId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v3, "channelId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/appodeal/ads/networks/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/e;->a:Ljava/util/List;

    new-instance v3, Lcom/cmcm/adsdk/nativead/NativeAdManager;

    invoke-direct {v3, p1, v2}, Lcom/cmcm/adsdk/nativead/NativeAdManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/native_ad/e$1;

    move-object v1, p0

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/native_ad/e$1;-><init>(Lcom/appodeal/ads/native_ad/e;ILcom/cmcm/adsdk/nativead/NativeAdManager;II)V

    invoke-virtual {v3, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManager;->setNativeAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V

    invoke-virtual {v3}, Lcom/cmcm/adsdk/nativead/NativeAdManager;->loadAd()V

    goto :goto_0
.end method
