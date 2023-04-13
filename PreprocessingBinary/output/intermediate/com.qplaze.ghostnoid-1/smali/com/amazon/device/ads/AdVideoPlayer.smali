.class final Lcom/amazon/device/ads/AdVideoPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;


# instance fields
.field private contentUrl_:Ljava/lang/String;

.field private context_:Landroid/content/Context;

.field private layoutParams_:Landroid/view/ViewGroup$LayoutParams;

.field private listener_:Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private released_:Z

.field private videoView_:Landroid/widget/VideoView;

.field private viewGroup_:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdVideoPlayer;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdVideoPlayer;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->released_:Z

    iput-object v2, p0, Lcom/amazon/device/ads/AdVideoPlayer;->videoView_:Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/amazon/device/ads/AdVideoPlayer;->layoutParams_:Landroid/view/ViewGroup$LayoutParams;

    iput-object v2, p0, Lcom/amazon/device/ads/AdVideoPlayer;->viewGroup_:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->context_:Landroid/content/Context;

    return-void
.end method

.method private displayPlayerControls()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "in displayPlayerControls"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->context_:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->videoView_:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->videoView_:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/MediaController;->requestFocus()Z

    return-void
.end method

.method private initializeVideoView()V
    .locals 2

    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->context_:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->layoutParams_:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->videoView_:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->viewGroup_:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->videoView_:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private loadPlayerContent()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->contentUrl_:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->videoView_:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method private removePlayerFromParent()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "in removePlayerFromParent"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->viewGroup_:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->videoView_:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdVideoPlayer;->releasePlayer()V

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->listener_:Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->listener_:Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    invoke-direct {p0}, Lcom/amazon/device/ads/AdVideoPlayer;->removePlayerFromParent()V

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->listener_:Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->listener_:Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;->onError()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public playVideo()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "in playVideo"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amazon/device/ads/AdVideoPlayer;->initializeVideoView()V

    invoke-direct {p0}, Lcom/amazon/device/ads/AdVideoPlayer;->loadPlayerContent()V

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdVideoPlayer;->startPlaying()V

    return-void
.end method

.method public releasePlayer()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "in releasePlayer"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->released_:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->released_:Z

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->videoView_:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-direct {p0}, Lcom/amazon/device/ads/AdVideoPlayer;->removePlayerFromParent()V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->layoutParams_:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public setListener(Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->listener_:Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;

    return-void
.end method

.method public setPlayData(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->released_:Z

    iput-object p1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->contentUrl_:Ljava/lang/String;

    return-void
.end method

.method public setViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/AdVideoPlayer;->viewGroup_:Landroid/view/ViewGroup;

    return-void
.end method

.method public startPlaying()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "in startPlaying"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amazon/device/ads/AdVideoPlayer;->displayPlayerControls()V

    iget-object v0, p0, Lcom/amazon/device/ads/AdVideoPlayer;->videoView_:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method
