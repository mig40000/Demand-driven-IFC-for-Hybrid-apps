.class Lcom/appodeal/ads/native_ad/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/g;->a(Landroid/app/Activity;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/appodeal/ads/native_ad/g;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/g;III)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/g$1;->d:Lcom/appodeal/ads/native_ad/g;

    iput p2, p0, Lcom/appodeal/ads/native_ad/g$1;->a:I

    iput p3, p0, Lcom/appodeal/ads/native_ad/g$1;->b:I

    iput p4, p0, Lcom/appodeal/ads/native_ad/g$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 5

    iget v0, p0, Lcom/appodeal/ads/native_ad/g$1;->a:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/g;->c()Lcom/appodeal/ads/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/native_ad/g$1;->d:Lcom/appodeal/ads/native_ad/g;

    check-cast p1, Lcom/facebook/ads/NativeAd;

    iget v3, p0, Lcom/appodeal/ads/native_ad/g$1;->a:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/g;->c()Lcom/appodeal/ads/ac;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lcom/appodeal/ads/native_ad/g;->a(Lcom/appodeal/ads/native_ad/g;Lcom/facebook/ads/NativeAd;ILcom/appodeal/ads/ac;)Lcom/appodeal/ads/native_ad/g$a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->c(ILcom/appodeal/ads/ac;Lcom/appodeal/ads/NativeAd;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/g$1;->d:Lcom/appodeal/ads/native_ad/g;

    check-cast p1, Lcom/facebook/ads/NativeAd;

    iget v1, p0, Lcom/appodeal/ads/native_ad/g$1;->a:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/g;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/appodeal/ads/native_ad/g;->a(Lcom/appodeal/ads/native_ad/g;Lcom/facebook/ads/NativeAd;ILcom/appodeal/ads/ac;)Lcom/appodeal/ads/native_ad/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/g$1;->d:Lcom/appodeal/ads/native_ad/g;

    invoke-static {v1}, Lcom/appodeal/ads/native_ad/g;->a(Lcom/appodeal/ads/native_ad/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/g$1;->d:Lcom/appodeal/ads/native_ad/g;

    iget v1, p0, Lcom/appodeal/ads/native_ad/g$1;->a:I

    iget v2, p0, Lcom/appodeal/ads/native_ad/g$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/g;->c()Lcom/appodeal/ads/ac;

    move-result-object v3

    iget v4, p0, Lcom/appodeal/ads/native_ad/g$1;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/native_ad/g;->a(Lcom/appodeal/ads/native_ad/g;IILcom/appodeal/ads/ac;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/appodeal/ads/native_ad/g$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/g$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/g;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/native_ad/g$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/g$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/g;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    return-void
.end method
