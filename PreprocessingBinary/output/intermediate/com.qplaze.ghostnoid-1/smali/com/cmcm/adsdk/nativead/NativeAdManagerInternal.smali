.class public Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Lcom/cmcm/adsdk/base/INativeReqeustCallBack;
.implements Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;


# static fields
.field private static final AD_PRIORITY_PROTECTION_TIME:I = 0x1f40

.field public static final DEFAULT_REQUEST_SIZE:I = 0x2

.field public static final PRELOAD_REQUEST_SIZE:I = 0x1

.field protected static TAG:Ljava/lang/String;


# instance fields
.field private ONE_MINTURE:J

.field mAsyncFinishCheckRunnable:Ljava/lang/Runnable;

.field private mCallBack:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

.field protected mConfigBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field mFinishCheckRunnable:Ljava/lang/Runnable;

.field protected mHighPriorityLoaded:Z

.field protected volatile mIsFinished:Z

.field protected mIsOpenPriority:Z

.field protected mIsPreload:Z

.field private mLoadStartTime:J

.field protected mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

.field public mLoadingStatus:Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;

.field protected mOptimizeEnabled:Z

.field public final mPicksProtectTime:I

.field mPicksProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

.field protected final mPositionId:Ljava/lang/String;

.field mPriorityProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

.field public mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

.field protected mRequestParams:Lcom/cmcm/adsdk/CMRequestParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "CMCMADSDK"

    sput-object v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadStartTime:J

    .line 44
    iput-boolean v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsFinished:Z

    .line 47
    iput-boolean v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsPreload:Z

    .line 48
    iput-boolean v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsOpenPriority:Z

    .line 50
    iput-object v4, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    .line 51
    iput-object v4, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPriorityProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    .line 53
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    invoke-direct {v0}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    .line 54
    new-instance v0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    invoke-direct {v0}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    .line 55
    new-instance v0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;

    invoke-direct {v0}, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadingStatus:Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;

    .line 57
    iput-boolean v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mOptimizeEnabled:Z

    .line 58
    iput-boolean v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mHighPriorityLoaded:Z

    .line 59
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->ONE_MINTURE:J

    .line 369
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$3;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$3;-><init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mAsyncFinishCheckRunnable:Ljava/lang/Runnable;

    .line 376
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$4;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$4;-><init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mFinishCheckRunnable:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPositionId:Ljava/lang/String;

    .line 66
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectTime:I

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->loadAd(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mCallBack:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->issueToLoadNext()Z

    move-result v0

    return v0
.end method

.method private asyncIssueNext()V
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$5;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$5;-><init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method private checkPreAdIsLoading(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 342
    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 343
    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadingStatus:Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;

    invoke-virtual {v2, v1}, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->isBeanLoading(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    :goto_1
    return v0

    .line 342
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private getPicksPropertyAds(I)Ljava/util/List;
    .locals 2
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
    .line 559
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    const-string v1, "cm"

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->getAdLoader(Ljava/lang/Object;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getPriorityAdList(I)Ljava/util/List;

    move-result-object v0

    .line 563
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private issueToLoadNext()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 263
    const-string v1, "CMCMADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "issueToLoadNext index waiting :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadingStatus:Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;

    invoke-virtual {v3}, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->getWaitingBeansNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",config size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-boolean v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsFinished:Z

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 270
    :goto_1
    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 271
    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadingStatus:Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;

    invoke-virtual {v2, v0}, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->isBeanLoading(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_3
    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->requestBean(I)Z

    move-result v1

    .line 275
    if-eqz v1, :cond_2

    move v0, v1

    .line 279
    :goto_2
    if-nez v0, :cond_0

    .line 280
    const-string v1, "CMCMADSDK"

    const-string v2, "the load index is last one,remove no callback task"

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private loadAd(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "beans":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/adsdk/config/PosBean;>;"
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 122
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 124
    :cond_0
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the posid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPositionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no config, may be has closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getMid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 128
    :cond_1
    const/16 v0, 0x2722

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    .line 173
    :goto_0
    return-void

    .line 132
    :cond_2
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 133
    const/16 v0, 0x2721

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPositionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_4

    .line 138
    const/16 v0, 0x271f

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPositionId:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    const/16 v0, 0x271d

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    goto :goto_0

    .line 146
    :cond_5
    sget-boolean v0, Lcom/cmcm/adsdk/CMAdErrorManager;->isCompleteConfig:Z

    if-nez v0, :cond_6

    .line 147
    const/16 v0, 0x271c

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    goto :goto_0

    .line 150
    :cond_6
    if-nez p1, :cond_7

    .line 151
    const/16 v0, 0x271b

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    goto :goto_0

    .line 155
    :cond_7
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    goto :goto_0

    .line 158
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 159
    iget-object v0, v0, Lcom/cmcm/adsdk/config/PosBean;->parameter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 160
    const/16 v0, 0x2723

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    goto :goto_0

    .line 165
    :cond_a
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p0}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->updateLoaders(Landroid/content/Context;Ljava/util/List;Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mFailedLoaderNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->removeInvalidBeans(Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_1

    .line 170
    :cond_b
    iput-boolean v4, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mHighPriorityLoaded:Z

    .line 171
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    .line 172
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->loadChildAds()V

    goto/16 :goto_0
.end method

.method private loadChildAds()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->reset()V

    .line 195
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadingStatus:Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;

    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->resetLoadingStatus(I)V

    .line 198
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->getLoadAdTypeSize()I

    move-result v4

    move v3, v2

    move v0, v2

    .line 199
    :goto_0
    if-ge v3, v4, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->issueToLoadNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 199
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_1
    if-nez v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mFailedLoaderNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 207
    const-string v3, ""

    move v1, v2

    .line 208
    :goto_1
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mFailedLoaderNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mFailedLoaderNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 211
    :cond_2
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadChildAds create loader error,loader names:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/16 v0, 0x2720

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    .line 237
    :cond_3
    :goto_2
    return-void

    .line 215
    :cond_4
    const-string v0, "CMCMADSDK"

    const-string v1, "loadChildAds no-loader was issued"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/16 v0, 0x271e

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    goto :goto_2

    .line 221
    :cond_5
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsOpenPriority:Z

    if-eqz v0, :cond_6

    .line 222
    const-string v0, "cm"

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->getAdTypeNameIndex(Ljava/lang/String;)I

    move-result v0

    .line 223
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadingStatus:Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;

    invoke-virtual {v2, v0}, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->isBeanLoading(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 224
    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->requestBean(I)Z

    .line 225
    iget v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectTime:I

    if-lez v0, :cond_6

    .line 226
    new-instance v0, Lcom/cmcm/adsdk/nativead/TimeoutTask;

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mAsyncFinishCheckRunnable:Ljava/lang/Runnable;

    const-string v3, "PicksProtectionTimer"

    invoke-direct {v0, v2, v3}, Lcom/cmcm/adsdk/nativead/TimeoutTask;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    .line 227
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    iget v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectTime:I

    invoke-virtual {v0, v2}, Lcom/cmcm/adsdk/nativead/TimeoutTask;->start(I)V

    .line 233
    :cond_6
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsOpenPriority:Z

    if-nez v0, :cond_7

    if-le v4, v1, :cond_3

    .line 234
    :cond_7
    new-instance v0, Lcom/cmcm/adsdk/nativead/TimeoutTask;

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mAsyncFinishCheckRunnable:Ljava/lang/Runnable;

    const-string v2, "PriorityProtectionTimer"

    invoke-direct {v0, v1, v2}, Lcom/cmcm/adsdk/nativead/TimeoutTask;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPriorityProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    .line 235
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPriorityProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/nativead/TimeoutTask;->start(I)V

    goto :goto_2
.end method

.method private removeInvalidBeans(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "beans":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/adsdk/config/PosBean;>;"
    const/4 v0, 0x0

    .line 176
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v0

    .line 190
    :cond_1
    return v1

    .line 181
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 182
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 184
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const/4 v1, 0x1

    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_3
    move v0, v1

    move v1, v0

    .line 188
    goto :goto_0
.end method

.method private requestBean(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    .line 287
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadingStatus:Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;

    invoke-virtual {v0, p1, v1}, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->setBeanLoading(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 290
    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->requestBean(Lcom/cmcm/adsdk/config/PosBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "adTypeName"    # Ljava/lang/String;
    .param p2, "errorString"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " load fail :error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->requestEnd(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 353
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->asyncCheckIfAllFinished()V

    .line 354
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->asyncIssueNext()V

    .line 355
    return-void
.end method

.method public adLoaded(Ljava/lang/String;)V
    .locals 4
    .param p1, "adTypeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 330
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " load success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v3, v1}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->requestEnd(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 332
    invoke-virtual {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->getAdTypeNameIndex(Ljava/lang/String;)I

    move-result v0

    .line 333
    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->checkPreAdIsLoading(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iput-boolean v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mHighPriorityLoaded:Z

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->asyncCheckIfAllFinished()V

    .line 337
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->asyncIssueNext()V

    .line 338
    return-void
.end method

.method protected asyncCheckIfAllFinished()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mFinishCheckRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method protected checkIfAllfinished()V
    .locals 3

    .prologue
    .line 394
    const-string v0, "CMCMADSDK"

    const-string v1, "check finish"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsFinished:Z

    if-eqz v0, :cond_1

    .line 397
    const-string v0, "CMCMADSDK"

    const-string v1, "already finished"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsOpenPriority:Z

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    const-string v1, "cm"

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->getAdLoader(Ljava/lang/Object;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->checkLoadedPriorityAd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    const-string v0, "CMCMADSDK"

    const-string v1, "has open priority and priority ad load success"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdLoaded()V

    goto :goto_0

    .line 410
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    iget-boolean v0, v0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimeout:Z

    if-nez v0, :cond_3

    .line 412
    const-string v0, "CMCMADSDK"

    const-string v1, "wait picks loading"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 419
    invoke-virtual {v0}, Lcom/cmcm/adsdk/config/PosBean;->getAdName()Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    invoke-virtual {v2, v0}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->getFinishedItem(Ljava/lang/Object;)Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;

    move-result-object v0

    .line 421
    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPriorityProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPriorityProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    iget-boolean v2, v2, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimeout:Z

    if-nez v2, :cond_5

    .line 422
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPriorityProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    iget-boolean v2, v2, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...wait"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :cond_5
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdLoaded()V

    .line 430
    :cond_6
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsFinished:Z

    if-nez v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->isAllLoaderFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdFailed(I)V

    goto/16 :goto_0
.end method

.method public getAd()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->getAdList(I)Ljava/util/List;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdList(I)Ljava/util/List;
    .locals 5
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
    .line 516
    const-string v0, "CMCMADSDK"

    const-string v1, "getAdList"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 555
    :goto_0
    return-object v0

    .line 523
    :cond_1
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsOpenPriority:Z

    if-eqz v0, :cond_2

    .line 524
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->getPicksPropertyAds(I)Ljava/util/List;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 526
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 530
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_5

    .line 532
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 533
    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/config/PosBean;->getAdName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->getAdLoader(Ljava/lang/Object;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_3

    .line 538
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, p1, v3

    .line 539
    invoke-interface {v0, v3}, Lcom/cmcm/baseapi/ads/INativeAdLoader;->getAdList(I)Ljava/util/List;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 541
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 542
    const-string v0, "CMCMADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this mAdList size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_3

    .line 551
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 552
    check-cast v0, Lcom/cmcm/adsdk/nativead/CMNativeAd;

    .line 553
    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setReUseAd()V

    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 555
    goto/16 :goto_0
.end method

.method public getAdListener()Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mCallBack:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    return-object v0
.end method

.method protected getAdTypeNameIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "adtypeName"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 242
    invoke-virtual {v0}, Lcom/cmcm/adsdk/config/PosBean;->getAdName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_1
    return v1

    .line 240
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 246
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getLoadAdTypeSize()I
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    .line 254
    :cond_1
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsPreload:Z

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

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
    .line 118
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    return-object v0
.end method

.method protected isAllLoaderFinished()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 439
    const/4 v2, 0x1

    .line 441
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadingStatus:Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->getWaitingBeansNumber()I

    move-result v0

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mConfigBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 443
    invoke-virtual {v0}, Lcom/cmcm/adsdk/config/PosBean;->getAdName()Ljava/lang/String;

    move-result-object v0

    .line 444
    iget-object v4, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    invoke-virtual {v4, v0}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->getAdLoader(Ljava/lang/Object;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 454
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 451
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public loadAd()V
    .locals 4

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsPreload:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "posid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPositionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preloadAd..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsFinished:Z

    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->ONE_MINTURE:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 97
    const-string v0, "CMCMADSDK"

    const-string v1, "wait and reuse for last result"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_1
    return-void

    .line 93
    :cond_0
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "posid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPositionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loadAd..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsFinished:Z

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadStartTime:J

    .line 104
    invoke-static {}, Lcom/cmcm/adsdk/config/RequestConfig;->getInstance()Lcom/cmcm/adsdk/config/RequestConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPositionId:Ljava/lang/String;

    new-instance v2, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$1;

    invoke-direct {v2, p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$1;-><init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)V

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/adsdk/config/RequestConfig;->getBeans(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V

    goto :goto_1
.end method

.method protected notifyAdFailed(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    .line 490
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAdFailed time(ms): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdLoadFinished(ZI)V

    .line 492
    return-void
.end method

.method protected notifyAdLoadFinished(ZI)V
    .locals 3
    .param p1, "loaded"    # Z
    .param p2, "errorCode"    # I

    .prologue
    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsFinished:Z

    .line 497
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    if-eqz p1, :cond_1

    const-string v0, "ok"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->setRequestResult(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mFinishCheckRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->revokeOnUiThread(Ljava/lang/Runnable;)V

    .line 500
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mAsyncFinishCheckRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->revokeOnUiThread(Ljava/lang/Runnable;)V

    .line 501
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->stopTimeOutTask()V

    .line 503
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mCallBack:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    if-eqz v0, :cond_0

    .line 506
    if-eqz p1, :cond_2

    .line 507
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mCallBack:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;->adLoaded()V

    .line 512
    :cond_0
    :goto_1
    return-void

    .line 497
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail.error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mCallBack:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    invoke-interface {v0, p2}, Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;->adFailedToLoad(I)V

    goto :goto_1
.end method

.method protected notifyAdLoaded()V
    .locals 6

    .prologue
    .line 485
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAdLoaded time(ms): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoadStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->notifyAdLoadFinished(ZI)V

    .line 487
    return-void
.end method

.method public onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 1
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 359
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$2;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$2;-><init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;Lcom/cmcm/baseapi/ads/INativeAd;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method protected requestBean(Lcom/cmcm/adsdk/config/PosBean;)Z
    .locals 4
    .param p1, "bean"    # Lcom/cmcm/adsdk/config/PosBean;

    .prologue
    .line 302
    invoke-virtual {p1}, Lcom/cmcm/adsdk/config/PosBean;->getAdName()Ljava/lang/String;

    move-result-object v0

    .line 303
    const-string v1, "CMCMADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestLogger:Lcom/cmcm/adsdk/nativead/RequestResultLogger;

    invoke-virtual {v1, v0}, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->requestBegin(Ljava/lang/String;)Z

    .line 307
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mLoaderMap:Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p0}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->getAdLoader(Landroid/content/Context;Lcom/cmcm/adsdk/config/PosBean;Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestParams:Lcom/cmcm/adsdk/CMRequestParams;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestParams:Lcom/cmcm/adsdk/CMRequestParams;

    invoke-virtual {v1, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->setRequestParams(Lcom/cmcm/adsdk/CMRequestParams;)V

    .line 312
    :cond_0
    invoke-virtual {v1, p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->setLoadCallBack(Lcom/cmcm/adsdk/base/INativeReqeustCallBack;)V

    .line 313
    invoke-virtual {v1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->loadAd()V

    .line 314
    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    .line 316
    :cond_1
    const/16 v1, 0x2715

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->adFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V
    .locals 0
    .param p1, "adListener"    # Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mCallBack:Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    .line 83
    return-void
.end method

.method public setOpenPriority(Z)V
    .locals 0
    .param p1, "openPriority"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsOpenPriority:Z

    .line 71
    return-void
.end method

.method public setPreload(Z)V
    .locals 0
    .param p1, "isPreload"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsPreload:Z

    .line 75
    return-void
.end method

.method public setRequestParams(Lcom/cmcm/adsdk/CMRequestParams;)V
    .locals 0
    .param p1, "requestParams"    # Lcom/cmcm/adsdk/CMRequestParams;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mRequestParams:Lcom/cmcm/adsdk/CMRequestParams;

    .line 79
    return-void
.end method

.method stopTimeOutTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/TimeoutTask;->stop()V

    .line 476
    iput-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPicksProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPriorityProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPriorityProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/TimeoutTask;->stop()V

    .line 480
    iput-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mPriorityProtectionTimer:Lcom/cmcm/adsdk/nativead/TimeoutTask;

    .line 482
    :cond_1
    return-void
.end method
