.class Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->startSkipTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$910(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)I

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$900(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$1;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$1;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->cancel()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
