.class public Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;
.super Ljava/lang/Object;
.source "NewsFlowAdsLoader.java"

# interfaces
.implements Lcom/cmcm/adsdk/nativead/INativeAdListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;
    }
.end annotation


# instance fields
.field private mAdPool:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;

.field private mMinCacheSize:I

.field private mPageId:Ljava/lang/String;

.field private mTitlePool:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAdListManager:Lcom/cmcm/adsdk/nativead/NativeAdListManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;
    .param p3, "minPoolSize"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mAdPool:Ljava/util/Vector;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mTitlePool:Ljava/util/Vector;

    .line 28
    iput p3, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mMinCacheSize:I

    .line 29
    iput-object p2, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mPageId:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/cmcm/adsdk/nativead/NativeAdListManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/adsdk/nativead/INativeAdListListener;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->nativeAdListManager:Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->removeExpiredAd()V

    return-void
.end method

.method static synthetic access$100(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mAdPool:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->refetchAd()V

    return-void
.end method

.method static synthetic access$300(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)Lcom/cmcm/adsdk/nativead/NativeAdListManager;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->nativeAdListManager:Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->pushAdsToPool(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mListener:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;

    return-object v0
.end method

.method private checkPoolHasAd(Lcom/cmcm/baseapi/ads/INativeAd;)Z
    .locals 3
    .param p1, "ad"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mTitlePool:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mPageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 118
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mTitlePool:Ljava/util/Vector;

    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAdLoaded()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$2;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$2;-><init>(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    return-void
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
    .line 100
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/baseapi/ads/INativeAd;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 104
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 106
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->checkPoolHasAd(Lcom/cmcm/baseapi/ads/INativeAd;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mAdPool:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private refetchAd()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mPageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pool size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mAdPool:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mAdPool:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mMinCacheSize:I

    if-ge v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mPageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "refetchAd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->nativeAdListManager:Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    iget v1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mMinCacheSize:I

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mAdPool:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->loadAds(I)V

    .line 70
    :cond_0
    return-void
.end method

.method private removeExpiredAd()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mAdPool:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 58
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 62
    :cond_2
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 1
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 156
    new-instance v0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$4;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$4;-><init>(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;Lcom/cmcm/baseapi/ads/INativeAd;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 1
    .param p1, "errorcode"    # I

    .prologue
    .line 144
    new-instance v0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$3;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$3;-><init>(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public adLoaded()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->notifyAdLoaded()V

    .line 140
    return-void
.end method

.method public getAd()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$1;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$1;-><init>(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    return-object v0
.end method

.method public getAdPoolSize()I
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->refetchAd()V

    .line 134
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mAdPool:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getLoaderPoolSize()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mAdPool:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mAdPool:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->nativeAdListManager:Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->getPosBeans()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->nativeAdListManager:Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->getRequestErrorInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLastError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->nativeAdListManager:Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->getRequestLastError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadAds(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mTitlePool:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 36
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->nativeAdListManager:Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->loadAds(I)V

    .line 37
    return-void
.end method

.method public onLoadProcess()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->notifyAdLoaded()V

    .line 77
    return-void
.end method

.method public setNativeListLoaderLisenter(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->mListener:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;

    .line 130
    return-void
.end method
