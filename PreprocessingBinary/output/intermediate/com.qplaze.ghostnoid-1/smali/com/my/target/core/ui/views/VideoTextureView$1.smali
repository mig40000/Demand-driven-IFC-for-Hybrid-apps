.class final Lcom/my/target/core/ui/views/VideoTextureView$1;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/VideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/VideoTextureView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/VideoTextureView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/16 v2, 0x32

    .line 74
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;I)I

    .line 77
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->b(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/graphics/Bitmap;

    .line 79
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->c(Lcom/my/target/core/ui/views/VideoTextureView;)I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 81
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->d(Lcom/my/target/core/ui/views/VideoTextureView;)Lcom/my/target/core/ui/views/VideoTextureView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "VideoTextureView: lag common"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->e(Lcom/my/target/core/ui/views/VideoTextureView;)V

    .line 110
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Lcom/my/target/core/ui/views/VideoTextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->f(Lcom/my/target/core/ui/views/VideoTextureView;)I

    move-result v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->g(Lcom/my/target/core/ui/views/VideoTextureView;)I

    .line 89
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/VideoTextureView;->b(Lcom/my/target/core/ui/views/VideoTextureView;I)I

    .line 90
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoTextureView;->d(Lcom/my/target/core/ui/views/VideoTextureView;)Lcom/my/target/core/ui/views/VideoTextureView$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoTextureView;->d(Lcom/my/target/core/ui/views/VideoTextureView;)Lcom/my/target/core/ui/views/VideoTextureView$a;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v2}, Lcom/my/target/core/ui/views/VideoTextureView;->f(Lcom/my/target/core/ui/views/VideoTextureView;)I

    move-result v2

    invoke-static {v2}, Lcom/my/target/core/ui/views/VideoTextureView;->a(I)F

    move-result v2

    .line 93
    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(I)F

    move-result v0

    .line 92
    invoke-interface {v1, v2, v0}, Lcom/my/target/core/ui/views/VideoTextureView$a;->a(FF)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->h(Lcom/my/target/core/ui/views/VideoTextureView;)I

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->i(Lcom/my/target/core/ui/views/VideoTextureView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->c(Lcom/my/target/core/ui/views/VideoTextureView;)I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 102
    const-string v0, "VideoTextureView: lag on preparing"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->e(Lcom/my/target/core/ui/views/VideoTextureView;)V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->h(Lcom/my/target/core/ui/views/VideoTextureView;)I

    goto :goto_0
.end method
