.class public abstract Lcom/my/target/core/ui/views/fspromo/FSPromoView;
.super Landroid/widget/RelativeLayout;
.source "FSPromoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v0, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b:Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {v0, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/my/target/core/resources/a;->c(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c:Landroid/graphics/Bitmap;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Lcom/my/target/core/ui/views/controls/IconButton;
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a:I

    .line 101
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()Z
.end method

.method public abstract h()V
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1069
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1072
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1074
    const/4 v0, 0x2

    .line 1080
    :goto_0
    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a:I

    if-eq v0, v1, :cond_0

    .line 1082
    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b(I)V

    .line 95
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 96
    return-void

    .line 1077
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBanner(Lcom/my/target/core/models/banners/e;)V
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 29
    :cond_0
    return-void
.end method

.method public abstract setCloseListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnCTAClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnVideoClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V
.end method

.method public abstract setTimeChanged(FF)V
.end method

.method public abstract setVideoListener(Lcom/my/target/core/ui/views/VideoTextureView$a;)V
.end method
