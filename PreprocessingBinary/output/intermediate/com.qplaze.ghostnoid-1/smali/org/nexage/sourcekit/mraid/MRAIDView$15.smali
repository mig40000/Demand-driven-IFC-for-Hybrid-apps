.class Lorg/nexage/sourcekit/mraid/MRAIDView$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/mraid/MRAIDView;->showDefaultCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

.field final synthetic val$delay:I

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/mraid/MRAIDView;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    iput p2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->val$delay:I

    iput-object p3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$3400(Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/vast/view/VastCountdown;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$3500(Lorg/nexage/sourcekit/mraid/MRAIDView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$3502(Lorg/nexage/sourcekit/mraid/MRAIDView;I)I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$3400(Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/vast/view/VastCountdown;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$3500(Lorg/nexage/sourcekit/mraid/MRAIDView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->val$delay:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->val$delay:I

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v3}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$3500(Lorg/nexage/sourcekit/mraid/MRAIDView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->changePercentage(II)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$3500(Lorg/nexage/sourcekit/mraid/MRAIDView;)I

    move-result v0

    iget v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->val$delay:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$3602(Lorg/nexage/sourcekit/mraid/MRAIDView;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$15;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
