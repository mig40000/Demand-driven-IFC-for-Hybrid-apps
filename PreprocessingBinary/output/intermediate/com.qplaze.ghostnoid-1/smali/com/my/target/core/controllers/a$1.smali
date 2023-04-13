.class final Lcom/my/target/core/controllers/a$1;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/controllers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/controllers/a;


# direct methods
.method constructor <init>(Lcom/my/target/core/controllers/a;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->e()V

    .line 52
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/controllers/a$a;->g()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Z)Z

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->h()V

    .line 60
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/controllers/a$a;->f()V

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Z)Z

    goto :goto_0
.end method
