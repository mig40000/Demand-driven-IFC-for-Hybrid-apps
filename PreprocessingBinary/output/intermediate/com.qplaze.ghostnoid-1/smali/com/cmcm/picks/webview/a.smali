.class Lcom/cmcm/picks/webview/a;
.super Landroid/webkit/WebViewClient;
.source "BrowserWebViewClient.java"


# instance fields
.field private a:Lcom/cmcm/picks/webview/PicksBrowser;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cmcm/picks/webview/PicksBrowser;)V
    .locals 0
    .param p1    # Lcom/cmcm/picks/webview/PicksBrowser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/cmcm/picks/webview/a;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    .line 20
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/cmcm/picks/webview/a;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/PicksBrowser;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/webview/a;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/cmcm/adsdk/R$drawable;->browser_left_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v0, p0, Lcom/cmcm/picks/webview/a;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/PicksBrowser;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/picks/webview/a;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/cmcm/adsdk/R$drawable;->browser_right_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/webview/a;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/cmcm/adsdk/R$drawable;->browser_unleft_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/webview/a;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/cmcm/adsdk/R$drawable;->browser_unright_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 34
    iget-object v0, p0, Lcom/cmcm/picks/webview/a;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/PicksBrowser;->b()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/webview/a;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-virtual {v1}, Lcom/cmcm/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/adsdk/R$drawable;->browser_unright_arrow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/webview/a;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/PicksBrowser;->c()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    goto :goto_0
.end method
