.class final Lcom/my/target/core/controllers/a$4;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Lcom/my/target/core/ui/b$a;


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
    .line 150
    iput-object p1, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 154
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->j(Lcom/my/target/core/controllers/a;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0, v3}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;I)I

    .line 157
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    iget-object v1, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    iget-object v2, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    .line 159
    invoke-static {v2}, Lcom/my/target/core/controllers/a;->j(Lcom/my/target/core/controllers/a;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 158
    invoke-static {v1, v2}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/controllers/a;Landroid/content/Context;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Lcom/my/target/core/ui/views/VideoTextureView;)Lcom/my/target/core/ui/views/VideoTextureView;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    iget-object v1, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->j(Lcom/my/target/core/controllers/a;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->n(Lcom/my/target/core/controllers/a;)Lcom/my/target/nativeads/models/VideoData;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/nativeads/models/VideoData;Z)V

    .line 162
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->h()V

    .line 163
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/controllers/a$a;->e()V

    .line 168
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->k(Lcom/my/target/core/controllers/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->c(Lcom/my/target/core/controllers/a;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->o(Lcom/my/target/core/controllers/a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->o(Lcom/my/target/core/controllers/a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 183
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a$4;->a()V

    .line 174
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->g(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->f()V

    .line 175
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->c(Lcom/my/target/core/controllers/a;)V

    .line 189
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;I)I

    .line 190
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/my/target/core/controllers/a$4;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/controllers/a$a;->d()V

    .line 194
    :cond_0
    return-void
.end method
