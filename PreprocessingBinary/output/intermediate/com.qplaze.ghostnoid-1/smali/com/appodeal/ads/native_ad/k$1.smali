.class Lcom/appodeal/ads/native_ad/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/k;->a(Landroid/app/Activity;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/appodeal/ads/native_ad/k;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/k;III)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/k$1;->d:Lcom/appodeal/ads/native_ad/k;

    iput p2, p0, Lcom/appodeal/ads/native_ad/k$1;->a:I

    iput p3, p0, Lcom/appodeal/ads/native_ad/k$1;->b:I

    iput p4, p0, Lcom/appodeal/ads/native_ad/k$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/native_ad/k$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/k$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/k;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .locals 5

    new-instance v0, Lcom/appodeal/ads/native_ad/k$a;

    iget v1, p0, Lcom/appodeal/ads/native_ad/k$1;->a:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/k;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/appodeal/ads/native_ad/k$a;-><init>(Lcom/mopub/nativeads/NativeAd;ILcom/appodeal/ads/ac;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/native_ad/k$a;->n()Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/appodeal/ads/native_ad/k$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/k$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/k;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/native_ad/k$1;->d:Lcom/appodeal/ads/native_ad/k;

    invoke-static {v1}, Lcom/appodeal/ads/native_ad/k;->a(Lcom/appodeal/ads/native_ad/k;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k$1;->d:Lcom/appodeal/ads/native_ad/k;

    iget v1, p0, Lcom/appodeal/ads/native_ad/k$1;->a:I

    iget v2, p0, Lcom/appodeal/ads/native_ad/k$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/k;->c()Lcom/appodeal/ads/ac;

    move-result-object v3

    iget v4, p0, Lcom/appodeal/ads/native_ad/k$1;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/native_ad/k;->a(Lcom/appodeal/ads/native_ad/k;IILcom/appodeal/ads/ac;I)V

    goto :goto_0
.end method
