.class Lcom/appodeal/ads/native_ad/m$a;
.super Lcom/appodeal/ads/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/native_ad/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field final j:F

.field final k:Ljava/lang/String;

.field final l:Ljava/lang/String;

.field final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/appodeal/ads/ac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/appodeal/ads/ac;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p11, p12, p5, p6}, Lcom/appodeal/ads/ab;-><init>(ILcom/appodeal/ads/ac;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/m$a;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/m$a;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/native_ad/m$a;->i:Ljava/lang/String;

    iput p4, p0, Lcom/appodeal/ads/native_ad/m$a;->j:F

    iput-object p7, p0, Lcom/appodeal/ads/native_ad/m$a;->k:Ljava/lang/String;

    iput-object p8, p0, Lcom/appodeal/ads/native_ad/m$a;->l:Ljava/lang/String;

    iput-object p9, p0, Lcom/appodeal/ads/native_ad/m$a;->m:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/appodeal/ads/native_ad/m$a;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/m$a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/m$a;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/m$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appodeal/ads/an;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/m$a;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/m$a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appodeal/ads/an;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/m$a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/m$a;->h()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/m$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getAdProvider()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/m;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/m$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/m$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/native_ad/m$a;->j:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/m$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/m$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/m$a;->j()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
