.class public Lcom/cmcm/picks/webview/PicksBrowser;
.super Landroid/app/Activity;
.source "PicksBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/cmcm/picks/webview/BaseWebView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 125
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 72
    sget v0, Lcom/cmcm/adsdk/R$id;->panel_ll:I

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->f:Landroid/widget/LinearLayout;

    .line 73
    sget v0, Lcom/cmcm/adsdk/R$id;->browser_back:I

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->b:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/cmcm/adsdk/R$id;->browser_forward:I

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->c:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcom/cmcm/adsdk/R$id;->browser_close:I

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->e:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcom/cmcm/adsdk/R$id;->browser_refresh:I

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->d:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/adsdk/R$drawable;->browser_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/adsdk/R$drawable;->browser_left_arrow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/adsdk/R$drawable;->browser_right_arrow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/adsdk/R$drawable;->browser_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/adsdk/R$drawable;->browser_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    sget v0, Lcom/cmcm/adsdk/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/webview/BaseWebView;

    iput-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    .line 84
    return-void
.end method

.method private e()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 88
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/webview/BaseWebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    new-instance v1, Lcom/cmcm/picks/webview/a;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/webview/a;-><init>(Lcom/cmcm/picks/webview/PicksBrowser;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/webview/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 103
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    new-instance v1, Lcom/cmcm/picks/webview/PicksBrowser$1;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/webview/PicksBrowser$1;-><init>(Lcom/cmcm/picks/webview/PicksBrowser;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/webview/BaseWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 113
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->a(Landroid/widget/ImageView;)V

    .line 117
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->a(Landroid/widget/ImageView;)V

    .line 118
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->a(Landroid/widget/ImageView;)V

    .line 119
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->a(Landroid/widget/ImageView;)V

    .line 120
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 147
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 148
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 149
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public b()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public c()Landroid/webkit/WebView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 170
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/cmcm/picks/webview/PicksBrowser;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/BaseWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/BaseWebView;->goBack()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/cmcm/picks/webview/PicksBrowser;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/BaseWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/BaseWebView;->goForward()V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/cmcm/picks/webview/PicksBrowser;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/BaseWebView;->reload()V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/cmcm/picks/webview/PicksBrowser;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/cmcm/picks/webview/PicksBrowser;->setResult(I)V

    .line 59
    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 60
    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 62
    sget v0, Lcom/cmcm/adsdk/R$layout;->activity_picks_browser:I

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/webview/PicksBrowser;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->d()V

    .line 65
    invoke-direct {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->e()V

    .line 66
    invoke-direct {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->f()V

    .line 67
    invoke-direct {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->g()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/picks/webview/BaseWebView;->destroy()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    .line 179
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 155
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    invoke-virtual {p0}, Lcom/cmcm/picks/webview/PicksBrowser;->isFinishing()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/webview/c;->a(Landroid/webkit/WebView;Z)V

    .line 156
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 162
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser;->a:Lcom/cmcm/picks/webview/BaseWebView;

    invoke-static {v0}, Lcom/cmcm/picks/webview/c;->a(Landroid/webkit/WebView;)V

    .line 163
    return-void
.end method
