.class Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You can skip this video in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;

    iget-object v1, v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$900(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;

    iget-object v1, v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v2, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2$1;

    invoke-direct {v2, p0, v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2$1;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
