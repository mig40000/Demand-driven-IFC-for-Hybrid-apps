.class public Lcom/appodeal/ads/native_ad/g;
.super Lcom/appodeal/ads/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/native_ad/g$a;
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

.method static synthetic a(Lcom/appodeal/ads/native_ad/g;Lcom/facebook/ads/NativeAd;ILcom/appodeal/ads/ac;)Lcom/appodeal/ads/native_ad/g$a;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/native_ad/g;->a(Lcom/facebook/ads/NativeAd;ILcom/appodeal/ads/ac;)Lcom/appodeal/ads/native_ad/g$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/ads/NativeAd;ILcom/appodeal/ads/ac;)Lcom/appodeal/ads/native_ad/g$a;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_1
    new-instance v0, Lcom/appodeal/ads/native_ad/g$a;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/native_ad/g$a;-><init>(Lcom/facebook/ads/NativeAd;ILcom/appodeal/ads/ac;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v5, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/g;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/g;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/g;IILcom/appodeal/ads/ac;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/native_ad/g;->a(IILcom/appodeal/ads/ac;I)V

    return-void
.end method

.method static synthetic c()Lcom/appodeal/ads/ac;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/native_ad/g;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ac;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/native_ad/g;->b:Lcom/appodeal/ads/ac;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/native_ad/g;

    invoke-direct {v0}, Lcom/appodeal/ads/native_ad/g;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ac;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/ac;-><init>(Ljava/lang/String;Lcom/appodeal/ads/af;)V

    sput-object v1, Lcom/appodeal/ads/native_ad/g;->b:Lcom/appodeal/ads/ac;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/native_ad/g;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;III)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/native_ad/g;->b:Lcom/appodeal/ads/ac;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v1, "facebook_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/NativeAd;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/g;->a:Ljava/util/List;

    new-instance v0, Lcom/appodeal/ads/native_ad/g$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/appodeal/ads/native_ad/g$1;-><init>(Lcom/appodeal/ads/native_ad/g;III)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->loadAd()V

    goto :goto_0
.end method
