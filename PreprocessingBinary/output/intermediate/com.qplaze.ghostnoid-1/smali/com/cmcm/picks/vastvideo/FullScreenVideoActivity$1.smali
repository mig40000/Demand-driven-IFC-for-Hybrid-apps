.class Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;
.super Ljava/lang/Object;
.source "FullScreenVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a()Lcom/cmcm/picks/vastvideo/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->seekTo(I)V

    .line 149
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->start()V

    .line 150
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/c;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;I)I

    .line 151
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->c(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 152
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->d(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method
