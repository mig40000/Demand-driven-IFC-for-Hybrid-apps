.class Lorg/nexage/sourcekit/vast/activity/VASTActivity$19$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;

.field final synthetic val$curPos:I


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;I)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;

    iput p2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19$1;->val$curPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2900(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19$1;->val$curPos:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;

    iget-object v2, v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v2}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2800(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->changePercentage(F)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$19;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$2900(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->setVisibility(I)V

    return-void
.end method
