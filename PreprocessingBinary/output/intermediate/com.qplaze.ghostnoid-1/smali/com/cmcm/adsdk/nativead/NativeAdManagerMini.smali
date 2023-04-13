.class public Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;
.super Ljava/lang/Object;
.source "NativeAdManagerMini.java"

# interfaces
.implements Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;
.implements Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;


# instance fields
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

.field private mAdapter:Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

.field private mPosid:Ljava/lang/String;

.field public requestParams:Lcom/cmcm/adsdk/CMRequestParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posid"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mContext:Landroid/content/Context;

    .line 40
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdPool:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    invoke-direct {v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdapter:Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    .line 42
    iput-object p2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mPosid:Ljava/lang/String;

    .line 44
    return-void

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private filter()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 92
    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private getLoadExtras(ILjava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "num"    # I
    .param p2, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string v2, "juhe_posid"

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mPosid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v2, "placementid"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v2, "load_size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    if-eqz v2, :cond_1

    .line 71
    const-string v2, "cm_check_view"

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    invoke-virtual {v3}, Lcom/cmcm/adsdk/CMRequestParams;->getReportShowIgnoreView()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_1
    return-object v1

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_1
    const-string v2, "cm_check_view"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method appendAd(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 6
    .param p1, "ad"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdPool:Ljava/util/List;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdPool:Ljava/util/List;

    new-instance v2, Lcom/cmcm/adsdk/nativead/CMNativeAd;

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mPosid:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->getLoadExtras(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v4

    check-cast p1, Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    .end local p1    # "ad":Lcom/cmcm/baseapi/ads/INativeAd;
    invoke-direct {v2, v3, p0, v4, p1}, Lcom/cmcm/adsdk/nativead/CMNativeAd;-><init>(Landroid/content/Context;Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;Ljava/util/Map;Lcom/cmcm/adsdk/base/CMBaseNativeAd;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method appendAd(Ljava/util/List;)V
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
    .line 133
    .local p1, "adList":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/baseapi/ads/INativeAd;>;"
    if-nez p1, :cond_1

    .line 140
    :cond_0
    return-void

    .line 137
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 138
    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->appendAd(Lcom/cmcm/baseapi/ads/INativeAd;)V

    goto :goto_0
.end method

.method public getAd()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->filter()V

    .line 80
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdPool:Ljava/util/List;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdPool:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    monitor-exit v1

    .line 85
    :goto_0
    return-object v0

    .line 84
    :cond_0
    monitor-exit v1

    .line 85
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadAd()V
    .locals 4

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->filter()V

    .line 153
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdapter:Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    invoke-virtual {v0, p0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->setAdapterListener(Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;)V

    .line 155
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mAdapter:Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mContext:Landroid/content/Context;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mPosid:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->getLoadExtras(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;->adLoaded()V

    goto :goto_0
.end method

.method public onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 1
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    invoke-interface {v0, p1}, Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;->adClicked(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onNativeAdFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    const/16 v1, 0x2712

    invoke-interface {v0, v1}, Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;->adFailedToLoad(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public onNativeAdLoaded(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 1
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->appendAd(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 102
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;->adLoaded()V

    .line 106
    :cond_0
    return-void
.end method

.method public onNativeAdLoaded(Ljava/util/List;)V
    .locals 1
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
    .line 117
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/baseapi/ads/INativeAd;>;"
    invoke-virtual {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->appendAd(Ljava/util/List;)V

    .line 118
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;->adLoaded()V

    .line 121
    :cond_0
    return-void
.end method

.method public setNativeAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerMini;->mListener:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    .line 49
    return-void
.end method
