.class final Lcom/my/target/core/engines/h$2;
.super Ljava/lang/Object;
.source "StandardAdNativeEngine.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/h;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/h;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->c(Lcom/my/target/core/engines/h;)Z

    .line 84
    iget-object v0, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/engines/h;J)J

    .line 86
    iget-object v1, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    iget-object v0, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->e(Lcom/my/target/core/engines/h;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {v2}, Lcom/my/target/core/engines/h;->d(Lcom/my/target/core/engines/h;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/g;

    invoke-static {v1, v0}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/engines/h;Lcom/my/target/core/models/banners/g;)Lcom/my/target/core/models/banners/g;

    .line 88
    iget-object v0, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->f(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    iget-object v1, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {v1}, Lcom/my/target/core/engines/h;->f(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/facades/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/engines/h;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->f(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {v1}, Lcom/my/target/core/engines/h;->g(Lcom/my/target/core/engines/h;)Lcom/my/target/core/models/banners/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->b(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    iget-object v1, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {v1}, Lcom/my/target/core/engines/h;->g(Lcom/my/target/core/engines/h;)Lcom/my/target/core/models/banners/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->f()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/my/target/core/engines/h;->b(Lcom/my/target/core/engines/h;J)J

    .line 95
    iget-object v0, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->h(Lcom/my/target/core/engines/h;)V

    .line 96
    iget-object v0, p0, Lcom/my/target/core/engines/h$2;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->i(Lcom/my/target/core/engines/h;)V

    .line 98
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
