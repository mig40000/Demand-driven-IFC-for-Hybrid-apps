.class Lorg/nexage/sourcekit/mraid/MRAIDView$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/mraid/MRAIDView;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$1400(Lorg/nexage/sourcekit/mraid/MRAIDView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$1400(Lorg/nexage/sourcekit/mraid/MRAIDView;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$600(Lorg/nexage/sourcekit/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$1400(Lorg/nexage/sourcekit/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$1400(Lorg/nexage/sourcekit/mraid/MRAIDView;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$1400(Lorg/nexage/sourcekit/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$1500(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$1400(Lorg/nexage/sourcekit/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->access$1600(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    goto :goto_0
.end method
