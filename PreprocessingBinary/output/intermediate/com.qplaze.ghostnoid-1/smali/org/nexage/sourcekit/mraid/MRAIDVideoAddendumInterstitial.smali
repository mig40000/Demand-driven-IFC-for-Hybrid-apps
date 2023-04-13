.class public Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDVAI"


# instance fields
.field private activity:Landroid/app/Activity;

.field private isReady:Z

.field private listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

.field private mraidVideoAddendumView:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    invoke-direct {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setContext(Landroid/content/Context;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setBaseUrl(Ljava/lang/String;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setData(Ljava/lang/String;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setSupportedNativeFeatures([Ljava/lang/String;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setListener(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0, p8}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setNativeFeatureListener(Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setIsInterstitial(Z)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setWidth(I)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setHeight(I)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0, p9}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setRtbInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0, p10}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setPreload(Z)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0, p11}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->setSkippable(Z)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;->build()Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    move-result-object v0

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->mraidVideoAddendumView:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZZLorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$1;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZZ)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->mraidVideoAddendumView:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->clearView()V

    return-void
.end method

.method public mraidVideoAddendumViewClickThru(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdClickThru"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewClickThru(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->mraidVideoAddendumView:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->clearView()V

    return-void
.end method

.method public mraidVideoAddendumViewClose(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "mraidViewClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->isReady:Z

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->mraidVideoAddendumView:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumInterstitialHide(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewComplete(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdVideoComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewComplete(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewError(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewError(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewExpand(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "mraidViewExpand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumInterstitialShow(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewFirstQuartile(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdVideoFirstQuartile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewFirstQuartile(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewLoaded(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "mraidViewLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->isReady:Z

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumInterstitialLoaded(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewLog(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdLog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewLog(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewMidpoint(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdVideoMidpoint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewMidpoint(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewNoFill(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "mraidViewClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->isReady:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->mraidVideoAddendumView:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumInterstitialNoFill(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewPaused(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewPaused(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewPlaying(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdPlaying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewPlaying(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewResize(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;IIII)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mraidVideoAddendumViewSkippableStateChange(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Z)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdSkippableStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewSkippableStateChange(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;Z)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/appodeal/ads/VideoActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/appodeal/ads/VideoActivity;

    invoke-virtual {v0, p2}, Lcom/appodeal/ads/VideoActivity;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public mraidVideoAddendumViewSkipped(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdSkipped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewSkipped(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewStarted(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewStarted(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewStopped(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewStopped(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewThirdQuartile(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdVideoThirdQuartile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewThirdQuartile(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewUserClose(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdUserClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewUserClose(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumViewVideoStart(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 2

    const-string v0, "MRAIDVAI-ViewListener"

    const-string v1, "AdVideoStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;->mraidVideoAddendumViewVideoStart(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->isReady:Z

    if-nez v0, :cond_0

    const-string v0, "MRAIDVAI"

    const-string v1, "interstitial is not ready to show"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->mraidVideoAddendumView:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-virtual {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->showAsInterstitial(Landroid/app/Activity;)V

    goto :goto_0
.end method
