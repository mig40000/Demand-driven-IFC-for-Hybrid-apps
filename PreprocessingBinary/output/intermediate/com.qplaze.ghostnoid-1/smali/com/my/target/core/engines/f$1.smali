.class final Lcom/my/target/core/engines/f$1;
.super Lcom/my/target/core/ui/views/VideoContainer$a;
.source "InstreamAdEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/f;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/f;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoContainer$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0, v3}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;Z)Z

    .line 366
    const-string v0, "Video lagging"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    const-string v1, "Video ad error: cannot play video"

    iget-object v2, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    .line 370
    invoke-static {v2}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onError(Ljava/lang/String;Lcom/my/target/ads/MyTargetVideoView;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    const-string v1, "timeout"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/my/target/core/engines/f;->a(ZLjava/lang/String;Z)V

    .line 373
    return-void
.end method

.method public final a(F)V
    .locals 3

    .prologue
    .line 345
    const-string v0, "Video file started"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->e(Lcom/my/target/core/engines/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->g(Lcom/my/target/core/engines/f;)Lcom/my/target/core/facades/d;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v1}, Lcom/my/target/core/engines/f;->f(Lcom/my/target/core/engines/f;)Lcom/my/target/core/models/sections/h;

    move-result-object v1

    const-string v2, "impression"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/sections/f;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->h(Lcom/my/target/core/engines/f;)Z

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->g(Lcom/my/target/core/engines/f;)Lcom/my/target/core/facades/d;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v1}, Lcom/my/target/core/engines/f;->i(Lcom/my/target/core/engines/f;)Lcom/my/target/core/models/banners/i;

    move-result-object v1

    const-string v2, "playbackStarted"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->c(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    move-result-object v0

    iget v0, v0, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;->duration:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->c(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    move-result-object v0

    iput p1, v0, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;->duration:F

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v1}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v2}, Lcom/my/target/core/engines/f;->c(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onStartBanner(Lcom/my/target/ads/MyTargetVideoView;Lcom/my/target/ads/MyTargetVideoView$BannerInfo;)V

    .line 360
    :cond_2
    return-void
.end method

.method public final a(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->b(Lcom/my/target/core/engines/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v1}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v2}, Lcom/my/target/core/engines/f;->c(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onResumptionBanner(Lcom/my/target/ads/MyTargetVideoView;Lcom/my/target/ads/MyTargetVideoView$BannerInfo;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0, v3}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;Z)Z

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->c(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    move-result-object v0

    iget p2, v0, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;->duration:F

    .line 328
    cmpg-float v0, p1, p2

    if-gtz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0, p1}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;F)V

    .line 331
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    sub-float v1, p2, p1

    iget-object v2, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    .line 332
    invoke-static {v2}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v2

    .line 331
    invoke-interface {v0, v1, p2, v2}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onTimeLeftChange(FFLcom/my/target/ads/MyTargetVideoView;)V

    .line 333
    cmpl-float v0, p1, p2

    if-nez v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->d(Lcom/my/target/core/engines/f;)I

    .line 336
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    const-string v1, "ok"

    invoke-virtual {v0, v3, v1, v3}, Lcom/my/target/core/engines/f;->a(ZLjava/lang/String;Z)V

    .line 340
    :cond_2
    return-void

    :cond_3
    move p1, p2

    .line 338
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0, v3}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;Z)Z

    .line 379
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->g(Lcom/my/target/core/engines/f;)Lcom/my/target/core/facades/d;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v1}, Lcom/my/target/core/engines/f;->f(Lcom/my/target/core/engines/f;)Lcom/my/target/core/models/sections/h;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/sections/f;Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video playing error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video ad error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    .line 384
    invoke-static {v2}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onError(Ljava/lang/String;Lcom/my/target/ads/MyTargetVideoView;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    const-string v1, "error"

    invoke-virtual {v0, v3, v1, v3}, Lcom/my/target/core/engines/f;->a(ZLjava/lang/String;Z)V

    .line 387
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->b(Lcom/my/target/core/engines/f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    .line 397
    invoke-static {v1}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    invoke-static {v2}, Lcom/my/target/core/engines/f;->c(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onSuspenseBanner(Lcom/my/target/ads/MyTargetVideoView;Lcom/my/target/ads/MyTargetVideoView$BannerInfo;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/engines/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;Z)Z

    .line 401
    :cond_1
    return-void
.end method
