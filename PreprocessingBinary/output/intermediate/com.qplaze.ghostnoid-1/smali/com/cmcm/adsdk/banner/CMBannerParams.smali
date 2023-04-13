.class public Lcom/cmcm/adsdk/banner/CMBannerParams;
.super Lcom/cmcm/adsdk/CMRequestParams;
.source "CMBannerParams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/cmcm/adsdk/CMRequestParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getCMBannerAdSize()Lcom/cmcm/adsdk/banner/CMBannerAdSize;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMBannerParams;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMBannerParams;->mParams:Ljava/util/Map;

    const-string v1, "key_banner_view_size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    check-cast v0, Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    .line 24
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBannerViewSize(Lcom/cmcm/adsdk/banner/CMBannerAdSize;)V
    .locals 2
    .param p1, "mBannerAdSize"    # Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMBannerParams;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMBannerParams;->mParams:Ljava/util/Map;

    const-string v1, "key_banner_view_size"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    return-void
.end method
