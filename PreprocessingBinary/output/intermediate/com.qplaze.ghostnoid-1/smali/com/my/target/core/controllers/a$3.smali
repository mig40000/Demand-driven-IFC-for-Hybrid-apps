.class final Lcom/my/target/core/controllers/a$3;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 99
    iput-object p1, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 103
    const-string v0, "Dismiss dialog"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->g(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    iget-object v1, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->g(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/ui/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Landroid/content/Context;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Z

    .line 111
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->i(Lcom/my/target/core/controllers/a;)V

    .line 113
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 116
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->j(Lcom/my/target/core/controllers/a;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->j(Lcom/my/target/core/controllers/a;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->k(Lcom/my/target/core/controllers/a;)I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 127
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->f()V

    .line 128
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->l(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/banners/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0, v5}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;Z)Z

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->setWaitingState()V

    .line 142
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/controllers/a$a;->c()V

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->m(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/b;

    .line 147
    return-void

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->k(Lcom/my/target/core/controllers/a;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 133
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0, v3}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;Z)Z

    .line 134
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->e()V

    .line 135
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->d()V

    goto :goto_0

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/my/target/core/controllers/a$3;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0, v3}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;Z)Z

    goto :goto_0
.end method
