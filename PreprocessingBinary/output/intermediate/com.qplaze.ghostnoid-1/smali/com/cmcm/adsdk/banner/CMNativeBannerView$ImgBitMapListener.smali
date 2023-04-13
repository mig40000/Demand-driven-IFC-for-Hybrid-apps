.class Lcom/cmcm/adsdk/banner/CMNativeBannerView$ImgBitMapListener;
.super Ljava/lang/Object;
.source "CMNativeBannerView.java"

# interfaces
.implements Lcom/cmcm/adsdk/BitmapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/banner/CMNativeBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImgBitMapListener"
.end annotation


# instance fields
.field private mImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;


# direct methods
.method public constructor <init>(Lcom/cmcm/adsdk/banner/CMNativeBannerView;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "imagView"    # Landroid/widget/ImageView;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$ImgBitMapListener;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$ImgBitMapListener;->mImg:Landroid/widget/ImageView;

    .line 203
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v0, "CMNativeBannerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMNative nativeBanner icon load error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onSuccessed(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 211
    const-string v0, "CMNativeBannerView"

    const-string v1, "CMNative nativeBanner icon load success "

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$ImgBitMapListener;->mImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$ImgBitMapListener;->mImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    :cond_0
    return-void
.end method
