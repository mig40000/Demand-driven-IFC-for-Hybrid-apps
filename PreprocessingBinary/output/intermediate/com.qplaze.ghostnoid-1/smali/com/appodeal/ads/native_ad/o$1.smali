.class Lcom/appodeal/ads/native_ad/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/o;->a(Landroid/app/Activity;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/nativead/StartAppNativeAd;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/appodeal/ads/native_ad/o;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/o;Lcom/startapp/android/publish/nativead/StartAppNativeAd;III)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/o$1;->e:Lcom/appodeal/ads/native_ad/o;

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/o$1;->a:Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    iput p3, p0, Lcom/appodeal/ads/native_ad/o$1;->b:I

    iput p4, p0, Lcom/appodeal/ads/native_ad/o$1;->c:I

    iput p5, p0, Lcom/appodeal/ads/native_ad/o$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/native_ad/o$1;->b:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/o$1;->c:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/o;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/o$1;->a:Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    invoke-virtual {v0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->getNativeAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/native_ad/o$1;->b:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/o$1;->c:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/o;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/nativead/NativeAdDetails;

    new-instance v2, Lcom/appodeal/ads/native_ad/o$a;

    iget v3, p0, Lcom/appodeal/ads/native_ad/o$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/o;->c()Lcom/appodeal/ads/ac;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/appodeal/ads/native_ad/o$a;-><init>(Lcom/startapp/android/publish/nativead/NativeAdDetails;ILcom/appodeal/ads/ac;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/o$1;->e:Lcom/appodeal/ads/native_ad/o;

    invoke-static {v0}, Lcom/appodeal/ads/native_ad/o;->a(Lcom/appodeal/ads/native_ad/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/o$1;->e:Lcom/appodeal/ads/native_ad/o;

    invoke-static {v0}, Lcom/appodeal/ads/native_ad/o;->b(Lcom/appodeal/ads/native_ad/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/appodeal/ads/native_ad/o$1;->b:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/o$1;->c:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/o;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/o$1;->e:Lcom/appodeal/ads/native_ad/o;

    iget v1, p0, Lcom/appodeal/ads/native_ad/o$1;->b:I

    iget v2, p0, Lcom/appodeal/ads/native_ad/o$1;->c:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/o;->c()Lcom/appodeal/ads/ac;

    move-result-object v3

    iget v4, p0, Lcom/appodeal/ads/native_ad/o$1;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/native_ad/o;->a(Lcom/appodeal/ads/native_ad/o;IILcom/appodeal/ads/ac;I)V

    goto :goto_0
.end method
