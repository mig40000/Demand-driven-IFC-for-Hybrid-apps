.class Lorg/nexage/sourcekit/vast/activity/VASTActivity$18$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1700(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/view/VastCountdown;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->changePercentage(II)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1700(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/view/VastCountdown;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$18;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1802(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Z)Z

    return-void
.end method
