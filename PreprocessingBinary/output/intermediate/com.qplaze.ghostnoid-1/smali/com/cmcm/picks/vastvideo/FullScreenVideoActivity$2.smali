.class Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$2;
.super Ljava/lang/Object;
.source "FullScreenVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 156
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$2;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 159
    invoke-static {}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a()Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$2;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->a(ZIZ)V

    .line 160
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$2;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->finish()V

    .line 161
    return-void
.end method
