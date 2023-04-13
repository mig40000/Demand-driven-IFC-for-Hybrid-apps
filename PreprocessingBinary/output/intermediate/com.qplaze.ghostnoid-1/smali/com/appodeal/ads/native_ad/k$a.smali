.class Lcom/appodeal/ads/native_ad/k$a;
.super Lcom/appodeal/ads/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/native_ad/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final g:Lcom/mopub/nativeads/NativeAd;

.field private h:Lcom/mopub/nativeads/StaticNativeAd;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/NativeAd;ILcom/appodeal/ads/ac;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/appodeal/ads/ab;-><init>(ILcom/appodeal/ads/ac;)V

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/k$a;->g:Lcom/mopub/nativeads/NativeAd;

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/k$a;)Lcom/mopub/nativeads/StaticNativeAd;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->h:Lcom/mopub/nativeads/StaticNativeAd;

    return-object v0
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->h:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->h:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->h:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/StaticNativeAd;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->h:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/StaticNativeAd;->recordImpression(Landroid/view/View;)V

    return-void
.end method

.method public getAdProvider()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/k;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->h:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/appodeal/ads/ab;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->h:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    invoke-static {p1}, Lcom/appodeal/ads/Native;->b(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Lcom/appodeal/ads/native_ad/k$a$1;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/native_ad/k$a$1;-><init>(Lcom/appodeal/ads/native_ad/k$a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public getRating()F
    .locals 6

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->h:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/appodeal/ads/ab;->getRating()F

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->h:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()Z
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->g:Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    instance-of v1, v0, Lcom/mopub/nativeads/StaticNativeAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mopub/nativeads/StaticNativeAd;

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/k$a;->h:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-direct {p0}, Lcom/appodeal/ads/native_ad/k$a;->o()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
