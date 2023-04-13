.class Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;

.field final synthetic val$curPos:I

.field final synthetic val$played:I


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;II)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;

    iput p2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;->val$curPos:I

    iput p3, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;->val$played:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1700(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/view/VastCountdown;

    move-result-object v1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1500(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;->val$curPos:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;

    iget-object v2, v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v2}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1500(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v0, v2

    :goto_0
    iget v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$1;->val$played:I

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->changePercentage(II)V

    return-void

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method
