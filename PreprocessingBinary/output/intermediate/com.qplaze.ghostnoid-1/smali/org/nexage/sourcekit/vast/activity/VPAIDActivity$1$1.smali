.class Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$000(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "can skip while loading"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$1;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$200(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)V

    :cond_0
    return-void
.end method
