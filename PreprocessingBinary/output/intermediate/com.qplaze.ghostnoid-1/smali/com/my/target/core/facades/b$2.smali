.class final Lcom/my/target/core/facades/b$2;
.super Ljava/lang/Object;
.source "AbstractNativeAd.java"

# interfaces
.implements Lcom/my/target/core/utils/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/facades/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/facades/b;


# direct methods
.method constructor <init>(Lcom/my/target/core/facades/b;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 390
    const/4 v0, 0x0

    .line 391
    iget-object v1, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-static {v1}, Lcom/my/target/core/facades/b;->access$000(Lcom/my/target/core/facades/b;)Lcom/my/target/core/controllers/a;

    move-result-object v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 392
    :goto_0
    iget-object v4, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-static {v4}, Lcom/my/target/core/facades/b;->access$100(Lcom/my/target/core/facades/b;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$100(Lcom/my/target/core/facades/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 393
    :cond_0
    iget-object v4, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-static {v4}, Lcom/my/target/core/facades/b;->access$200(Lcom/my/target/core/facades/b;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-nez v0, :cond_6

    .line 395
    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$000(Lcom/my/target/core/facades/b;)Lcom/my/target/core/controllers/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$000(Lcom/my/target/core/facades/b;)Lcom/my/target/core/controllers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->b()V

    :cond_3
    move v3, v2

    .line 426
    :cond_4
    :goto_1
    return v3

    :cond_5
    move v1, v3

    .line 391
    goto :goto_0

    .line 402
    :cond_6
    iget-object v4, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    iget-object v4, v4, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    iget-object v4, v4, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 405
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_7

    .line 407
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 410
    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 411
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 413
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v4, v5

    int-to-double v4, v4

    .line 414
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v0, v6

    int-to-double v6, v0

    .line 416
    const-wide v8, 0x3fe3333340000000L    # 0.6000000238418579

    mul-double/2addr v6, v8

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_9

    .line 418
    iget-object v0, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-virtual {v0}, Lcom/my/target/core/facades/b;->handleShow()V

    .line 419
    if-eqz v1, :cond_8

    .line 420
    iget-object v0, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$000(Lcom/my/target/core/facades/b;)Lcom/my/target/core/controllers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->a()V

    goto :goto_1

    :cond_8
    move v3, v2

    .line 421
    goto :goto_1

    .line 423
    :cond_9
    if-eqz v1, :cond_4

    .line 424
    iget-object v0, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$000(Lcom/my/target/core/facades/b;)Lcom/my/target/core/controllers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->d()V

    goto :goto_1
.end method
