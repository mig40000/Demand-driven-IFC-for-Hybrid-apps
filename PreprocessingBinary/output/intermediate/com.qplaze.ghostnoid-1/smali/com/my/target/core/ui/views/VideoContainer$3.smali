.class final Lcom/my/target/core/ui/views/VideoContainer$3;
.super Ljava/lang/Object;
.source "VideoContainer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 122
    iput-object p1, p0, Lcom/my/target/core/ui/views/VideoContainer$3;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 126
    const-string v0, ""

    .line 128
    if-ne p2, v4, :cond_3

    .line 130
    const-string v0, "Unknown error: "

    .line 136
    :cond_0
    :goto_0
    const-string v1, "no extra message"

    .line 137
    const/16 v2, -0x3ec

    if-ne p3, v2, :cond_4

    .line 139
    const-string v1, "IO Error"

    .line 151
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoContainer$3;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v2}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoContainer$3;->a:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-static {v2}, Lcom/my/target/core/ui/views/VideoContainer;->d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/VideoContainer$a;->a(Ljava/lang/String;)V

    .line 155
    :cond_2
    return v4

    .line 131
    :cond_3
    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    .line 133
    const-string v0, "Server died: "

    goto :goto_0

    .line 140
    :cond_4
    const/16 v2, -0x3ef

    if-ne p3, v2, :cond_5

    .line 142
    const-string v1, "Bitstream is not conforming to the related coding standard or file spec."

    goto :goto_1

    .line 143
    :cond_5
    const/16 v2, -0x3f2

    if-ne p3, v2, :cond_6

    .line 145
    const-string v1, "Bitstream is conforming to the related coding standard or file spec, but the media framework does not support the feature."

    goto :goto_1

    .line 146
    :cond_6
    const/16 v2, -0x6e

    if-ne p3, v2, :cond_1

    .line 148
    const-string v1, "Time out error"

    goto :goto_1
.end method
