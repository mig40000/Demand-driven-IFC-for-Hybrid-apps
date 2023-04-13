.class final Lcom/my/target/core/ui/views/VideoTextureView$2;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/VideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/my/target/core/ui/views/VideoTextureView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/VideoTextureView;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    iput-object p2, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: Surface available from callback, playing  force state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    .line 249
    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoTextureView;->i(Lcom/my/target/core/ui/views/VideoTextureView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->a:Landroid/net/Uri;

    .line 251
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->i(Lcom/my/target/core/ui/views/VideoTextureView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->l(Lcom/my/target/core/ui/views/VideoTextureView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->a:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;Landroid/view/Surface;Landroid/net/Uri;)V

    .line 282
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->j(Lcom/my/target/core/ui/views/VideoTextureView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->h()V

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 262
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->i(Lcom/my/target/core/ui/views/VideoTextureView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->k(Lcom/my/target/core/ui/views/VideoTextureView;)V

    .line 265
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->e()V

    goto :goto_1

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->f()V

    .line 276
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->d(Lcom/my/target/core/ui/views/VideoTextureView;)Lcom/my/target/core/ui/views/VideoTextureView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->d(Lcom/my/target/core/ui/views/VideoTextureView;)Lcom/my/target/core/ui/views/VideoTextureView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/ui/views/VideoTextureView$a;->g()V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: Surface destroyed, state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/VideoTextureView;->i(Lcom/my/target/core/ui/views/VideoTextureView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 298
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->i(Lcom/my/target/core/ui/views/VideoTextureView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 317
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->n(Lcom/my/target/core/ui/views/VideoTextureView;)V

    .line 319
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "Release MediaPlayer"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 323
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->m(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;I)I

    .line 331
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 301
    :pswitch_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 302
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;I)I

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 310
    const-string v0, "Release MediaPlayer"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 312
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->m(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/VideoTextureView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/ui/views/VideoTextureView;I)I

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 338
    return-void
.end method
