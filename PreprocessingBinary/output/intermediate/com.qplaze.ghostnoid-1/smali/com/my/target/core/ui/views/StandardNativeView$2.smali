.class final Lcom/my/target/core/ui/views/StandardNativeView$2;
.super Ljava/lang/Object;
.source "StandardNativeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/StandardNativeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/StandardNativeView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/StandardNativeView;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->e(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/ui/views/StandardNativeView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    .line 82
    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->e(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/ui/views/StandardNativeView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/ui/views/StandardNativeView$a;->g()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 88
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->f(Lcom/my/target/core/ui/views/StandardNativeView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/core/ui/views/StandardNativeView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method
