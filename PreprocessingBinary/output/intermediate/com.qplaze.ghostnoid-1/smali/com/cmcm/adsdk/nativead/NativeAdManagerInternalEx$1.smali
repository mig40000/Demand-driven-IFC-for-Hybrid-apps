.class Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$1;
.super Ljava/lang/Object;
.source "NativeAdManagerInternalEx.java"

# interfaces
.implements Lcom/cmcm/adsdk/BitmapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->preloadNativeAdImage(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;

.field final synthetic val$imageINativeAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;

    iput-object p2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$1;->val$imageINativeAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload image ad title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$1;->val$imageINativeAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    invoke-virtual {v2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v2

    invoke-interface {v2}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onSuccessed(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$1;->val$imageINativeAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->setHasCacheImage()V

    .line 155
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload image ad title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$1;->val$imageINativeAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    invoke-virtual {v2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v2

    invoke-interface {v2}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method
