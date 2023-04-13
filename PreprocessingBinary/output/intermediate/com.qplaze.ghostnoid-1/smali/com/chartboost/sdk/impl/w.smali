.class public Lcom/chartboost/sdk/impl/w;
.super Lcom/chartboost/sdk/impl/s;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 31
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/s;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/w;->a:Landroid/view/View$OnClickListener;

    .line 33
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/webkit/WebView;

    .line 34
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/w;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/chartboost/sdk/impl/w$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/w$1;-><init>(Lcom/chartboost/sdk/impl/w;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 77
    const/16 v0, 0x64

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/w;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 6

    .prologue
    .line 63
    const-string v0, "html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/webkit/WebView;

    const-string v1, "file:///android_res/"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v1, "AppCellWebView"

    const-string v2, "Exception raised loading data into webview"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "prepareWithCellMeta"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/s;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object p1, p0, Lcom/chartboost/sdk/impl/w;->a:Landroid/view/View$OnClickListener;

    .line 59
    return-void
.end method
