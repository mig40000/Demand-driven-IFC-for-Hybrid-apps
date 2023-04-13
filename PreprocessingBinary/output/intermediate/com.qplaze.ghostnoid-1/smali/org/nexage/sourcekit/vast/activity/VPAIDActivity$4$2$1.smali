.class Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;

.field final synthetic val$skipText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2$1;->this$2:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;

    iput-object p2, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2$1;->val$skipText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2$1;->this$2:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$1000(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2$1;->this$2:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$1000(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$4$2$1;->val$skipText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
