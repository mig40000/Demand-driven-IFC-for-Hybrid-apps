.class public Lcom/my/target/nativeads/NativeAd;
.super Lcom/my/target/core/facades/b;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/nativeads/NativeAd$NativeAdListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/facades/b",
        "<",
        "Lcom/my/target/nativeads/banners/NativePromoBanner;",
        ">;"
    }
.end annotation


# static fields
.field private static final supportedFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/my/target/nativeads/NativeAd$1;

    invoke-direct {v0}, Lcom/my/target/nativeads/NativeAd$1;-><init>()V

    sput-object v0, Lcom/my/target/nativeads/NativeAd;->supportedFormats:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/nativeads/NativeAd;-><init>(ILandroid/content/Context;Lcom/my/target/ads/CustomParams;)V

    .line 26
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/my/target/ads/CustomParams;)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/my/target/nativeads/NativeAd;->supportedFormats:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/my/target/core/facades/b;-><init>(ILjava/util/List;Landroid/content/Context;Lcom/my/target/ads/CustomParams;)V

    .line 31
    const-string v0, "NativeAd created. Version: 4.5.10"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public loadIconToView(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAd;->banner:Lcom/my/target/core/models/banners/f;

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAd;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/my/target/nativeads/NativeAd;->loadImageDataToView(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public loadImageToView(Lcom/my/target/nativeads/views/MediaAdView;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAd;->banner:Lcom/my/target/core/models/banners/f;

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAd;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/my/target/nativeads/NativeAd;->loadImageDataToView(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0
.end method
