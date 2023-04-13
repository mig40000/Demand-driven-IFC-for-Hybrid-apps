.class Lcom/appodeal/ads/e/l;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;
.implements Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;


# instance fields
.field private final a:Lcom/appodeal/ads/ap;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    iput p2, p0, Lcom/appodeal/ads/e/l;->b:I

    iput p3, p0, Lcom/appodeal/ads/e/l;->c:I

    return-void
.end method


# virtual methods
.method public mraidNativeFeatureCallTel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureCreateCalendarEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureOpenBrowser(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    iget-object v0, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public mraidNativeFeaturePlayVideo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureSendSms(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureStorePicture(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidVideoAddendumInterstitialHide(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/appodeal/ads/e/l;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->d(ILcom/appodeal/ads/ap;)V

    iget-object v0, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    iget-object v0, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public mraidVideoAddendumInterstitialLoaded(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/e/l;->b:I

    iget v1, p0, Lcom/appodeal/ads/e/l;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->a(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public mraidVideoAddendumInterstitialNoFill(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/e/l;->b:I

    iget v1, p0, Lcom/appodeal/ads/e/l;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public mraidVideoAddendumInterstitialShow(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 0

    return-void
.end method

.method public mraidVideoAddendumViewClickThru(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidVideoAddendumViewClickThru ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewComplete(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 2

    const-string v0, "mraidVideoAddendumViewComplete"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/appodeal/ads/e/l;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/l;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->b(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public mraidVideoAddendumViewError(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidVideoAddendumViewError ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewFirstQuartile(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 1

    const-string v0, "mraidVideoAddendumViewFirstQuartile"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewLog(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidVideoAddendumViewLog ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewMidpoint(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 1

    const-string v0, "mraidVideoAddendumViewMidpoint"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewPaused(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 1

    const-string v0, "mraidVideoAddendumViewPaused"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewPlaying(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 1

    const-string v0, "mraidVideoAddendumViewPlaying"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewSkippableStateChange(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidVideoAddendumViewSkippableStateChange - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewSkipped(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 1

    const-string v0, "mraidVideoAddendumViewSkipped"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewStarted(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 1

    const-string v0, "mraidVideoAddendumViewStarted"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewStopped(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 1

    const-string v0, "mraidVideoAddendumViewStopped"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewThirdQuartile(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 1

    const-string v0, "mraidVideoAddendumViewThirdQuartile"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewUserClose(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 1

    const-string v0, "mraidVideoAddendumViewUserClose"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mraidVideoAddendumViewVideoStart(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;)V
    .locals 1

    const-string v0, "mraidVideoAddendumViewVideoStart"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method
