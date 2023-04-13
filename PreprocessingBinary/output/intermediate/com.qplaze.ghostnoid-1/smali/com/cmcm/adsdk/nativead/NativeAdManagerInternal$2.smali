.class Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$2;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

.field final synthetic val$nativeAd:Lcom/cmcm/baseapi/ads/INativeAd;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$2;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    iput-object p2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$2;->val$nativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$2;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->access$100(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$2;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->access$100(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$2;->val$nativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0, v1}, Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;->adClicked(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 365
    :cond_0
    return-void
.end method
