.class Lcom/appodeal/ads/native_ad/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/e;->a(Landroid/app/Activity;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cmcm/adsdk/nativead/NativeAdManager;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/appodeal/ads/native_ad/e;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/e;ILcom/cmcm/adsdk/nativead/NativeAdManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/e$1;->e:Lcom/appodeal/ads/native_ad/e;

    iput p2, p0, Lcom/appodeal/ads/native_ad/e$1;->a:I

    iput-object p3, p0, Lcom/appodeal/ads/native_ad/e$1;->b:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    iput p4, p0, Lcom/appodeal/ads/native_ad/e$1;->c:I

    iput p5, p0, Lcom/appodeal/ads/native_ad/e$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 0

    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/native_ad/e$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/e$1;->c:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/e;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    return-void
.end method

.method public adLoaded()V
    .locals 5

    new-instance v0, Lcom/appodeal/ads/native_ad/e$a;

    iget v1, p0, Lcom/appodeal/ads/native_ad/e$1;->a:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/e;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    iget-object v3, p0, Lcom/appodeal/ads/native_ad/e$1;->b:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    invoke-virtual {v3}, Lcom/cmcm/adsdk/nativead/NativeAdManager;->getAd()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/appodeal/ads/native_ad/e$a;-><init>(ILcom/appodeal/ads/ac;Lcom/cmcm/baseapi/ads/INativeAd;)V

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/e$1;->e:Lcom/appodeal/ads/native_ad/e;

    invoke-static {v1}, Lcom/appodeal/ads/native_ad/e;->a(Lcom/appodeal/ads/native_ad/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/e$1;->e:Lcom/appodeal/ads/native_ad/e;

    iget v1, p0, Lcom/appodeal/ads/native_ad/e$1;->a:I

    iget v2, p0, Lcom/appodeal/ads/native_ad/e$1;->c:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/e;->c()Lcom/appodeal/ads/ac;

    move-result-object v3

    iget v4, p0, Lcom/appodeal/ads/native_ad/e$1;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/native_ad/e;->a(Lcom/appodeal/ads/native_ad/e;IILcom/appodeal/ads/ac;I)V

    return-void
.end method
