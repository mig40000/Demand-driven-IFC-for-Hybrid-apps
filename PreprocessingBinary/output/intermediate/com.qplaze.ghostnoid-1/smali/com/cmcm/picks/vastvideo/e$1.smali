.class Lcom/cmcm/picks/vastvideo/e$1;
.super Ljava/lang/Object;
.source "VastSmallView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/e;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/vastvideo/e;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/e$1;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e$1;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/e;->b(Lcom/cmcm/picks/vastvideo/e;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e$1;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/e;->a(Lcom/cmcm/picks/vastvideo/e;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->seekTo(I)V

    .line 104
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e$1;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/e;->b(Lcom/cmcm/picks/vastvideo/e;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->start()V

    .line 105
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e$1;->a:Lcom/cmcm/picks/vastvideo/e;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e$1;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/e;->b(Lcom/cmcm/picks/vastvideo/e;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/c;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/e;->a(Lcom/cmcm/picks/vastvideo/e;I)I

    .line 106
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e$1;->a:Lcom/cmcm/picks/vastvideo/e;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e$1;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/e;->b(Lcom/cmcm/picks/vastvideo/e;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/c;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/e;->b(Lcom/cmcm/picks/vastvideo/e;I)I

    .line 107
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e$1;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/e;->c(Lcom/cmcm/picks/vastvideo/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e$1;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method
