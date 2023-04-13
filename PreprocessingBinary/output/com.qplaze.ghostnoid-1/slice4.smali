.class public Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;
.method private createWebView(Landroid/widget/RelativeLayout$LayoutParams;)V
    const/4 v3, 0x1
    new-instance v0, Landroid/webkit/WebView;
    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x11
    if-lt v0, v1, :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;
    invoke-direct {v1, p0, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;Landroid/content/Context;)V
    const-string v2, "Android"
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$2;
    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$2;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)V
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$3;
    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$3;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)V
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mRootLayout:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->mWebView:Landroid/webkit/WebView;
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

Interface Methods:
.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$2;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$2;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finish()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$1;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$1;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$4;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$4;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public started()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$3;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$3;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


Invoked Methods:

    .locals 0
    return-void
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V
.end method
    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$2;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .locals 0
    return-void
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V
.end method
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$1;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;

    .locals 0
    return-void
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V
.end method
    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$4;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .locals 0
    return-void
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V
.end method
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$3;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;
