.class Lcom/cmcm/picks/vastvideo/VastView$3;
.super Ljava/lang/Object;
.source "VastView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/VastView;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/VastView;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView$3;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$3;->a:Lcom/cmcm/picks/vastvideo/VastView;

    iget-boolean v0, v0, Lcom/cmcm/picks/vastvideo/VastView;->a:Z

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$3;->a:Lcom/cmcm/picks/vastvideo/VastView;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$3;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->b(Lcom/cmcm/picks/vastvideo/VastView;I)I

    .line 228
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$3;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0, v2}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;Z)V

    .line 229
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$3;->a:Lcom/cmcm/picks/vastvideo/VastView;

    iput-boolean v2, v0, Lcom/cmcm/picks/vastvideo/VastView;->a:Z

    goto :goto_0
.end method
