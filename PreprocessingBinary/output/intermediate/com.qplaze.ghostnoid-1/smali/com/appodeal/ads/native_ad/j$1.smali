.class Lcom/appodeal/ads/native_ad/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/my/target/nativeads/NativeAd$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/j;->a(Landroid/app/Activity;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/appodeal/ads/native_ad/j;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/j;III)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/j$1;->d:Lcom/appodeal/ads/native_ad/j;

    iput p2, p0, Lcom/appodeal/ads/native_ad/j$1;->a:I

    iput p3, p0, Lcom/appodeal/ads/native_ad/j$1;->b:I

    iput p4, p0, Lcom/appodeal/ads/native_ad/j$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/my/target/nativeads/NativeAd;)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/appodeal/ads/native_ad/j$a;

    iget v1, p0, Lcom/appodeal/ads/native_ad/j$1;->a:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/j;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/appodeal/ads/native_ad/j$a;-><init>(Lcom/my/target/nativeads/NativeAd;ILcom/appodeal/ads/ac;)V

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/j$1;->d:Lcom/appodeal/ads/native_ad/j;

    invoke-static {v1}, Lcom/appodeal/ads/native_ad/j;->a(Lcom/appodeal/ads/native_ad/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$1;->d:Lcom/appodeal/ads/native_ad/j;

    iget v1, p0, Lcom/appodeal/ads/native_ad/j$1;->a:I

    iget v2, p0, Lcom/appodeal/ads/native_ad/j$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/j;->c()Lcom/appodeal/ads/ac;

    move-result-object v3

    iget v4, p0, Lcom/appodeal/ads/native_ad/j$1;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/native_ad/j;->a(Lcom/appodeal/ads/native_ad/j;IILcom/appodeal/ads/ac;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/appodeal/ads/native_ad/j$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/j$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/j;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/my/target/nativeads/NativeAd;)V
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$1;->d:Lcom/appodeal/ads/native_ad/j;

    invoke-static {v0}, Lcom/appodeal/ads/native_ad/j;->b(Lcom/appodeal/ads/native_ad/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/appodeal/ads/native_ad/j$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/j$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/j;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/j$1;->d:Lcom/appodeal/ads/native_ad/j;

    iget v1, p0, Lcom/appodeal/ads/native_ad/j$1;->a:I

    iget v2, p0, Lcom/appodeal/ads/native_ad/j$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/j;->c()Lcom/appodeal/ads/ac;

    move-result-object v3

    iget v4, p0, Lcom/appodeal/ads/native_ad/j$1;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/native_ad/j;->b(Lcom/appodeal/ads/native_ad/j;IILcom/appodeal/ads/ac;I)V

    goto :goto_0
.end method

.method public b(Lcom/my/target/nativeads/NativeAd;)V
    .locals 5

    iget v0, p0, Lcom/appodeal/ads/native_ad/j$1;->a:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/j;->c()Lcom/appodeal/ads/ac;

    move-result-object v1

    new-instance v2, Lcom/appodeal/ads/native_ad/j$a;

    iget v3, p0, Lcom/appodeal/ads/native_ad/j$1;->a:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/j;->c()Lcom/appodeal/ads/ac;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/appodeal/ads/native_ad/j$a;-><init>(Lcom/my/target/nativeads/NativeAd;ILcom/appodeal/ads/ac;)V

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->c(ILcom/appodeal/ads/ac;Lcom/appodeal/ads/NativeAd;)V

    return-void
.end method

.method public synthetic onClick(Lcom/my/target/core/facades/b;)V
    .locals 0

    check-cast p1, Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/native_ad/j$1;->b(Lcom/my/target/nativeads/NativeAd;)V

    return-void
.end method

.method public synthetic onLoad(Lcom/my/target/core/facades/b;)V
    .locals 0

    check-cast p1, Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/native_ad/j$1;->a(Lcom/my/target/nativeads/NativeAd;)V

    return-void
.end method

.method public synthetic onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/b;)V
    .locals 0

    check-cast p2, Lcom/my/target/nativeads/NativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/native_ad/j$1;->a(Ljava/lang/String;Lcom/my/target/nativeads/NativeAd;)V

    return-void
.end method
