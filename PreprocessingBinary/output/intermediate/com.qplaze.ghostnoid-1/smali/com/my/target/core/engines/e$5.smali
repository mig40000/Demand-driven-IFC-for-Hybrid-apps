.class final Lcom/my/target/core/engines/e$5;
.super Ljava/lang/Object;
.source "FSPromoAdEngine.java"

# interfaces
.implements Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;


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
    .line 111
    iput-object p1, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    iget-object v1, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    iget-object v1, v1, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;Landroid/content/Context;)V

    .line 116
    iget-object v0, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c()V

    .line 117
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->b(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/f;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/i;

    move-result-object v1

    const-string v2, "playbackPaused"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/f;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->h()V

    .line 124
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->b(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/f;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-static {v1}, Lcom/my/target/core/engines/e;->f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/i;

    move-result-object v1

    const-string v2, "playbackResumed"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/f;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    iget-object v1, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    iget-object v1, v1, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;Landroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->d()V

    .line 132
    iget-object v0, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-static {v0}, Lcom/my/target/core/engines/e;->e(Lcom/my/target/core/engines/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-virtual {v0}, Lcom/my/target/core/engines/e;->h()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/e$5;->a:Lcom/my/target/core/engines/e;

    invoke-virtual {v0}, Lcom/my/target/core/engines/e;->i()V

    goto :goto_0
.end method
