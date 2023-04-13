.class Lcom/cmcm/picks/vastvideo/VastView$1;
.super Ljava/lang/Object;
.source "VastView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/VastView;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cmcm/picks/vastvideo/VastView;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;I)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    iput p2, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x1

    .line 189
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;I)I

    .line 190
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->b(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$f;

    move-result-object v0

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->b:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 191
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->c(Lcom/cmcm/picks/vastvideo/VastView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 193
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->b(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$f;

    move-result-object v0

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->b:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 197
    :goto_0
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->a:I

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 212
    :goto_1
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->d(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 201
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    iput v3, v0, Lcom/cmcm/picks/vastvideo/VastView;->mCurrentState:I

    .line 202
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->d(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->d(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_2

    .line 204
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->d(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v1

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v2}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->b(II)V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v1

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v2}, Lcom/cmcm/picks/vastvideo/VastView;->d(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->d(II)V

    .line 209
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->f(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cmcm/picks/vastvideo/VastModel;->a(Z)V

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->g(Lcom/cmcm/picks/vastvideo/VastView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$1;->b:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
