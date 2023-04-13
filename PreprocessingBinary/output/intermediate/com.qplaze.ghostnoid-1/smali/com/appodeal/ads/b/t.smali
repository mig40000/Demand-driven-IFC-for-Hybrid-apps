.class Lcom/appodeal/ads/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/nexage/sourcekit/mraid/MRAIDInterstitialListener;
.implements Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;


# instance fields
.field private final a:Lcom/appodeal/ads/o;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:J


# direct methods
.method constructor <init>(Lcom/appodeal/ads/o;II)V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/b/t;-><init>(Lcom/appodeal/ads/o;IILjava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Lcom/appodeal/ads/o;IILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    iput p2, p0, Lcom/appodeal/ads/b/t;->b:I

    iput p3, p0, Lcom/appodeal/ads/b/t;->c:I

    iput-object p4, p0, Lcom/appodeal/ads/b/t;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/appodeal/ads/b/t;->e:J

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/b/t;)Lcom/appodeal/ads/o;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    return-object v0
.end method


# virtual methods
.method public mraidInterstitialHide(Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/appodeal/ads/b/t;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1}, Lcom/appodeal/ads/q;->c(ILcom/appodeal/ads/o;)V

    iget-object v0, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->c()Lcom/appodeal/ads/InterstitialActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->c()Lcom/appodeal/ads/InterstitialActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/InterstitialActivity;->finish()V

    iget-object v0, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->c()Lcom/appodeal/ads/InterstitialActivity;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/appodeal/ads/InterstitialActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public mraidInterstitialLoaded(Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/b/t;->b:I

    iget v1, p0, Lcom/appodeal/ads/b/t;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/q;->a(IILcom/appodeal/ads/o;)V

    return-void
.end method

.method public mraidInterstitialNoFill(Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/b/t;->b:I

    iget v1, p0, Lcom/appodeal/ads/b/t;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    return-void
.end method

.method public mraidInterstitialShow(Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureCallTel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureCreateCalendarEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public mraidNativeFeatureOpenBrowser(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/b/t;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/b/t;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/b/t;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/appodeal/ads/b/t;->e:J

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/utils/n;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    const-string v0, "appodeal://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/appodeal/ads/b/t;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    new-instance v2, Lcom/appodeal/ads/b/t$1;

    invoke-direct {v2, p0}, Lcom/appodeal/ads/b/t$1;-><init>(Lcom/appodeal/ads/b/t;)V

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/q;->a(ILcom/appodeal/ads/o;Lcom/appodeal/ads/t$a;)V

    iget-object v0, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->c()Lcom/appodeal/ads/InterstitialActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/as;->b(Lcom/appodeal/ads/InterstitialActivity;)V

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/appodeal/ads/b/t;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1}, Lcom/appodeal/ads/q;->b(ILcom/appodeal/ads/o;)V

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->c()Lcom/appodeal/ads/InterstitialActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->c()Lcom/appodeal/ads/InterstitialActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/InterstitialActivity;->finish()V

    iget-object v0, p0, Lcom/appodeal/ads/b/t;->a:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->c()Lcom/appodeal/ads/InterstitialActivity;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/appodeal/ads/InterstitialActivity;->overridePendingTransition(II)V

    goto :goto_0
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
