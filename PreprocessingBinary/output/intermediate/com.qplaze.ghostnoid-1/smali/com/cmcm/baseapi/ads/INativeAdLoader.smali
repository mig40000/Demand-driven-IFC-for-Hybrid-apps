.class public interface abstract Lcom/cmcm/baseapi/ads/INativeAdLoader;
.super Ljava/lang/Object;
.source "INativeAdLoader.java"


# virtual methods
.method public abstract getAd()Lcom/cmcm/baseapi/ads/INativeAd;
.end method

.method public abstract getAdList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadAd()V
.end method

.method public abstract setAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V
.end method
