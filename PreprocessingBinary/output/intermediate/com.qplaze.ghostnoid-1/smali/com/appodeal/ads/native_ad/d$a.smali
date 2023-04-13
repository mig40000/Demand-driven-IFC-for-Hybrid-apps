.class Lcom/appodeal/ads/native_ad/d$a;
.super Lcom/appodeal/ads/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/native_ad/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final g:Lcom/avocarrot/androidsdk/CustomModel;

.field private final h:Lcom/avocarrot/androidsdk/AvocarrotCustom;

.field private i:Lcom/avocarrot/androidsdk/ui/AdChoicesView;


# direct methods
.method constructor <init>(ILcom/appodeal/ads/ac;Lcom/avocarrot/androidsdk/CustomModel;Lcom/avocarrot/androidsdk/AvocarrotCustom;)V
    .locals 2

    invoke-virtual {p3}, Lcom/avocarrot/androidsdk/CustomModel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/avocarrot/androidsdk/CustomModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/appodeal/ads/ab;-><init>(ILcom/appodeal/ads/ac;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/appodeal/ads/native_ad/d$a;->g:Lcom/avocarrot/androidsdk/CustomModel;

    iput-object p4, p0, Lcom/appodeal/ads/native_ad/d$a;->h:Lcom/avocarrot/androidsdk/AvocarrotCustom;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->h:Lcom/avocarrot/androidsdk/AvocarrotCustom;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/d$a;->g:Lcom/avocarrot/androidsdk/CustomModel;

    invoke-virtual {v0, v1}, Lcom/avocarrot/androidsdk/AvocarrotCustom;->handleClick(Lcom/avocarrot/androidsdk/CustomModel;)V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public containsVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/d$a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/d$a;->h()Ljava/lang/String;

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

.method public getAdProvider()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/d;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->g:Lcom/avocarrot/androidsdk/CustomModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CustomModel;->getCTAText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->g:Lcom/avocarrot/androidsdk/CustomModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CustomModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->i:Lcom/avocarrot/androidsdk/ui/AdChoicesView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avocarrot/androidsdk/ui/AdChoicesView;

    invoke-direct {v0, p1}, Lcom/avocarrot/androidsdk/ui/AdChoicesView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->i:Lcom/avocarrot/androidsdk/ui/AdChoicesView;

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->i:Lcom/avocarrot/androidsdk/ui/AdChoicesView;

    return-object v0
.end method

.method public getRating()F
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->g:Lcom/avocarrot/androidsdk/CustomModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CustomModel;->getRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->g:Lcom/avocarrot/androidsdk/CustomModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CustomModel;->getRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->g:Lcom/avocarrot/androidsdk/CustomModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CustomModel;->getRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/appodeal/ads/ab;->getRating()F

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->g:Lcom/avocarrot/androidsdk/CustomModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CustomModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/d$a;->g:Lcom/avocarrot/androidsdk/CustomModel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CustomModel;->getVastTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/d$a;->j()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/appodeal/ads/ab;->registerViewForInteraction(Landroid/view/View;)V

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/d$a;->h:Lcom/avocarrot/androidsdk/AvocarrotCustom;

    iget-object v2, p0, Lcom/appodeal/ads/native_ad/d$a;->g:Lcom/avocarrot/androidsdk/CustomModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/native_ad/d$a;->getProviderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/ui/AdChoicesView;

    invoke-virtual {v1, v2, p1, v0}, Lcom/avocarrot/androidsdk/AvocarrotCustom;->bindView(Lcom/avocarrot/androidsdk/CustomModel;Landroid/view/View;Lcom/avocarrot/androidsdk/ui/AdChoicesView;)V

    return-void
.end method
