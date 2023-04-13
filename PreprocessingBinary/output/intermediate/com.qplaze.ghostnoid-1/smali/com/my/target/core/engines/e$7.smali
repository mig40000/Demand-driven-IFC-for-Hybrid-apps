.class final Lcom/my/target/core/engines/e$7;
.super Ljava/lang/Object;
.source "FSPromoAdEngine.java"

# interfaces
.implements Lcom/my/target/core/ui/views/VideoTextureView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/e;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/e;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setTimeChanged(FF)V

    .line 208
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->g(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    iget-object v1, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;Ljava/util/ArrayList;)V

    .line 211
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->b(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/f;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/i;

    move-result-object v1

    const-string v2, "playbackStarted"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/f;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0, v3}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;F)V

    .line 213
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->j(Lcom/my/target/core/engines/e;)Z

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->h(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->i(Lcom/my/target/core/engines/e;)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->f()V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->k(Lcom/my/target/core/engines/e;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    .line 226
    cmpl-float v0, p1, v3

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0, p1}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;F)V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->k(Lcom/my/target/core/engines/e;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->l(Lcom/my/target/core/engines/e;)Z

    .line 231
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->m(Lcom/my/target/core/engines/e;)V

    .line 232
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->b(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/f;->e()V

    .line 233
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->e()V

    .line 236
    :cond_3
    return-void

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->k(Lcom/my/target/core/engines/e;)F

    move-result p1

    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->k(Lcom/my/target/core/engines/e;)F

    move-result p2

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video playing error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->m(Lcom/my/target/core/engines/e;)V

    .line 243
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->f()V

    .line 244
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/my/target/core/engines/e$7;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b(Z)V

    .line 180
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method
