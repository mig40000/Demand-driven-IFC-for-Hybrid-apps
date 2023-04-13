.class public Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;
.super Ljava/lang/Object;
.source "PicksViewCheckHelper.java"


# static fields
.field private static final SCHEDULE_CHECK_VIEW_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PicksViewCheckHelper"

.field private static final VIEW_ALPHA_VALUE:F = 0.9f

.field private static final VIEW_AREA_VALUE:F = 0.1f

.field private static final VIEW_AREA_YAHOO_VALUE:F = 0.5f


# instance fields
.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mImpressionRetryScheduled:Z

.field private mIsYahoo:Z

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShowed:Z

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewAreaValue:F

.field private sendImpressionRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;
    .param p4, "isYahoo"    # Z

    .prologue
    const v0, 0x3dcccccd    # 0.1f

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mViewAreaValue:F

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mShowed:Z

    .line 119
    new-instance v1, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper$1;

    invoke-direct {v1, p0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper$1;-><init>(Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;)V

    iput-object v1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->sendImpressionRunnable:Ljava/lang/Runnable;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mContext:Landroid/content/Context;

    .line 50
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mView:Ljava/lang/ref/WeakReference;

    .line 51
    iput-boolean p4, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mIsYahoo:Z

    .line 52
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mListener:Ljava/lang/ref/WeakReference;

    .line 53
    if-eqz p4, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_0
    iput v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mViewAreaValue:F

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mImpressionRetryScheduled:Z

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mHandler:Landroid/os/Handler;

    .line 56
    sget-object v0, Lcom/cmcm/utils/ReceiverUtils;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mImpressionRetryScheduled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->checkView()V

    return-void
.end method

.method private checkView()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "PicksViewCheckHelper"

    const-string v1, "to check view is on screen"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;

    .line 82
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 83
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 84
    :cond_0
    const-string v0, "view.released"

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->stopWork(Ljava/lang/String;)V

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    invoke-direct {p0, v1}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->isViewOnScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;->onLoggingImpression()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mShowed:Z

    .line 90
    const-string v0, "view.onscreen"

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->stopWork(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isValidAlpha(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewOnScreen(Landroid/view/View;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->isValidAlpha(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, v2

    int-to-double v2, v1

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v1, v4

    int-to-double v4, v1

    .line 106
    const-string v1, "PicksViewCheckHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is yahoo?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mIsYahoo:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " area value :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mViewAreaValue:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mViewAreaValue:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancelImpressionRetry()V
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    const-string v0, "CMCMADSDK"

    const-string v1, "cancelImpressionRetry"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mImpressionRetryScheduled:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->sendImpressionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mImpressionRetryScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onScreenOff()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->cancelImpressionRetry()V

    .line 156
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mShowed:Z

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->scheduleImpressionRetry()V

    .line 152
    :cond_0
    return-void
.end method

.method public declared-synchronized scheduleImpressionRetry()V
    .locals 4

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    const-string v0, "CMCMADSDK"

    const-string v1, "scheduleImpressionRetry"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mImpressionRetryScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->sendImpressionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startWork()V
    .locals 4

    .prologue
    .line 60
    const-string v0, "PicksViewCheckHelper"

    const-string v1, "start check view"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mIsYahoo:Z

    if-nez v0, :cond_0

    .line 63
    const-string v0, "PicksViewCheckHelper"

    const-string v1, "is no yahoo ad, check view"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->checkView()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->sendImpressionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mShowed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/utils/Commons;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    const-string v0, "PicksViewCheckHelper"

    const-string v1, "lock screen,cancel schedule check view"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->cancelImpressionRetry()V

    .line 71
    :cond_1
    return-void
.end method

.method public stopWork(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "PicksViewCheckHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop check view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->cancelImpressionRetry()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mView:Ljava/lang/ref/WeakReference;

    .line 77
    return-void
.end method
