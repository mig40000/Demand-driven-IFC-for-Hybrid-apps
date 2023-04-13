.class Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$1;
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

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$1$1;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$1$1;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$1;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
