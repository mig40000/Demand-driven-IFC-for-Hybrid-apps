.class Lcom/appodeal/ads/u$6;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/u;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/u;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/u;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->h(Lcom/appodeal/ads/u;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/u$6$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/u$6$1;-><init>(Lcom/appodeal/ads/u$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->j(Lcom/appodeal/ads/u;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    iget-object v1, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v1}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/u;I)I

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->j(Lcom/appodeal/ads/u;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v1}, Lcom/appodeal/ads/u;->j(Lcom/appodeal/ads/u;)I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v1}, Lcom/appodeal/ads/u;->k(Lcom/appodeal/ads/u;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    if-lt v0, v1, :cond_3

    iget-object v1, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v1}, Lcom/appodeal/ads/u;->k(Lcom/appodeal/ads/u;)I

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Video at start: (%s)"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->start:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, v1}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/u;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->l(Lcom/appodeal/ads/u;)I

    :cond_3
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/u$6$2;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/u$6$2;-><init>(Lcom/appodeal/ads/u$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v1}, Lcom/appodeal/ads/u;->k(Lcom/appodeal/ads/u;)I

    move-result v1

    if-ne v1, v3, :cond_5

    const-string v1, "Video at first quartile: (%s)"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->firstQuartile:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, v1}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/u;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v1}, Lcom/appodeal/ads/u;->k(Lcom/appodeal/ads/u;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const-string v1, "Video at midpoint: (%s)"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->midpoint:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, v1}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/u;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    invoke-static {v1}, Lcom/appodeal/ads/u;->k(Lcom/appodeal/ads/u;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const-string v1, "Video at third quartile: (%s)"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/u$6;->a:Lcom/appodeal/ads/u;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->thirdQuartile:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, v1}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/u;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    goto :goto_1
.end method
