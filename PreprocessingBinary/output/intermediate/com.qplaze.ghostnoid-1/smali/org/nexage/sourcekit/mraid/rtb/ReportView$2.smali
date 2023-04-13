.class Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/mraid/rtb/ReportView;->createButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/mraid/rtb/ReportView;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/mraid/rtb/ReportView;I)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;->this$0:Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    iput p2, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;->this$0:Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;->this$0:Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;->this$0:Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->complainedCallback:Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;->this$0:Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->complainedCallback:Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;

    invoke-interface {v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;->wasComplained()V

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;->this$0:Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    iget v1, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportView$2;->val$id:I

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->access$000(Lorg/nexage/sourcekit/mraid/rtb/ReportView;I)V

    return-void
.end method
