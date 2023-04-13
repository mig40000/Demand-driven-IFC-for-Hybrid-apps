.class public Lorg/nexage/sourcekit/vast/activity/VASTActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;


# static fields
.field private static final QUARTILE_TIMER_INTERVAL:J = 0xfaL

.field private static final SKIP_TIMER_INTERVAL:J = 0x32L

.field private static TAG:Ljava/lang/String; = null

.field private static final VIDEO_PROGRESS_TIMER_INTERVAL:J = 0x32L


# instance fields
.field private autoClose:Z

.field private bannerCloseButton:Landroid/widget/ImageButton;

.field private canSkip:Z

.field companionOnTouchListener:Landroid/view/View$OnTouchListener;

.field companionWebChromeClient:Landroid/webkit/WebChromeClient;

.field companionWebViewClient:Landroid/webkit/WebViewClient;

.field private duration:I

.field private fileUrl:Landroid/net/Uri;

.field private hasBanner:Z

.field private isComplained:Z

.field private final learnMoreText:Ljava/lang/String;

.field private mBanner:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

.field private mBannerTrackingEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBannerView:Landroid/webkit/WebView;

.field private mBottomPanel:Landroid/widget/RelativeLayout;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCompanion:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

.field private mCompanionShown:Z

.field private mCompanionTrackingEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompanionView:Landroid/view/View;

.field private mCurrentVideoPosition:I

.field private mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

.field private mIsCompleted:Z

.field private mIsPlayBackError:Z

.field private mIsProcessedImpressions:Z

.field private mIsVideoPaused:Z

.field mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

.field private final mMaxProgressTrackingPoints:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOverlay:Landroid/widget/RelativeLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mQuartile:I

.field private mRepeatButton:Landroid/widget/ImageView;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mScreenDensity:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSkipButton:Lorg/nexage/sourcekit/vast/view/VastCountdown;

.field private mSkipTime:I

.field private mSkipTimer:Ljava/util/Timer;

.field private mStartVideoProgressTimer:Ljava/util/Timer;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTimerPanel:Landroid/widget/RelativeLayout;

.field private mTrackingEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackingEventTimer:Ljava/util/Timer;

.field private mType:Lcom/appodeal/ads/ao$b;

.field private mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

.field private mVideoHeight:I

.field private mVideoProgressTracker:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoWidth:I

.field private maxDuration:I

.field private rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

.field private touchedWebViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private vastCountdown:Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;

.field private woBanner:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VASTActivity"

    sput-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;

    const/16 v0, 0x14

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMaxProgressTrackingPoints:I

    iput-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    const-string v0, "Learn more"

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->learnMoreText:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsVideoPaused:Z

    iput-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsPlayBackError:Z

    iput-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    iput-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    iput v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mQuartile:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTime:I

    iput-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->canSkip:Z

    iput-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    iput-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->isComplained:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->touchedWebViews:Ljava/util/List;

    new-instance v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$14;

    invoke-direct {v0, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$14;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->companionOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$15;

    invoke-direct {v0, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$15;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->companionWebChromeClient:Landroid/webkit/WebChromeClient;

    new-instance v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$16;

    invoke-direct {v0, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$16;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->companionWebViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->infoClicked()V

    return-void
.end method

.method static synthetic access$100(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Z
    .locals 1

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->isSkippable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->touchedWebViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processClickThroughEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTime:I

    return v0
.end method

.method static synthetic access$1502(Lorg/nexage/sourcekit/vast/activity/VASTActivity;I)I
    .locals 0

    iput p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTime:I

    return p1
.end method

.method static synthetic access$1600(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/model/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/view/VastCountdown;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipButton:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->canSkip:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->maxDuration:I

    return v0
.end method

.method static synthetic access$200(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->closeClicked()V

    return-void
.end method

.method static synthetic access$2000(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lcom/appodeal/ads/ao$b;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mType:Lcom/appodeal/ads/ao$b;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mQuartile:I

    return v0
.end method

.method static synthetic access$2108(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I
    .locals 2

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mQuartile:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mQuartile:I

    return v0
.end method

.method static synthetic access$2200(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->stopQuartileTimer()V

    return-void
.end method

.method static synthetic access$2400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsPlayBackError:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->stopVideoProgressTimer()V

    return-void
.end method

.method static synthetic access$2700(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processErrorEvent()V

    return-void
.end method

.method static synthetic access$2800(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->duration:I

    return v0
.end method

.method static synthetic access$2900(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->vastCountdown:Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;

    return-object v0
.end method

.method static synthetic access$302(Lorg/nexage/sourcekit/vast/activity/VASTActivity;I)I
    .locals 0

    iput p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    return p1
.end method

.method static synthetic access$402(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createUIComponents()V

    return-void
.end method

.method static synthetic access$600(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishActivity()V

    return-void
.end method

.method static synthetic access$700(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processCompanionEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    return-void
.end method

.method static synthetic access$800(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->isComplained:Z

    return v0
.end method

.method static synthetic access$900(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createReportView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private calculateAspectRatio()V
    .locals 10

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered calculateAspectRatio"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoHeight:I

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "mVideoWidth or mVideoHeight is 0, skipping calculateAspectRatio"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "calculating aspect ratio"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    iget v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoWidth:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    iget v4, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget v6, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-int v6, v6

    iget v7, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoHeight:I

    int-to-double v8, v7

    mul-double/2addr v4, v8

    double-to-int v4, v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v7, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7, v5}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v6, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    sget-object v5, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " screen size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " video size:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " widthRatio:   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " heightRatio:   "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surface size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private cleanActivityUp()V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->cleanUpMediaPlayer()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->stopQuartileTimer()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->stopVideoProgressTimer()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->stopSkipTimer()V

    return-void
.end method

.method private cleanUpMediaPlayer()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered cleanUpMediaPlayer "

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method private closeClicked()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->stopQuartileTimer()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->stopVideoProgressTimer()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->stopSkipTimer()V

    :cond_1
    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered closeClicked()"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsPlayBackError:Z

    if-nez v0, :cond_4

    sget-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->close:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/Extensions;->getSkipAd()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fireUrls(Ljava/util/List;)V

    :cond_2
    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->maxDuration:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mType:Lcom/appodeal/ads/ao$b;

    sget-object v1, Lcom/appodeal/ads/ao$b;->b:Lcom/appodeal/ads/ao$b;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;->vastComplete()V

    :cond_3
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishVAST()V

    :goto_0
    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "leaving closeClicked()"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishActivity()V

    goto :goto_0
.end method

.method private createBanner()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/appodeal/ads/an;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBanner:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTCompanion;->getWidth()I

    move-result v0

    const/16 v1, 0x2d8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBanner:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTCompanion;->getHeight()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x44360000    # 728.0f

    invoke-static {p0}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {p0}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x5

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    invoke-virtual {v3, v7, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    iget-object v4, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->companionWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    iget-object v4, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->companionWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    iget-object v4, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->companionOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/webkit/WebView;->setPadding(IIII)V

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBanner:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    iget v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenDensity:F

    invoke-virtual {v2, v1, v0, v3}, Lorg/nexage/sourcekit/vast/model/VASTCompanion;->getHtml(IIF)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    const-string v1, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const/high16 v0, 0x43a00000    # 320.0f

    invoke-static {p0}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p0}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0
.end method

.method private createBottomPanel()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0xc

    const/16 v2, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p0}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBottomPanel:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBottomPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBottomPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBottomPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->hasBanner:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createBanner()V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBanner:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTCompanion;->getTrackings()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerTrackingEventMap:Ljava/util/HashMap;

    sget-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->creativeView:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processBannerEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    :goto_0
    new-instance v0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;

    invoke-direct {v0, p0}, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->vastCountdown:Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x5

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->vastCountdown:Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->vastCountdown:Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->changePercentage(F)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->vastCountdown:Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBottomPanel:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->vastCountdown:Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v2, "#6b000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    if-nez v2, :cond_1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v2, "Learn more"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity$1;

    invoke-direct {v2, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$1;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBottomPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    invoke-virtual {v2}, Lorg/nexage/sourcekit/vast/model/Extensions;->isControls()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    invoke-virtual {v2}, Lorg/nexage/sourcekit/vast/model/Extensions;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    invoke-virtual {v2}, Lorg/nexage/sourcekit/vast/model/Extensions;->getLinkTxt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    invoke-virtual {v2}, Lorg/nexage/sourcekit/vast/model/Extensions;->getLinkTxt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity$2;

    invoke-direct {v2, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$2;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const-string v2, "Learn more"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private createCompanion()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v7, -0x2

    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanion:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScrollContainer(Z)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    const-string v2, "#6b000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->companionWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->companionWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->companionOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanion:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    iget v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenWidth:I

    iget v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenHeight:I

    iget v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenDensity:F

    invoke-virtual {v0, v1, v2, v3}, Lorg/nexage/sourcekit/vast/model/VASTCompanion;->getHtml(IIF)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->bannerCloseButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->bannerCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->bannerCloseButton:Landroid/widget/ImageButton;

    const v1, 0x1080038

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->bannerCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->bannerCloseButton:Landroid/widget/ImageButton;

    const-string v1, "#6b000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->bannerCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity$6;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$6;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->bannerCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private createMediaPlayer()V
    .locals 2

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method private createOverlay(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createProgressBar()V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private createReportButton()Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x32

    new-instance v1, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private createReportView()Landroid/view/View;
    .locals 4

    new-instance v1, Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->registerCallback(Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;)V

    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x42480000    # 50.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createRootLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private createSkipTimePanel()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/16 v5, 0x8

    const/4 v4, -0x2

    const/4 v3, 0x0

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p0}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTimerPanel:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTimerPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTimerPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTimerPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Lorg/nexage/sourcekit/vast/view/VastCountdown;

    invoke-direct {v0, p0}, Lorg/nexage/sourcekit/vast/view/VastCountdown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipButton:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipButton:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipButton:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity$3;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$3;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->canSkip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipButton:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v3}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->changePercentage(II)V

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mType:Lcom/appodeal/ads/ao$b;

    sget-object v1, Lcom/appodeal/ads/ao$b;->b:Lcom/appodeal/ads/ao$b;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipButton:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    invoke-virtual {v0, v5}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setVisibility(I)V

    :cond_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRepeatButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRepeatButton:Landroid/widget/ImageView;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRepeatButton:Landroid/widget/ImageView;

    const-string v1, "#6b000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRepeatButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity$4;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$4;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCloseButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCloseButton:Landroid/widget/ImageView;

    const v1, 0x1080038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCloseButton:Landroid/widget/ImageView;

    const-string v1, "#6b000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCloseButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity$5;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$5;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTimerPanel:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipButton:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTimerPanel:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTimerPanel:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTimerPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createSurface(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createUIComponents()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createRootLayout(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createSurface(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createMediaPlayer()V

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createOverlay(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createSkipTimePanel()V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBanner:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->woBanner:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->hasBanner:Z

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createBottomPanel()V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->woBanner:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createCompanion()V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanion:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanion:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTCompanion;->getTrackings()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionTrackingEventMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createProgressBar()V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->showCompanion()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishActivity()V
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;->vastDismiss()V

    :cond_0
    new-instance v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$20;

    invoke-direct {v0, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$20;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finish()V

    return-void
.end method

.method private finishVAST()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishActivity()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->woBanner:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "show companion"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->showCompanion()V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->hideBanner()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsPlayBackError:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->autoClose:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishActivity()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->showCloseButton()V

    goto :goto_0
.end method

.method private fireUrls(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered fireUrls"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tfiring url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/nexage/sourcekit/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/nexage/sourcekit/util/HttpTools;->httpGetURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "\turl list is null"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private hideTitleStatusBars()V
    .locals 2

    const/16 v1, 0x400

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private infoClicked()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered infoClicked:"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getVideoClicks()Lorg/nexage/sourcekit/vast/model/VideoClicks;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VideoClicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processClickThroughEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/Extensions;->getAddClick()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fireUrls(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private isSkippable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->canSkip:Z

    return v0
.end method

.method private processBannerEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V
    .locals 3

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->hasBanner:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered Processing Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerTrackingEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fireUrls(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private processClickThroughEvent(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered processClickThroughEvent:"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickThrough url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getVideoClicks()Lorg/nexage/sourcekit/vast/model/VideoClicks;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VideoClicks;->getClickTracking()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fireUrls(Ljava/util/List;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    :cond_1
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->cleanActivityUp()V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0, p1, p0}, Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;->vastClick(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method private processCompanionEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V
    .locals 3

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanion:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered Processing Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionTrackingEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fireUrls(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private processErrorEvent()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered processErrorEvent"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/model/VASTModel;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V
    .locals 3

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered Processing Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTrackingEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fireUrls(Ljava/util/List;)V

    return-void
.end method

.method private processImpressions()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered processImpressions"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getImpressions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fireUrls(Ljava/util/List;)V

    return-void
.end method

.method private showCloseButton()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipButton:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->canSkip:Z

    return-void
.end method

.method private showCompanion()V
    .locals 6

    const/high16 v5, -0x10000

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/16 v1, 0x8

    const/16 v2, 0xa

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBottomPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTimerPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanion:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fileUrl:Landroid/net/Uri;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fileUrl:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fileUrl:Landroid/net/Uri;

    invoke-virtual {v1, p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->duration:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    new-instance v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity$7;

    invoke-direct {v2, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$7;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "Learn more"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x10000

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$9;

    invoke-direct {v0, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$9;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->cleanUpMediaPlayer()V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->bannerCloseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createReportButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity$13;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$13;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->creativeView:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processCompanionEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    new-instance v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity$8;

    invoke-direct {v2, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$8;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "Learn more"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    new-instance v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity$10;

    invoke-direct {v2, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$10;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionView:Landroid/view/View;

    new-instance v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity$11;

    invoke-direct {v2, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$11;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$12;

    invoke-direct {v0, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$12;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private startQuartileTimer()V
    .locals 6

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered startQuartileTimer"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->stopQuartileTimer()V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "ending quartileTimer because the video has been replayed"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;

    invoke-direct {v1, p0, v2}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private startSkipTimer()V
    .locals 6

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered startSkipTimer"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->canSkip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipButton:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTime:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mType:Lcom/appodeal/ads/ao$b;

    sget-object v1, Lcom/appodeal/ads/ao$b;->a:Lcom/appodeal/ads/ao$b;

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTimer:Ljava/util/Timer;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTimer:Ljava/util/Timer;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private startVideoProgressTimer()V
    .locals 6

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered startVideoProgressTimer"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "video progressing (start)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopQuartileTimer()V
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private stopSkipTimer()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered stopSkipTimer"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private stopVideoProgressTimer()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered stopVideoProgressTimer"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideBanner()V
    .locals 2

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->hasBanner:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBannerView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideProgressBar()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered onBackPressed"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->close:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processCompanionEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishActivity()V

    :cond_1
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->isSkippable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->closeClicked()V

    :cond_2
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered onCOMPLETION -- (MediaPlayer callback)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->stopVideoProgressTimer()V

    iput-boolean v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->canSkip:Z

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsPlayBackError:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    sget-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->complete:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;->vastComplete()V

    :cond_0
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishVAST()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishVAST()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "in onCreate"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    if-eqz p1, :cond_0

    const-string v0, "mCompanionShown"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    const-string v0, "canSkip"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->canSkip:Z

    const-string v0, "mCurrentVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->duration:I

    const-string v0, "isComplained"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->isComplained:Z

    const-string v0, "mIsProcessedImpressions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    const-string v0, "mIsPlayBackError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsPlayBackError:Z

    const-string v0, "mIsCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    :cond_0
    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sget-object v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "Orientation is not landscape.....forcing landscape"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->setRequestedOrientation(I)V

    :goto_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;->vastShown()V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "orientation is landscape"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v0, Lorg/nexage/sourcekit/vast/VASTPlayer;->listener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    const-string v0, "com.nexage.android.vast.player.vastModel"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/nexage/sourcekit/vast/model/VASTModel;

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    const-string v0, "android.net.url"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v0, "com.nexage.android.vast.player.woBanners"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->woBanner:Z

    const-string v0, "com.nexage.android.vast.player.autoClose"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->autoClose:Z

    const-string v0, "com.nexage.android.vast.player.maxDuration"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->maxDuration:I

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-static {p0}, Lcom/appodeal/ads/an;->f(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getCompanion(Landroid/util/Pair;)Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    move-result-object v0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanion:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getBanner()Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    move-result-object v0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mBanner:Lorg/nexage/sourcekit/vast/model/VASTCompanion;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getExtensions()Lorg/nexage/sourcekit/vast/model/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    const-string v0, "com.nexage.android.vast.player.type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.nexage.android.vast.player.type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ao$b;

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mType:Lcom/appodeal/ads/ao$b;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    const-string v0, "com.nexage.android.vast.player.reportInfo"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.nexage.android.vast.player.reportInfo"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    :cond_3
    move-object v0, v1

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fileUrl:Landroid/net/Uri;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    if-nez v0, :cond_5

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "vastModel is null. Stopping activity."

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishActivity()V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v3, "video type undefined."

    invoke-static {v0, v3}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/ao$b;->a:Lcom/appodeal/ads/ao$b;

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mType:Lcom/appodeal/ads/ao$b;

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->hideTitleStatusBars()V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenWidth:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenHeight:I

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mScreenDensity:F

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getTrackingUrls()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mTrackingEventMap:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    if-nez v0, :cond_7

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTime:I

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getSkipoffset()I

    move-result v1

    if-le v0, v1, :cond_6

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTime:I

    :goto_2
    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTime:I

    :goto_3
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createUIComponents()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getSkipoffset()I

    move-result v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mExtensions:Lorg/nexage/sourcekit/vast/model/Extensions;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/Extensions;->getSkipTime2()I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSkipTime:I

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered on onDestroy --(life cycle event)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered onError -- (MediaPlayer callback)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsPlayBackError:Z

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutting down Activity due to Media Player errors: WHAT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": EXTRA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->cleanUpMediaPlayer()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processErrorEvent()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishVAST()V

    return v3
.end method

.method protected onPause()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered on onPause --(life cycle event)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    :cond_0
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->cleanActivityUp()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered onPrepared called --(MediaPlayer callback) ....about to play"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->calculateAspectRatio()V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->creativeView:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    sget-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->fullscreen:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->duration:I

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->startSkipTimer()V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->hideProgressBar()V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsVideoPaused:Z

    if-eqz v0, :cond_3

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "pausing video"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :goto_0
    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current location in video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    if-lez v0, :cond_0

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seeking to location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current location in player:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->processImpressions()V

    :cond_1
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->startQuartileTimer()V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsVideoPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->startVideoProgressTimer()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered on onRestart --(life cycle event)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createUIComponents()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "in onRestoreInstanceState"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "mCurrentVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->duration:I

    const-string v0, "mCompanionShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    const-string v0, "canSkip"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->canSkip:Z

    const-string v0, "isComplained"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->isComplained:Z

    const-string v0, "mIsProcessedImpressions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    const-string v0, "mIsPlayBackError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsPlayBackError:Z

    const-string v0, "mIsCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered on onResume --(life cycle event)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered onSaveInstanceState "

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "mCurrentVideoPosition"

    iget v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "duration"

    iget v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->duration:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mCompanionShown"

    iget-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "canSkip"

    iget-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->canSkip:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isComplained"

    iget-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->isComplained:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mIsProcessedImpressions"

    iget-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mIsPlayBackError"

    iget-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsPlayBackError:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mIsCompleted"

    iget-boolean v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mIsCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered onStart --(life cycle event)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered on onStop --(life cycle event)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered onVideoSizeChanged -- (MediaPlayer callback)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoWidth:I

    iput p3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoHeight:I

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restartVideo()V
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createUIComponents()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->finishActivity()V

    goto :goto_0
.end method

.method public showProgressBar()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered surfaceChanged -- (SurfaceHolder callback)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "surfaceCreated -- (SurfaceHolder callback)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createMediaPlayer()V

    :cond_0
    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mCompanionShown:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->showProgressBar()V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mVastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getPickedMediaFileURL()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL for media file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fileUrl:Landroid/net/Uri;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->fileUrl:Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "entered surfaceDestroyed -- (SurfaceHolder callback)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->cleanUpMediaPlayer()V

    return-void
.end method

.method public wasComplained()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->isComplained:Z

    return-void
.end method
