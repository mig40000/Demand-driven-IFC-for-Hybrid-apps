.class Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$2;
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


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$2;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$2;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1700(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/view/VastCountdown;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->changePercentage(II)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17$2;->this$1:Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$17;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$1700(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)Lorg/nexage/sourcekit/vast/view/VastCountdown;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setVisibility(I)V

    return-void
.end method
