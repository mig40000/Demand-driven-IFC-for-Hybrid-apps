.class Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->e(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VPAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/vpaid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->i(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Lcom/appodeal/ads/networks/vpaid/VPAIDView;Z)Z

    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "vpaid://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0, p2}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->b(Lcom/appodeal/ads/networks/vpaid/VPAIDView;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->h(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
