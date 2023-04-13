.class Lcom/appodeal/ads/networks/m$2;
.method public run()V
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;
    new-instance v1, Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;
    invoke-static {v2}, Lcom/appodeal/ads/networks/m;->c(Lcom/appodeal/ads/networks/m;)Landroid/app/Activity;
    move-result-object v2
    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/m;->a(Lcom/appodeal/ads/networks/m;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;
    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->d(Lcom/appodeal/ads/networks/m;)Landroid/webkit/WebView;
    move-result-object v0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;
    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->d(Lcom/appodeal/ads/networks/m;)Landroid/webkit/WebView;
    move-result-object v0
    new-instance v1, Lcom/appodeal/ads/networks/m$b;
    iget-object v2, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;
    invoke-direct {v1, v2}, Lcom/appodeal/ads/networks/m$b;-><init>(Lcom/appodeal/ads/networks/m;)V
    const-string v2, "HTMLOUT"
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;
    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->d(Lcom/appodeal/ads/networks/m;)Landroid/webkit/WebView;
    move-result-object v0
    new-instance v1, Lcom/appodeal/ads/networks/m$2$1;
    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/m$2$1;-><init>(Lcom/appodeal/ads/networks/m$2;)V
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;
    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->d(Lcom/appodeal/ads/networks/m;)Landroid/webkit/WebView;
    move-result-object v0
    iget-object v1, p0, Lcom/appodeal/ads/networks/m$2;->b:Ljava/lang/String;
    const-string v2, "text/html"
    const-string v3, "utf-8"
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.class public Lcom/appodeal/ads/networks/m;
.method static synthetic a(Lcom/appodeal/ads/networks/m;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    iput-object p1, p0, Lcom/appodeal/ads/networks/m;->g:Landroid/webkit/WebView;
    return-object p1
.method static synthetic c(Lcom/appodeal/ads/networks/m;)Landroid/app/Activity;
    iget-object v0, p0, Lcom/appodeal/ads/networks/m;->a:Landroid/app/Activity;
    return-object v0
.method static synthetic d(Lcom/appodeal/ads/networks/m;)Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/appodeal/ads/networks/m;->g:Landroid/webkit/WebView;
    return-object v0

Interface Methods:
.method public loadHTML(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/m$b;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->c(Lcom/appodeal/ads/networks/m;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/networks/m$b$1;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/m$b$1;-><init>(Lcom/appodeal/ads/networks/m$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


Invoked Methods:
.method static synthetic c(Lcom/appodeal/ads/networks/m;)Landroid/app/Activity;

    .locals 1
    iget-object v0, p0, Lcom/appodeal/ads/networks/m;->a:Landroid/app/Activity;
.end method
    return-object v0

    .locals 0
    return-void
.method constructor <init>(Lcom/appodeal/ads/networks/m$b;Ljava/lang/String;)V
    iput-object p2, p0, Lcom/appodeal/ads/networks/m$b$1;->a:Ljava/lang/String;
.end method
    iput-object p1, p0, Lcom/appodeal/ads/networks/m$b$1;->b:Lcom/appodeal/ads/networks/m$b;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
