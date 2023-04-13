.class Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VASTActivity;->startSkipTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1500(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v2}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1600(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/model/Extensions;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    new-instance v3, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;II)V

    invoke-virtual {v2, v3}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-gtz v1, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1502(Lorg/nexage/sourcekit/vast/activity/VASTActivity;I)I

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1802(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Z)Z

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaPlayer.getCurrentPosition exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->cancel()Z

    goto :goto_0

    :cond_2
    if-gtz v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1600(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/model/Extensions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/Extensions;->isControls()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$2;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$2;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1502(Lorg/nexage/sourcekit/vast/activity/VASTActivity;I)I

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1802(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Z)Z

    :cond_3
    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->cancel()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
