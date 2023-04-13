.class Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;
.super Ljava/lang/Object;
.source "NativeAdManagerInternalEx.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageINativeAd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdLevelIndex:I

.field private mHasImageCached:Z

.field private mNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;


# direct methods
.method public constructor <init>(Lcom/cmcm/baseapi/ads/INativeAd;I)V
    .locals 1
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;
    .param p2, "index"    # I

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->mHasImageCached:Z

    .line 169
    iput p2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->mAdLevelIndex:I

    .line 170
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->mNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    .line 171
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;)I
    .locals 2
    .param p1, "another"    # Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    .prologue
    .line 192
    iget v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->mAdLevelIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->getAdLevelIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->compareTo(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;)I

    move-result v0

    return v0
.end method

.method public getAdLevelIndex()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->mAdLevelIndex:I

    return v0
.end method

.method public getAdObject()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->mNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    return-object v0
.end method

.method public hasCacheImage()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->mHasImageCached:Z

    return v0
.end method

.method public setHasCacheImage()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx$ImageINativeAd;->mHasImageCached:Z

    .line 179
    return-void
.end method
