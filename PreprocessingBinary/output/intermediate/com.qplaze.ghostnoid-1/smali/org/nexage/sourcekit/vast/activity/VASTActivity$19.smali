.class Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VASTActivity;->startVideoProgressTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field errorCount:I

.field maxAmountInList:I

.field final synthetic this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/16 v0, 0x13

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->maxAmountInList:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->errorCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_2

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video progressing (seek error)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->maxAmountInList:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video progressing (position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/nexage/sourcekit/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2400(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2800(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video percentage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x64

    iget-object v4, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v4}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2800(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v4

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " remaining time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v3}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2800(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/nexage/sourcekit/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    new-instance v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19$1;

    invoke-direct {v2, p0, v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19$1;-><init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;I)V

    invoke-virtual {v1, v2}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->errorCount:I

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->errorCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video progressing (detected video hang)"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2502(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Z)Z

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2600(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2700(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$600(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    goto/16 :goto_1
.end method
