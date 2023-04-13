.class public Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;
.super Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;
.source "PicksInterstatialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;
    }
.end annotation


# instance fields
.field private mAdPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->mAdPool:Ljava/util/List;

    .line 69
    return-void
.end method


# virtual methods
.method public issueNextLoadImage()V
    .locals 4

    .prologue
    .line 87
    const-string v0, "CMCMADSDK"

    const-string v1, "issueNextLoadImage"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "CMCMADSDK"

    const-string v1, "interstial ad poll is null"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "no valid ad"

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->mAdPool:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;

    .line 94
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    :cond_1
    const-string v0, "CMCMADSDK"

    const-string v1, "interstitial ad  cover image is null"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->issueNextLoadImage()V

    goto :goto_0

    .line 99
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$1;-><init>(Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;)V

    invoke-interface {v1, v2, v3}, Lcom/cmcm/adsdk/ImageDownloadListener;->getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V

    .line 113
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;->getAdIconUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$2;-><init>(Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;)V

    invoke-interface {v1, v2, v3}, Lcom/cmcm/adsdk/ImageDownloadListener;->getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V

    goto :goto_0

    .line 125
    :cond_3
    const-string v0, "no imageloader, interstitial must setimageloader"

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->mAdPool:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->removeExpiredAds(Ljava/util/List;)V

    .line 35
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->issueNextLoadImage()V

    goto :goto_0
.end method

.method public onLoadSuccess(Ljava/util/List;)V
    .locals 5
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 59
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 61
    instance-of v2, v0, Lcom/cmcm/picks/loader/Ad;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->mAdPool:Ljava/util/List;

    new-instance v3, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;

    check-cast v0, Lcom/cmcm/picks/loader/Ad;

    iget-object v4, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v0, v4}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;-><init>(Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;Lcom/cmcm/picks/loader/Ad;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->issueNextLoadImage()V

    .line 67
    return-void
.end method

.method protected removeExpiredAds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    return-void

    .line 47
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 51
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
