.class public final Lcom/my/target/core/engines/d;
.super Lcom/my/target/core/engines/a;
.source "FSImageAdEngine.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Lcom/my/target/core/ui/views/FSImageView;

.field private d:Lcom/my/target/core/engines/b$a;

.field private e:Lcom/my/target/core/facades/e;


# direct methods
.method public constructor <init>(Lcom/my/target/core/facades/e;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/facades/e;

    .line 1031
    new-instance v0, Lcom/my/target/core/ui/views/FSImageView;

    iget-object v1, p0, Lcom/my/target/core/engines/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/FSImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/ui/views/FSImageView;

    .line 1032
    iget-object v0, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/ui/views/FSImageView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/FSImageView;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    iget-object v0, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/ui/views/FSImageView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/FSImageView;->a()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/facades/e;

    invoke-virtual {v0}, Lcom/my/target/core/facades/e;->b()Lcom/my/target/core/models/banners/d;

    move-result-object v3

    .line 1037
    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->o()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1038
    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->o()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 1040
    :goto_0
    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1041
    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1043
    :goto_1
    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1044
    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1046
    :cond_0
    iget-object v4, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/ui/views/FSImageView;

    invoke-virtual {v4, v1, v0, v2}, Lcom/my/target/core/ui/views/FSImageView;->setImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1047
    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/ui/views/FSImageView;

    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FSImageView;->setAgeRestrictions(Ljava/lang/String;)V

    .line 1050
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1051
    iget-object v1, p0, Lcom/my/target/core/engines/d;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/ui/views/FSImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/facades/e;

    invoke-virtual {v0}, Lcom/my/target/core/facades/e;->c()V

    .line 27
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/my/target/core/engines/d;->d:Lcom/my/target/core/engines/b$a;

    .line 59
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/my/target/core/engines/a;->e()V

    .line 82
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/facades/e;

    invoke-virtual {v0}, Lcom/my/target/core/facades/e;->e()V

    .line 83
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    instance-of v0, p1, Lcom/my/target/core/ui/views/controls/IconButton;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/my/target/core/engines/d;->d:Lcom/my/target/core/engines/b$a;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/my/target/core/engines/d;->d:Lcom/my/target/core/engines/b$a;

    invoke-interface {v0}, Lcom/my/target/core/engines/b$a;->onCloseClick()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/facades/e;

    invoke-virtual {v0}, Lcom/my/target/core/facades/e;->d()V

    .line 73
    iget-object v0, p0, Lcom/my/target/core/engines/d;->d:Lcom/my/target/core/engines/b$a;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/my/target/core/engines/d;->d:Lcom/my/target/core/engines/b$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/my/target/core/engines/b$a;->onClick(Z)V

    goto :goto_0
.end method
