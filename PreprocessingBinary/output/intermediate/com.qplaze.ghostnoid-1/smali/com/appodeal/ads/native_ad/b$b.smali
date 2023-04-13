.class Lcom/appodeal/ads/native_ad/b$b;
.super Lcom/appodeal/ads/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/native_ad/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field final j:F

.field final k:Ljava/lang/String;

.field final l:Ljava/lang/String;

.field final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/appodeal/ads/ac;)V
    .locals 0

    invoke-direct {p0, p10, p11, p5, p6}, Lcom/appodeal/ads/ab;-><init>(ILcom/appodeal/ads/ac;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/b$b;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/b$b;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/native_ad/b$b;->i:Ljava/lang/String;

    iput p4, p0, Lcom/appodeal/ads/native_ad/b$b;->j:F

    iput-object p7, p0, Lcom/appodeal/ads/native_ad/b$b;->k:Ljava/lang/String;

    iput-object p8, p0, Lcom/appodeal/ads/native_ad/b$b;->l:Ljava/lang/String;

    iput-object p9, p0, Lcom/appodeal/ads/native_ad/b$b;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/b$b;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/b$b;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/b$b;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/appodeal/ads/an;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public containsVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/b$b;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/b$b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/b$b;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/b$b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getAdProvider()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/b;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/b$b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/b$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/native_ad/b$b;->j:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/b$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/b$b;->j()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
