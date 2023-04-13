.class Lcom/cmcm/picks/vastvideo/e$2;
.super Ljava/lang/Object;
.source "VastSmallView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 110
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/e$2;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 113
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e$2;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/e;->a(Lcom/cmcm/picks/vastvideo/e;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e$2;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/e;->a(Lcom/cmcm/picks/vastvideo/e;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e$2;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/e;->d(Lcom/cmcm/picks/vastvideo/e;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->a(ZIZ)V

    .line 115
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e$2;->a:Lcom/cmcm/picks/vastvideo/e;

    invoke-virtual {v0, v2, v2}, Lcom/cmcm/picks/vastvideo/e;->a(IZ)V

    .line 117
    :cond_0
    return-void
.end method
