.class Lcom/appodeal/ads/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;
.implements Lorg/nexage/sourcekit/mraid/MRAIDViewListener;


# instance fields
.field private final a:Lcom/appodeal/ads/h;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:J

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/h;II)V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/a/q;-><init>(Lcom/appodeal/ads/h;IILjava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Lcom/appodeal/ads/h;IILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/a/q;->a:Lcom/appodeal/ads/h;

    iput p2, p0, Lcom/appodeal/ads/a/q;->b:I

    iput p3, p0, Lcom/appodeal/ads/a/q;->c:I

    iput-object p4, p0, Lcom/appodeal/ads/a/q;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/appodeal/ads/a/q;->e:J

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/a/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/q;->f:Ljava/lang/String;

    return-object p1
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
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/a/q;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/a/q;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/a/q;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/appodeal/ads/a/q;->e:J

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/utils/n;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    const-string v0, "appodeal://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/a/q;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/a/q;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/a/q;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/a/q;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/appodeal/ads/a/q;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/a/q;->a:Lcom/appodeal/ads/h;

    new-instance v2, Lcom/appodeal/ads/a/q$1;

    invoke-direct {v2, p0}, Lcom/appodeal/ads/a/q$1;-><init>(Lcom/appodeal/ads/a/q;)V

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->a(ILcom/appodeal/ads/h;Lcom/appodeal/ads/t$a;)V

    sget-object v0, Lcom/appodeal/ads/g;->p:Landroid/view/View;

    invoke-static {v0}, Lcom/appodeal/ads/as;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/appodeal/ads/a/q;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/a/q;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1}, Lcom/appodeal/ads/j;->c(ILcom/appodeal/ads/h;)V

    iput-object p1, p0, Lcom/appodeal/ads/a/q;->f:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

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

.method public mraidViewClose(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    return-void
.end method

.method public mraidViewExpand(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    return-void
.end method

.method public mraidViewLoaded(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/a/q;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/q;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/q;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->a(IILcom/appodeal/ads/h;)V

    return-void
.end method

.method public mraidViewNoFill(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/a/q;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/q;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/q;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    return-void
.end method

.method public mraidViewResize(Lorg/nexage/sourcekit/mraid/MRAIDView;IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
