.class final Lcom/my/target/core/ui/views/VideoDialogView$2;
.super Ljava/lang/Object;
.source "VideoDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/VideoDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/VideoDialogView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/VideoDialogView;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/my/target/core/ui/views/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/VideoDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/VideoDialogView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/VideoDialogView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoDialogView;->b(Lcom/my/target/core/ui/views/VideoDialogView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoDialogView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 108
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/VideoDialogView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoDialogView;->a(Lcom/my/target/core/ui/views/VideoDialogView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoDialogView;->c()V

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/VideoDialogView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoDialogView;->a(Lcom/my/target/core/ui/views/VideoDialogView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/VideoDialogView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoDialogView;->a(Lcom/my/target/core/ui/views/VideoDialogView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoDialogView;->g()V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/VideoDialogView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/VideoDialogView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoDialogView;->b(Lcom/my/target/core/ui/views/VideoDialogView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/core/ui/views/VideoDialogView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
