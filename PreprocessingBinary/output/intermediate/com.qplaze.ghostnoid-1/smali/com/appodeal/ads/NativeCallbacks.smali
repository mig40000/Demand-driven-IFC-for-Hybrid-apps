.class public interface abstract Lcom/appodeal/ads/NativeCallbacks;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onNativeClicked(Lcom/appodeal/ads/NativeAd;)V
.end method

.method public abstract onNativeFailedToLoad()V
.end method

.method public abstract onNativeLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/appodeal/ads/NativeAd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNativeShown(Lcom/appodeal/ads/NativeAd;)V
.end method
