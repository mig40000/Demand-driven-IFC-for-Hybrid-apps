.class Lcom/appodeal/ads/native_ad/e$a;
.super Lcom/appodeal/ads/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/native_ad/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final g:Lcom/cmcm/baseapi/ads/INativeAd;


# direct methods
.method constructor <init>(ILcom/appodeal/ads/ac;Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 2

    invoke-interface {p3}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/appodeal/ads/ab;-><init>(ILcom/appodeal/ads/ac;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/appodeal/ads/native_ad/e$a;->g:Lcom/cmcm/baseapi/ads/INativeAd;

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e$a;->g:Lcom/cmcm/baseapi/ads/INativeAd;

    new-instance v1, Lcom/appodeal/ads/native_ad/e$a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/appodeal/ads/native_ad/e$a$1;-><init>(Lcom/appodeal/ads/native_ad/e$a;ILcom/appodeal/ads/ac;)V

    invoke-interface {v0, v1}, Lcom/cmcm/baseapi/ads/INativeAd;->setAdOnClickListener(Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e$a;->g:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->handleClick()V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getAdProvider()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/e;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e$a;->g:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e$a;->g:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRating()F
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e$a;->g:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdStarRating()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e$a;->g:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdStarRating()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/appodeal/ads/ab;->getRating()F

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e$a;->g:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/appodeal/ads/ab;->registerViewForInteraction(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e$a;->g:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0, p1}, Lcom/cmcm/baseapi/ads/INativeAd;->registerViewForInteraction(Landroid/view/View;)Z

    return-void
.end method

.method public unregisterViewForInteraction()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/ab;->unregisterViewForInteraction()V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e$a;->g:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->unregisterView()V

    return-void
.end method
