.class Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->started()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$3;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad started"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$3;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$002(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;Z)Z

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$3;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$800(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)V

    return-void
.end method
