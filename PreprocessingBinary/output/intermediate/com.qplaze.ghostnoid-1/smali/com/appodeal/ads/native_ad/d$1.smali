.class Lcom/appodeal/ads/native_ad/d$1;
.super Lcom/avocarrot/androidsdk/AvocarrotCustomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/d;->a(Landroid/app/Activity;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/avocarrot/androidsdk/AvocarrotCustom;

.field final synthetic d:I

.field final synthetic e:Lcom/appodeal/ads/native_ad/d;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/d;IILcom/avocarrot/androidsdk/AvocarrotCustom;I)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/d$1;->e:Lcom/appodeal/ads/native_ad/d;

    iput p2, p0, Lcom/appodeal/ads/native_ad/d$1;->a:I

    iput p3, p0, Lcom/appodeal/ads/native_ad/d$1;->b:I

    iput-object p4, p0, Lcom/appodeal/ads/native_ad/d$1;->c:Lcom/avocarrot/androidsdk/AvocarrotCustom;

    iput p5, p0, Lcom/appodeal/ads/native_ad/d$1;->d:I

    invoke-direct {p0}, Lcom/avocarrot/androidsdk/AvocarrotCustomListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/avocarrot/androidsdk/AdError;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/AvocarrotCustomListener;->onAdError(Lcom/avocarrot/androidsdk/AdError;)V

    iget v0, p0, Lcom/appodeal/ads/native_ad/d$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/d$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/d;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/CustomModel;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/AvocarrotCustomListener;->onAdLoaded(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/native_ad/d$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/native_ad/d$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/d;->c()Lcom/appodeal/ads/ac;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/CustomModel;

    new-instance v2, Lcom/appodeal/ads/native_ad/d$a;

    iget v3, p0, Lcom/appodeal/ads/native_ad/d$1;->a:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/d;->c()Lcom/appodeal/ads/ac;

    move-result-object v4

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/d$1;->c:Lcom/avocarrot/androidsdk/AvocarrotCustom;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/appodeal/ads/native_ad/d$a;-><init>(ILcom/appodeal/ads/ac;Lcom/avocarrot/androidsdk/CustomModel;Lcom/avocarrot/androidsdk/AvocarrotCustom;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$1;->e:Lcom/appodeal/ads/native_ad/d;

    invoke-static {v0}, Lcom/appodeal/ads/native_ad/d;->a(Lcom/appodeal/ads/native_ad/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$1;->e:Lcom/appodeal/ads/native_ad/d;

    iget v1, p0, Lcom/appodeal/ads/native_ad/d$1;->a:I

    iget v2, p0, Lcom/appodeal/ads/native_ad/d$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/native_ad/d;->c()Lcom/appodeal/ads/ac;

    move-result-object v3

    iget v4, p0, Lcom/appodeal/ads/native_ad/d$1;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/native_ad/d;->a(Lcom/appodeal/ads/native_ad/d;IILcom/appodeal/ads/ac;I)V

    goto :goto_0
.end method
