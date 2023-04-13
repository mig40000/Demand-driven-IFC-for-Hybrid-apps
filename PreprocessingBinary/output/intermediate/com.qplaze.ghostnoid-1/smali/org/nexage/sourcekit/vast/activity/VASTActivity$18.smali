.class Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VASTActivity;->startQuartileTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

.field final synthetic val$videoDuration:I


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;I)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    iput p2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->val$videoDuration:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    mul-int/lit8 v1, v0, 0x64

    iget v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->val$videoDuration:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v2}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1900(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1900(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2000(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lcom/appodeal/ads/ao$b;

    move-result-object v0

    sget-object v2, Lcom/appodeal/ads/ao$b;->b:Lcom/appodeal/ads/ao$b;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    new-instance v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18$1;

    invoke-direct {v2, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18$1;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;)V

    invoke-virtual {v0, v2}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2100(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x19

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2100(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video at start: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->start:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2200(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2108(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaPlayer.getCurrentPosition exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/util/VASTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->cancel()Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2100(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video at first quartile: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->firstQuartile:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2200(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2100(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video at midpoint: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->midpoint:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2200(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2100(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video at third quartile: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->thirdQuartile:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2200(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2300(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    goto/16 :goto_1
.end method
