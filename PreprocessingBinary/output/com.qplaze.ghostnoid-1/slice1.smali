.class public Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;
.method private a(Landroid/widget/RelativeLayout$LayoutParams;)V
    const/4 v3, 0x1
    new-instance v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$3;
    iget-object v1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;
    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$3;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;Landroid/content/Context;)V
    iput-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x11
    if-lt v0, v1, :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x10
    if-lt v0, v1, :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
    iget-object v2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;
    invoke-direct {v1, p0, v2}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;Landroid/content/Context;)V
    const-string v2, "Android"
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;
    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)V
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$5;
    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$5;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)V
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$6;
    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$6;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)V
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c:Landroid/webkit/WebView;
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->addView(Landroid/view/View;)V

Interface Methods:
.method public checkTimer(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$3;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$3;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$4;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$4;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public complete()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$1;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public duration(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$5;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$5;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$6;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$6;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$10;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$10;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$8;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$8;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playing()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$11;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$11;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showHTML(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$9;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$9;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


Invoked Methods:

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

    .locals 0
    return-void
    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$3;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
.end method
    iput p2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$3;->a:I
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;I)V
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$4;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V
    .locals 0
    return-void
.end method
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V
    .locals 0
    return-void
.end method
    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$1;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

    iput p2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->a:I
    .locals 0
    return-void
.end method
    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;I)V
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$5;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
    .locals 0
    iput-object p2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$5;->a:Ljava/lang/String;
    return-void
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;Ljava/lang/String;)V
.end method
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V
    .locals 0
    return-void
.end method
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$6;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

    .locals 0
    return-void
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;Ljava/lang/String;)V
    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$10;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
.end method
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$10;->a:Ljava/lang/String;

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V
    .locals 0
    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$8;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
    return-void
.end method
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V
    .locals 0
    return-void
    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$11;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
.end method
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$9;->a:Ljava/lang/String;
    .locals 0
    return-void
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;Ljava/lang/String;)V
    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$9;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
.end method
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

.method static synthetic i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;
    .locals 1
.end method
    return-object v0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e:Landroid/content/Context;

.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V
    .locals 0
    return-void
    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
.end method
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
