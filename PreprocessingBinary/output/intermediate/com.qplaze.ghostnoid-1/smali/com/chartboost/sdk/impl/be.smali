.class public Lcom/chartboost/sdk/impl/be;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TextView;

.field private b:Lcom/chartboost/sdk/Libraries/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/i;

    .line 19
    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/widget/TextView;

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->isPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 79
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/i;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/i;

    if-ne v0, p1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/i;

    .line 34
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/i;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/be;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/be;->a(Landroid/graphics/Canvas;)V

    .line 65
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "adImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/i;

    .line 42
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/be;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method
