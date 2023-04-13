.class Lcom/appodeal/ads/native_ad/h$b;
.super Lcom/appodeal/ads/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/native_ad/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final g:Lcom/flurry/android/ads/FlurryAdNative;


# direct methods
.method public constructor <init>(ILcom/appodeal/ads/ac;Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/appodeal/ads/ab;-><init>(ILcom/appodeal/ads/ac;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public containsVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/h$b;->k()Z

    move-result v0

    return v0
.end method

.method public getAdProvider()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/h;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    const-string v1, "callToAction"

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/appodeal/ads/ab;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    const-string v1, "summary"

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    const-string v2, "source"

    invoke-virtual {v1, v2}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "%s. Sponsored by %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    const-string v4, "summary"

    invoke-virtual {v3, v4}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    const-string v4, "source"

    invoke-virtual {v3, v4}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    const-string v1, "summary"

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRating()F
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    const-string v1, "appRating"

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    invoke-super {p0}, Lcom/appodeal/ads/ab;->getRating()F

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    const-string v1, "headline"

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->isVideoAd()Z

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/appodeal/ads/ab;->registerViewForInteraction(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0, p1}, Lcom/flurry/android/ads/FlurryAdNative;->setTrackingView(Landroid/view/View;)V

    return-void
.end method

.method public setAppodealMediaView(Lcom/appodeal/ads/AppodealMediaView;)V
    .locals 4

    const/16 v3, 0xd

    const/4 v2, -0x1

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    const-string v1, "videoUrl"

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->loadAssetIntoView(Landroid/view/View;)V

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

    :cond_1
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

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h$b;->g:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->removeTrackingView()V

    return-void
.end method
