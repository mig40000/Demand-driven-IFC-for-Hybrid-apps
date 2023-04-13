.class final Lcom/my/target/core/ui/views/VideoContainer$1;
.super Ljava/lang/Object;
.source "VideoContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/VideoContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/VideoContainer;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/VideoContainer;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 50
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->a(Lcom/my/target/core/ui/views/VideoContainer;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->a(Lcom/my/target/core/ui/views/VideoContainer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->b(Lcom/my/target/core/ui/views/VideoContainer;)I

    .line 53
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->c(Lcom/my/target/core/ui/views/VideoContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoContainer;->a(Lcom/my/target/core/ui/views/VideoContainer;)Landroid/widget/VideoView;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    .line 56
    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoContainer;->a(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoContainer$a;->a(F)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->e(Lcom/my/target/core/ui/views/VideoContainer;)Z

    .line 59
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    .line 62
    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->a(Lcom/my/target/core/ui/views/VideoContainer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->a(I)F

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/my/target/core/ui/views/VideoContainer$a;->a(FF)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->f(Lcom/my/target/core/ui/views/VideoContainer;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v2}, Lcom/my/target/core/ui/views/VideoContainer;->g(Lcom/my/target/core/ui/views/VideoContainer;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v4}, Lcom/my/target/core/ui/views/VideoContainer;->h(Lcom/my/target/core/ui/views/VideoContainer;)J

    move-result-wide v4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer$a;->a()V

    .line 104
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoContainer;->h(Lcom/my/target/core/ui/views/VideoContainer;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/my/target/core/ui/views/VideoContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->i(Lcom/my/target/core/ui/views/VideoContainer;)I

    move-result v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoContainer;->a(Lcom/my/target/core/ui/views/VideoContainer;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 76
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->j(Lcom/my/target/core/ui/views/VideoContainer;)I

    .line 77
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoContainer;->a(Lcom/my/target/core/ui/views/VideoContainer;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/VideoContainer;->a(Lcom/my/target/core/ui/views/VideoContainer;I)I

    .line 78
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->a(Lcom/my/target/core/ui/views/VideoContainer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v2}, Lcom/my/target/core/ui/views/VideoContainer;->i(Lcom/my/target/core/ui/views/VideoContainer;)I

    move-result v2

    invoke-static {v2}, Lcom/my/target/core/ui/views/VideoContainer;->a(I)F

    move-result v2

    .line 81
    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->a(I)F

    move-result v0

    .line 80
    invoke-virtual {v1, v2, v0}, Lcom/my/target/core/ui/views/VideoContainer$a;->a(FF)V

    goto :goto_0

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer$a;->b()V

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->k(Lcom/my/target/core/ui/views/VideoContainer;)I

    goto :goto_0

    .line 90
    :cond_6
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->l(Lcom/my/target/core/ui/views/VideoContainer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->f(Lcom/my/target/core/ui/views/VideoContainer;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v2}, Lcom/my/target/core/ui/views/VideoContainer;->g(Lcom/my/target/core/ui/views/VideoContainer;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v4}, Lcom/my/target/core/ui/views/VideoContainer;->h(Lcom/my/target/core/ui/views/VideoContainer;)J

    move-result-wide v4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    .line 94
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer$a;->a()V

    goto/16 :goto_0

    .line 100
    :cond_7
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$1;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->k(Lcom/my/target/core/ui/views/VideoContainer;)I

    goto/16 :goto_0
.end method
