.class public Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;
.super Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;
.source "CMNativeAdLoader.java"

# interfaces
.implements Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;
.implements Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;


# static fields
.field private static final DEFAULT_TIMEOUT_TIME:I = 0x3a98

.field private static final DEFAULT_TRY_NUMBER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CMNativeAdLoader"


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

.field private mInternalNativeLoader:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

.field private mLastLoadTime:J

.field private mLoadNumber:I

.field private mLoaded:Z

.field private mLoaderTimerOutTask:Lcom/cmcm/adsdk/nativead/TimeoutTask;

.field mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mPlacementIds:[Ljava/lang/String;

.field private mPlacementIndex:I

.field public final mPosBean:Lcom/cmcm/adsdk/config/PosBean;

.field private mSelectAllPriorityAd:Z

.field mTimeoutRun:Ljava/lang/Runnable;

.field private mTryNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/adsdk/config/PosBean;Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;
    .param p3, "adTypeName"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/String;
    .param p5, "posBean"    # Lcom/cmcm/adsdk/config/PosBean;
    .param p6, "internalLoader"    # Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/cmcm/adsdk/adapter/CMBaseNativeloaderAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-boolean v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaded:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLastLoadTime:J

    .line 39
    iput v3, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIndex:I

    .line 40
    iput v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mTryNumber:I

    .line 41
    iput v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoadNumber:I

    .line 42
    iput-object v4, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaderTimerOutTask:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    .line 44
    iput-boolean v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mSelectAllPriorityAd:Z

    .line 302
    new-instance v0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;-><init>(Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mTimeoutRun:Ljava/lang/Runnable;

    .line 49
    iput-object p5, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPosBean:Lcom/cmcm/adsdk/config/PosBean;

    .line 50
    iput-object p6, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mInternalNativeLoader:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    .line 52
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p6}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->getAdKeyType()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, "fb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, ","

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIds:[Ljava/lang/String;

    .line 65
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    .line 66
    return-void

    .line 58
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIds:[Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIds:[Ljava/lang/String;

    aput-object p4, v0, v3

    goto :goto_0

    .line 62
    :cond_1
    iput-object v4, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIds:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mTryNumber:I

    return p1
.end method

.method private getLoadExtras(ILjava/lang/String;)Ljava/util/Map;
    .locals 9
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
    const-wide/32 v0, 0x1b7740

    const/4 v4, 0x1

    .line 131
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 132
    const-string v2, "juhe_posid"

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPositionId:Ljava/lang/String;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v2, "placementid"

    invoke-interface {v5, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v2, "load_size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "report_res"

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mInternalNativeLoader:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-virtual {v3}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->getReportRes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "report_pkg_name"

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mInternalNativeLoader:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->getReportPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mInternalNativeLoader:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-virtual {v2}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->getDefaultCacheTime()J

    move-result-wide v2

    .line 140
    cmp-long v6, v2, v0

    if-gtz v6, :cond_3

    .line 141
    const-string v6, "CMCMADSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default cache time to low: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reset to 30min"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    const-string v2, "cache_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    instance-of v0, v0, Lcom/cmcm/adsdk/banner/CMBannerParams;

    if-eqz v0, :cond_0

    .line 148
    const-string v1, "banner_view_size"

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    check-cast v0, Lcom/cmcm/adsdk/banner/CMBannerParams;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/CMBannerParams;->getCMBannerAdSize()Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    const-string v1, "cm_check_view"

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/CMRequestParams;->getReportShowIgnoreView()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :goto_2
    return-object v5

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 152
    :cond_2
    const-string v0, "cm_check_view"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method private getPriorityAdList(ZI)Ljava/util/List;
    .locals 5
    .param p1, "filterPriority"    # Z
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->removeExpiredAds(Ljava/util/List;)V

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 187
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 188
    if-eqz p1, :cond_3

    .line 189
    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->isPriority()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p2, :cond_4

    .line 203
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 204
    return-object v2

    .line 191
    :cond_2
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mSelectAllPriorityAd:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 197
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private issueNextPlacementId()V
    .locals 3

    .prologue
    .line 115
    iget v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mTryNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mTryNumber:I

    .line 117
    iget v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIndex:I

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIds:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 118
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIds:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 120
    iget v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIndex:I

    .line 121
    iget v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoadNumber:I

    invoke-direct {p0, v1, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getLoadExtras(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLocalExtras:Ljava/util/Map;

    .line 122
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mInternalNativeLoader:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-virtual {v0, p0}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->setAdapterListener(Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;)V

    .line 123
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mInternalNativeLoader:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLocalExtras:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V

    .line 128
    return-void
.end method

.method private load(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    const/4 v0, 0x1

    .line 83
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIds:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIds:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mNativeAdListener:Lcom/cmcm/adsdk/base/INativeReqeustCallBack;

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssp adtype configured incorrectly"

    invoke-interface {v0, v1, v2}, Lcom/cmcm/adsdk/base/INativeReqeustCallBack;->adFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->removeExpiredAds(Ljava/util/List;)V

    .line 90
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p1, :cond_3

    .line 91
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adload has cache , cache size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mNativeAdListener:Lcom/cmcm/adsdk/base/INativeReqeustCallBack;

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/base/INativeReqeustCallBack;->adLoaded(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-boolean v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaded:Z

    if-eqz v1, :cond_1

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLastLoadTime:J

    .line 101
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mInternalNativeLoader:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-virtual {v1}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->getDefaultLoadNum()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoadNumber:I

    .line 102
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPlacementIds:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v0, :cond_4

    const/4 v0, 0x2

    :cond_4
    iput v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mTryNumber:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaded:Z

    .line 104
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaderTimerOutTask:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    if-nez v0, :cond_5

    .line 105
    new-instance v0, Lcom/cmcm/adsdk/nativead/TimeoutTask;

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mTimeoutRun:Ljava/lang/Runnable;

    const-string v2, "Loader_Timeout"

    invoke-direct {v0, v1, v2}, Lcom/cmcm/adsdk/nativead/TimeoutTask;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaderTimerOutTask:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    .line 106
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaderTimerOutTask:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/nativead/TimeoutTask;->start(I)V

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    if-eqz v0, :cond_6

    .line 109
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->requestParams:Lcom/cmcm/adsdk/CMRequestParams;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/CMRequestParams;->isSelectAllPriorityAd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mSelectAllPriorityAd:Z

    .line 111
    :cond_6
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->issueNextPlacementId()V

    goto :goto_0
.end method

.method private recordClick(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 9
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 266
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const/4 v5, 0x0

    .line 270
    const-string v8, ""

    .line 272
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    move-object v1, v0

    .line 273
    invoke-virtual {v1}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getExtraReportParams()Ljava/util/Map;

    move-result-object v5

    .line 275
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getRawString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 279
    :goto_1
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLocalExtras:Ljava/util/Map;

    const-string v2, "placementid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 280
    const-string v1, "click"

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mInternalNativeLoader:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->getReportPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mPositionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mInternalNativeLoader:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-virtual {v4}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->getReportRes()I

    move-result v4

    move-object v7, p1

    invoke-static/range {v1 .. v8}, Lcom/cmcm/picks/market/MarketUtils;->reportExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Lcom/cmcm/baseapi/ads/INativeAd;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method appendAd(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 4
    .param p1, "ad"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLocalExtras:Ljava/util/Map;

    const-string v1, "ad_type_name"

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    new-instance v1, Lcom/cmcm/adsdk/nativead/CMNativeAd;

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLocalExtras:Ljava/util/Map;

    check-cast p1, Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    .end local p1    # "ad":Lcom/cmcm/baseapi/ads/INativeAd;
    invoke-direct {v1, v2, p0, v3, p1}, Lcom/cmcm/adsdk/nativead/CMNativeAd;-><init>(Landroid/content/Context;Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;Ljava/util/Map;Lcom/cmcm/adsdk/base/CMBaseNativeAd;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
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
    .line 248
    .local p1, "adList":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/baseapi/ads/INativeAd;>;"
    if-nez p1, :cond_1

    .line 255
    :cond_0
    return-void

    .line 252
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

    .line 253
    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->appendAd(Lcom/cmcm/baseapi/ads/INativeAd;)V

    goto :goto_0
.end method

.method public checkLoadedPriorityAd()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 286
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mSelectAllPriorityAd:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 289
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->isPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return v1

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 295
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->isPriority()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    .line 298
    goto :goto_0
.end method

.method public getAd()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->removeExpiredAds(Ljava/util/List;)V

    .line 161
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mAdPool:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 165
    :cond_0
    return-object v0
.end method

.method public getAdList(I)Ljava/util/List;
    .locals 1
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getPriorityAdList(ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPriorityAdList(I)Ljava/util/List;
    .locals 1
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getPriorityAdList(ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaded:Z

    return v0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->load(I)V

    .line 80
    return-void
.end method

.method public loadAds(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->load(I)V

    .line 75
    return-void
.end method

.method public onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 1
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mNativeAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mNativeAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    invoke-interface {v0, p1}, Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;->onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->recordClick(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 236
    return-void
.end method

.method public onNativeAdFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 221
    iget v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mTryNumber:I

    if-gtz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaded:Z

    .line 223
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->stopTimeOutTask()V

    .line 224
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mNativeAdListener:Lcom/cmcm/adsdk/base/INativeReqeustCallBack;

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/cmcm/adsdk/base/INativeReqeustCallBack;->adFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->issueNextPlacementId()V

    goto :goto_0
.end method

.method public onNativeAdLoaded(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 2
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaded:Z

    .line 211
    invoke-virtual {p0, p1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->appendAd(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 212
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->stopTimeOutTask()V

    .line 213
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mNativeAdListener:Lcom/cmcm/adsdk/base/INativeReqeustCallBack;

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/base/INativeReqeustCallBack;->adLoaded(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onNativeAdLoaded(Ljava/util/List;)V
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
    .line 240
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/baseapi/ads/INativeAd;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaded:Z

    .line 242
    invoke-virtual {p0, p1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->appendAd(Ljava/util/List;)V

    .line 243
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->stopTimeOutTask()V

    .line 244
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mNativeAdListener:Lcom/cmcm/adsdk/base/INativeReqeustCallBack;

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/base/INativeReqeustCallBack;->adLoaded(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method stopTimeOutTask()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaderTimerOutTask:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaderTimerOutTask:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/TimeoutTask;->stop()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->mLoaderTimerOutTask:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    .line 321
    :cond_0
    return-void
.end method
