.class public Lcom/cmcm/adsdk/banner/CMAdView;
.super Landroid/widget/FrameLayout;
.source "CMAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_REFRESH_TIME_MILLISECONDS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "CMAdView"


# instance fields
.field protected adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

.field protected isFirstLoaded:Z

.field protected mAdWasLoaded:Z

.field private mAutoRefreshEnabled:Z

.field protected mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field protected mIsViewDestroyed:Z

.field private mPreviousAutoRefreshSetting:Z

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private mRefreshTimeMillis:J

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenVisibility:I

.field private managerRequest:Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

.field protected posid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/adsdk/banner/CMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cmcm/adsdk/banner/CMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mPreviousAutoRefreshSetting:Z

    .line 42
    iput-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAutoRefreshEnabled:Z

    .line 43
    iput-boolean v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->isFirstLoaded:Z

    .line 44
    iput-boolean v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAdWasLoaded:Z

    .line 45
    iput-boolean v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mIsViewDestroyed:Z

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 57
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mScreenVisibility:I

    .line 58
    invoke-virtual {p0, v1}, Lcom/cmcm/adsdk/banner/CMAdView;->setHorizontalScrollBarEnabled(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/cmcm/adsdk/banner/CMAdView;->setVerticalScrollBarEnabled(Z)V

    .line 61
    invoke-direct {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->registerScreenStateBroadcastReceiver()V

    .line 63
    new-instance v0, Lcom/cmcm/adsdk/banner/CMAdView$1;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/banner/CMAdView$1;-><init>(Lcom/cmcm/adsdk/banner/CMAdView;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 69
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mRefreshTimeMillis:J

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/banner/CMAdView;)I
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/banner/CMAdView;

    .prologue
    .line 27
    iget v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mScreenVisibility:I

    return v0
.end method

.method static synthetic access$100(Lcom/cmcm/adsdk/banner/CMAdView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/banner/CMAdView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/banner/CMAdView;->isScreenVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/cmcm/adsdk/banner/CMAdView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/banner/CMAdView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/banner/CMAdView;->setAdVisibility(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/cmcm/adsdk/banner/CMAdView;)Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/banner/CMAdView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->managerRequest:Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cmcm/adsdk/banner/CMAdView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/banner/CMAdView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/banner/CMAdView;->setViewSize(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/cmcm/adsdk/banner/CMAdView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/banner/CMAdView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/banner/CMAdView;->notifyFailed(I)V

    return-void
.end method

.method private cancelRefreshTimer()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    :cond_0
    return-void
.end method

.method private isScreenVisible(I)Z
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 144
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyFailed(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    invoke-interface {v0, p0, p1}, Lcom/cmcm/adsdk/banner/CMBannerAdListener;->adFailedToLoad(Lcom/cmcm/adsdk/banner/CMAdView;I)V

    .line 298
    :cond_0
    return-void
.end method

.method private pauseRefresh()V
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAutoRefreshEnabled:Z

    iput-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mPreviousAutoRefreshSetting:Z

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/banner/CMAdView;->setAutorefreshEnabled(Z)V

    .line 180
    return-void
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 148
    new-instance v0, Lcom/cmcm/adsdk/banner/CMAdView$2;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/banner/CMAdView$2;-><init>(Lcom/cmcm/adsdk/banner/CMAdView;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method

.method private setAdVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/banner/CMAdView;->isScreenVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->unpauseRefresh()V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->pauseRefresh()V

    goto :goto_0
.end method

.method private setAutorefreshEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAdWasLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAutoRefreshEnabled:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 188
    :goto_0
    if-eqz v0, :cond_0

    .line 189
    const-string v1, "CMAdView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v0, "enabled"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for posid :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcm/adsdk/banner/CMAdView;->posid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    iput-boolean p1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAutoRefreshEnabled:Z

    .line 193
    iget-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAdWasLoaded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAutoRefreshEnabled:Z

    if-eqz v0, :cond_4

    .line 194
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->scheduleRefreshTimerIfEnabled()V

    .line 198
    :cond_1
    :goto_2
    return-void

    .line 187
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_3
    const-string v0, "disabled"

    goto :goto_1

    .line 195
    :cond_4
    iget-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAutoRefreshEnabled:Z

    if-nez v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->cancelRefreshTimer()V

    goto :goto_2
.end method

.method private setViewSize(Landroid/view/View;)V
    .locals 4
    .param p1, "cmView"    # Landroid/view/View;

    .prologue
    .line 269
    if-eqz p1, :cond_1

    .line 271
    const/4 v0, 0x0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    sget-object v2, Lcom/cmcm/adsdk/banner/CMBannerAdSize;->BANNER_300_250:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-ne v1, v2, :cond_2

    .line 273
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v0, v2}, Lcom/cmcm/utils/Commons;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-static {v0, v3}, Lcom/cmcm/utils/Commons;->dip2px(Landroid/content/Context;F)I

    move-result v0

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v0, v1

    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/cmcm/adsdk/banner/CMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_1
    :goto_1
    return-void

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    sget-object v2, Lcom/cmcm/adsdk/banner/CMBannerAdSize;->BANNER_600_314:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-ne v1, v2, :cond_3

    .line 276
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/high16 v2, 0x44160000    # 600.0f

    invoke-static {v0, v2}, Lcom/cmcm/utils/Commons;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/high16 v3, 0x439d0000    # 314.0f

    invoke-static {v0, v3}, Lcom/cmcm/utils/Commons;->dip2px(Landroid/content/Context;F)I

    move-result v0

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v0, v1

    goto :goto_0

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    sget-object v2, Lcom/cmcm/adsdk/banner/CMBannerAdSize;->BANNER_640_960:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-ne v1, v2, :cond_4

    .line 279
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/high16 v2, 0x44200000    # 640.0f

    invoke-static {v0, v2}, Lcom/cmcm/utils/Commons;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/high16 v3, 0x44700000    # 960.0f

    invoke-static {v0, v3}, Lcom/cmcm/utils/Commons;->dip2px(Landroid/content/Context;F)I

    move-result v0

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v0, v1

    goto :goto_0

    .line 281
    :cond_4
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    sget-object v2, Lcom/cmcm/adsdk/banner/CMBannerAdSize;->BANNER_320_50:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-ne v1, v2, :cond_0

    .line 282
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v0, v2}, Lcom/cmcm/utils/Commons;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v0, v3}, Lcom/cmcm/utils/Commons;->dip2px(Landroid/content/Context;F)I

    move-result v0

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    const/16 v0, 0x2713

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/banner/CMAdView;->notifyFailed(I)V

    goto/16 :goto_1
.end method

.method private unpauseRefresh()V
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mPreviousAutoRefreshSetting:Z

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/banner/CMAdView;->setAutorefreshEnabled(Z)V

    .line 184
    return-void
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 2

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v0, "CMAdView"

    const-string v1, "Failed to unregister screen state broadcast receiver (never registered)."

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected internalLoadAd()V
    .locals 4

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAdWasLoaded:Z

    .line 106
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/utils/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "CMAdView"

    const-string v1, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->scheduleRefreshTimerIfEnabled()V

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->invalidateView()V

    .line 113
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->managerRequest:Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    if-nez v0, :cond_1

    .line 114
    new-instance v1, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/adsdk/banner/CMAdView;->posid:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcm/adsdk/banner/CMAdView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    invoke-direct {v1, v0, v2, v3}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/adsdk/banner/CMBannerAdSize;)V

    iput-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->managerRequest:Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->managerRequest:Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    new-instance v1, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;

    invoke-direct {v1, p0}, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;-><init>(Lcom/cmcm/adsdk/banner/CMAdView;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->setAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V

    .line 117
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->managerRequest:Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->loadAd()V

    goto :goto_0
.end method

.method protected invalidateView()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->managerRequest:Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->isFirstLoaded:Z

    .line 303
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->managerRequest:Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->destroy()V

    .line 305
    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    const-string v0, "CMAdView"

    const-string v3, "loadAd"

    invoke-static {v0, v3}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->posid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->internalLoadAd()V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v3, "CMAdView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params error ,context is null: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "or posid is empty:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/cmcm/adsdk/banner/CMAdView;->posid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "or banner adsize is null:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/cmcm/adsdk/banner/CMAdView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/16 v0, 0x2719

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/banner/CMAdView;->notifyFailed(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 97
    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 139
    const-string v0, "CMAdView"

    const-string v1, "on ad attach to window"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->scheduleRefreshTimerIfEnabled()V

    .line 141
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "CMAdView"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->unregisterScreenStateBroadcastReceiver()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    .line 311
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->invalidateView()V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mIsViewDestroyed:Z

    .line 313
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 128
    iget v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mScreenVisibility:I

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/banner/CMAdView;->isScreenVisible(I)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/banner/CMAdView;->isScreenVisible(I)Z

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 129
    :goto_0
    const-string v1, "CMAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window visibility:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",screen visibility:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mScreenVisibility:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz v0, :cond_0

    .line 131
    iput p1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mScreenVisibility:I

    .line 132
    iget v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mScreenVisibility:I

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/banner/CMAdView;->setAdVisibility(I)V

    .line 134
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->managerRequest:Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->managerRequest:Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    invoke-virtual {v0, p0}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->prepare(Landroid/view/View;)V

    .line 226
    :cond_0
    return-void
.end method

.method protected scheduleRefreshTimerIfEnabled()V
    .locals 4

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->cancelRefreshTimer()V

    .line 208
    iget-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mAutoRefreshEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mIsViewDestroyed:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mRefreshTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 209
    const-string v0, "CMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner record refresh time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mRefreshTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/cmcm/adsdk/banner/CMBannerAdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    .line 82
    return-void
.end method

.method public setAdSize(Lcom/cmcm/adsdk/banner/CMBannerAdSize;)V
    .locals 0
    .param p1, "adSize"    # Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    .line 90
    return-void
.end method

.method public setBannerAutorefreshEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/banner/CMAdView;->setAutorefreshEnabled(Z)V

    .line 122
    iput-boolean p1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mPreviousAutoRefreshSetting:Z

    .line 123
    return-void
.end method

.method public setBannerAutorefreshTime(J)V
    .locals 5
    .param p1, "refreshTimeMillis"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 74
    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 75
    const-wide/16 p1, 0x2710

    .line 77
    :cond_0
    iput-wide p1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->mRefreshTimeMillis:J

    .line 78
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/banner/CMAdView;->setBannerAutorefreshEnabled(Z)V

    .line 79
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosid(Ljava/lang/String;)V
    .locals 0
    .param p1, "posid"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cmcm/adsdk/banner/CMAdView;->posid:Ljava/lang/String;

    .line 86
    return-void
.end method
