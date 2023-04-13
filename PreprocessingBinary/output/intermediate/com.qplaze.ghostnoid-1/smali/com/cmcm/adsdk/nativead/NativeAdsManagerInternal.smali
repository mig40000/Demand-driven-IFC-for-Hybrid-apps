.class public Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;
.super Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;
.source "NativeAdsManagerInternal.java"

# interfaces
.implements Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;


# instance fields
.field mAdListListener:Lcom/cmcm/adsdk/nativead/INativeAdListListener;

.field private mAdPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private mExpectedSize:I

.field private mTitlePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mTitlePool:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mExpectedSize:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdListListener:Lcom/cmcm/adsdk/nativead/INativeAdListListener;

    .line 30
    return-void
.end method

.method private checkPoolHasAd(Lcom/cmcm/baseapi/ads/INativeAd;)Z
    .locals 3
    .param p1, "ad"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mTitlePool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has in pool list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mTitlePool:Ljava/util/List;

    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pushAdsToPool(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/baseapi/ads/INativeAd;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 95
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 97
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->checkPoolHasAd(Lcom/cmcm/baseapi/ads/INativeAd;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public adLoaded(Ljava/lang/String;)V
    .locals 4
    .param p1, "adTypeName"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->adLoaded(Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mIsOpenPriority:Z

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    invoke-virtual {v1, p1}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->getAdLoader(Ljava/lang/Object;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    iget v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mExpectedSize:I

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 127
    if-lez v2, :cond_0

    .line 128
    invoke-interface {v1, v2}, Lcom/cmcm/baseapi/ads/INativeAdLoader;->getAdList(I)Ljava/util/List;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-direct {p0, v1}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->pushAdsToPool(Ljava/util/List;)V

    .line 135
    :cond_0
    const-string v1, "CMCMADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adLoaded pool size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mExpectedSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->notifyLoadProgress()V

    .line 140
    :cond_1
    return-void
.end method

.method protected checkIfAllfinished()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "CMCMADSDK"

    const-string v1, "check finish"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mIsFinished:Z

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "CMCMADSDK"

    const-string v1, "already finished"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mIsOpenPriority:Z

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->isAllLoaderFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mExpectedSize:I

    invoke-super {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->getAdList(I)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->pushAdsToPool(Ljava/util/List;)V

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mExpectedSize:I

    if-lt v0, v1, :cond_3

    .line 160
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->notifyAdLoaded()V

    .line 163
    :cond_3
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mIsFinished:Z

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->isAllLoaderFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->notifyAdFailed(I)V

    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->notifyAdLoaded()V

    goto :goto_0
.end method

.method public getAdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    return-object v0
.end method

.method protected getLoadAdTypeSize()I
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mIsOpenPriority:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->TAG:Ljava/lang/String;

    const-string v1, "is open priority, all load"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadAds(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 33
    sget-object v0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mPositionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loadAds num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mOptimizeEnabled:Z

    .line 36
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mTitlePool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iput p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mExpectedSize:I

    .line 40
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->loadAd()V

    .line 41
    return-void
.end method

.method protected notifyLoadProgress()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal$1;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal$1;-><init>(Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method protected requestBean(Lcom/cmcm/adsdk/config/PosBean;)Z
    .locals 6
    .param p1, "bean"    # Lcom/cmcm/adsdk/config/PosBean;

    .prologue
    const/4 v0, 0x0

    .line 65
    iget v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mExpectedSize:I

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 66
    if-gtz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->asyncCheckIfAllFinished()V

    .line 85
    :goto_0
    return v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/cmcm/adsdk/config/PosBean;->getAdName()Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v3, "CMCMADSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "to load "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    invoke-virtual {v3, v2}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->requestBegin(Ljava/lang/String;)Z

    .line 75
    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    iget-object v4, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, p0}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->getAdLoader(Landroid/content/Context;Lcom/cmcm/adsdk/config/PosBean;Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    move-result-object v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mRequestParams:Lcom/cmcm/adsdk/CMRequestParams;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mRequestParams:Lcom/cmcm/adsdk/CMRequestParams;

    invoke-virtual {v3, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->setRequestParams(Lcom/cmcm/adsdk/CMRequestParams;)V

    .line 80
    :cond_1
    invoke-virtual {v3, p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->setLoadCallBack(Lcom/cmcm/adsdk/base/INativeReqeustCallBack;)V

    .line 81
    invoke-virtual {v3, v1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->loadAds(I)V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :cond_2
    const/16 v1, 0x2715

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->adFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/cmcm/adsdk/nativead/INativeAdListListener;)V
    .locals 0
    .param p1, "adListener"    # Lcom/cmcm/adsdk/nativead/INativeAdListListener;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->setAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V

    .line 45
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdListListener:Lcom/cmcm/adsdk/nativead/INativeAdListListener;

    .line 46
    return-void
.end method
