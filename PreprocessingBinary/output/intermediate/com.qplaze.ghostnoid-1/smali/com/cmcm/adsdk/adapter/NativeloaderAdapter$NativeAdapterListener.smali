.class public interface abstract Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;
.super Ljava/lang/Object;
.source "NativeloaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdapterListener"
.end annotation


# virtual methods
.method public abstract onNativeAdFailed(Ljava/lang/String;)V
.end method

.method public abstract onNativeAdLoaded(Lcom/cmcm/baseapi/ads/INativeAd;)V
.end method

.method public abstract onNativeAdLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;)V"
        }
    .end annotation
.end method
