.class Lcom/cmcm/picks/vastvideo/VastView$e;
.super Ljava/lang/Object;
.source "VastView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/vastvideo/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/VastView;


# direct methods
.method private constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastView$e;-><init>(Lcom/cmcm/picks/vastvideo/VastView;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0, p1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 493
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->b(Lcom/cmcm/picks/vastvideo/VastView;Z)Z

    .line 494
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->h(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->h(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/vastvideo/c;->a(Landroid/graphics/SurfaceTexture;)V

    .line 496
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->i(Lcom/cmcm/picks/vastvideo/VastView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->d(Lcom/cmcm/picks/vastvideo/VastView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->c(Lcom/cmcm/picks/vastvideo/VastView;I)V

    .line 502
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$e;->a:Lcom/cmcm/picks/vastvideo/VastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 507
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 518
    return-void
.end method
