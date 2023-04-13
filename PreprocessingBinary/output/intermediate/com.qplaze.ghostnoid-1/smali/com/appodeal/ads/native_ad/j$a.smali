.class Lcom/appodeal/ads/native_ad/j$a;
.super Lcom/appodeal/ads/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/native_ad/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final g:Lcom/my/target/nativeads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/my/target/nativeads/NativeAd;ILcom/appodeal/ads/ac;)V
    .locals 2

    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/appodeal/ads/ab;-><init>(ILcom/appodeal/ads/ac;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->handleClick()V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->handleShow()V

    return-void
.end method

.method public containsVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/j$a;->k()Z

    move-result v0

    return v0
.end method

.method public getAdProvider()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/j;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAgeRestrictions()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getCtaText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRating()F
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getRating()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getRating()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/appodeal/ads/ab;->getRating()F

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v2}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/appodeal/ads/ab;->registerViewForInteraction(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0, p1}, Lcom/my/target/nativeads/NativeAd;->registerView(Landroid/view/View;)V

    return-void
.end method

.method public setAppodealMediaView(Lcom/appodeal/ads/AppodealMediaView;)V
    .locals 4

    const/16 v3, 0xd

    const/4 v2, -0x1

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/j$a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appodeal/ads/AppodealMediaView;->removeAllViews()V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getContentStreamView(Lcom/my/target/nativeads/NativeAd;Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentStreamAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/ContentStreamAdView;->getMediaAdView()Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/ContentStreamAdView;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/AppodealMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appodeal/ads/u;

    invoke-virtual {p1}, Lcom/appodeal/ads/AppodealMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appodeal/ads/u;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/AppodealMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/u;->setNativeAd(Lcom/appodeal/ads/ab;)V

    goto :goto_0
.end method

.method public unregisterViewForInteraction()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/ab;->unregisterViewForInteraction()V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$a;->g:Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAd;->unregisterView()V

    return-void
.end method
