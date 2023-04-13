.class final Lcom/my/target/core/ui/views/VideoContainer$2;
.super Ljava/lang/Object;
.source "VideoContainer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 109
    iput-object p1, p0, Lcom/my/target/core/ui/views/VideoContainer$2;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer$2;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->m(Lcom/my/target/core/ui/views/VideoContainer;)V

    .line 114
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoContainer;->a(I)F

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer$2;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer$2;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/my/target/core/ui/views/VideoContainer$a;->a(FF)V

    .line 119
    :cond_0
    return-void
.end method
