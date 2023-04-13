.class public final Lcom/my/target/core/engines/g;
.super Lcom/my/target/core/engines/a;
.source "StandardAdEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/engines/g$a;
    }
.end annotation


# instance fields
.field private c:Lcom/my/target/core/facades/h;

.field private d:Lcom/my/target/core/facades/h;

.field private e:Lcom/my/target/ads/MyTargetView;

.field private f:Lcom/my/target/core/ui/views/AdView;

.field private g:Landroid/webkit/WebView;

.field private h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

.field private i:Z

.field private j:Z

.field private k:Lcom/my/target/core/communication/js/c;

.field private l:Lcom/my/target/core/engines/g$a;

.field private m:Landroid/webkit/WebChromeClient;

.field private n:Landroid/webkit/WebViewClient;

.field private o:Lcom/my/target/core/communication/js/b;

.field private p:Lcom/my/target/core/communication/js/b;

.field private q:Lcom/my/target/core/communication/js/b;

.field private r:Lcom/my/target/core/communication/js/b;

.field private s:Lcom/my/target/core/communication/js/b;

.field private t:Lcom/my/target/core/communication/js/b;

.field private u:Lcom/my/target/core/communication/js/b;

.field private v:Lcom/my/target/core/communication/js/b;

.field private w:Lcom/my/target/core/facades/h$a;


# direct methods
.method public constructor <init>(Lcom/my/target/ads/MyTargetView;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 67
    new-instance v0, Lcom/my/target/core/communication/js/c;

    invoke-direct {v0}, Lcom/my/target/core/communication/js/c;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    .line 68
    new-instance v0, Lcom/my/target/core/engines/g$a;

    invoke-direct {v0}, Lcom/my/target/core/engines/g$a;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    .line 281
    new-instance v0, Lcom/my/target/core/engines/g$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$1;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->m:Landroid/webkit/WebChromeClient;

    .line 301
    new-instance v0, Lcom/my/target/core/engines/g$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$4;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->n:Landroid/webkit/WebViewClient;

    .line 361
    new-instance v0, Lcom/my/target/core/engines/g$5;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$5;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->o:Lcom/my/target/core/communication/js/b;

    .line 371
    new-instance v0, Lcom/my/target/core/engines/g$6;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$6;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->p:Lcom/my/target/core/communication/js/b;

    .line 396
    new-instance v0, Lcom/my/target/core/engines/g$7;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$7;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->q:Lcom/my/target/core/communication/js/b;

    .line 408
    new-instance v0, Lcom/my/target/core/engines/g$8;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$8;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->r:Lcom/my/target/core/communication/js/b;

    .line 427
    new-instance v0, Lcom/my/target/core/engines/g$9;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$9;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->s:Lcom/my/target/core/communication/js/b;

    .line 437
    new-instance v0, Lcom/my/target/core/engines/g$10;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$10;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->t:Lcom/my/target/core/communication/js/b;

    .line 449
    new-instance v0, Lcom/my/target/core/engines/g$11;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$11;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->u:Lcom/my/target/core/communication/js/b;

    .line 459
    new-instance v0, Lcom/my/target/core/engines/g$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$2;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->v:Lcom/my/target/core/communication/js/b;

    .line 473
    new-instance v0, Lcom/my/target/core/engines/g$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/g$3;-><init>(Lcom/my/target/core/engines/g;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->w:Lcom/my/target/core/facades/h$a;

    .line 78
    iput-object p1, p0, Lcom/my/target/core/engines/g;->e:Lcom/my/target/ads/MyTargetView;

    .line 1235
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/my/target/core/engines/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    .line 1236
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1237
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1238
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1239
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1241
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/my/target/core/engines/g;->n:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1242
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/my/target/core/engines/g;->m:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1245
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1247
    iget-object v1, p0, Lcom/my/target/core/engines/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1249
    new-instance v2, Lcom/my/target/core/ui/views/AdView;

    iget-object v3, p0, Lcom/my/target/core/engines/g;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/my/target/core/ui/views/AdView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    .line 1250
    iget-object v2, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    const/high16 v3, 0x44200000    # 640.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/my/target/core/ui/views/AdView;->setMaxWidth(I)V

    .line 1251
    iget-object v2, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    iget-object v3, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v0}, Lcom/my/target/core/ui/views/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1252
    iget-object v0, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 1255
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1256
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1257
    iget-object v1, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1258
    iget-object v0, p0, Lcom/my/target/core/engines/g;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onReady"

    iget-object v2, p0, Lcom/my/target/core/engines/g;->o:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 82
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onError"

    iget-object v2, p0, Lcom/my/target/core/engines/g;->p:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 83
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onAdError"

    iget-object v2, p0, Lcom/my/target/core/engines/g;->p:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 84
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onComplete"

    iget-object v2, p0, Lcom/my/target/core/engines/g;->q:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 85
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onNoAd"

    iget-object v2, p0, Lcom/my/target/core/engines/g;->r:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 86
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onAdStart"

    iget-object v2, p0, Lcom/my/target/core/engines/g;->s:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 87
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onStat"

    iget-object v2, p0, Lcom/my/target/core/engines/g;->u:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 88
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onAdClick"

    iget-object v2, p0, Lcom/my/target/core/engines/g;->t:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 89
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onRequestNewAds"

    iget-object v2, p0, Lcom/my/target/core/engines/g;->v:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/g;)Lcom/my/target/core/communication/js/c;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/core/engines/g;Lcom/my/target/core/facades/h;)Lcom/my/target/core/facades/h;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/my/target/core/engines/g;->d:Lcom/my/target/core/facades/h;

    return-object p1
.end method

.method private a(Lcom/my/target/core/communication/js/calls/c;)V
    .locals 7

    .prologue
    .line 346
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 350
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:AdmanJS.execute("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/my/target/core/communication/js/calls/c;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v4

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail to execute js call: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal error: fail to execute JSCall "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/my/target/core/communication/js/calls/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    iget-object v6, p0, Lcom/my/target/core/engines/g;->b:Landroid/content/Context;

    .line 2111
    const-string v2, "add log message level: 50"

    invoke-static {v2}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 2112
    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/my/target/core/factories/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;

    move-result-object v0

    .line 2113
    invoke-interface {v0}, Lcom/my/target/core/async/commands/b;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/engines/g;Lcom/my/target/core/communication/js/calls/c;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/my/target/core/engines/g;->a(Lcom/my/target/core/communication/js/calls/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 263
    if-eqz p1, :cond_2

    .line 265
    iget-object v0, p0, Lcom/my/target/core/engines/g;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/my/target/core/ui/views/controls/AdInfoButton;

    iget-object v1, p0, Lcom/my/target/core/engines/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/controls/AdInfoButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/g;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    .line 268
    iget-object v0, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    iget-object v1, p0, Lcom/my/target/core/engines/g;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, v1, v2, v2}, Lcom/my/target/core/ui/views/AdView;->addView(Landroid/view/View;II)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/g;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->setUrl(Ljava/lang/String;)V

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/g;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/my/target/core/engines/g;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 276
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/my/target/core/engines/g;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 277
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/engines/g;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    goto :goto_0
.end method

.method static synthetic b(Lcom/my/target/core/engines/g;)Lcom/my/target/ads/MyTargetView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/engines/g;->e:Lcom/my/target/ads/MyTargetView;

    return-object v0
.end method

.method static synthetic b(Lcom/my/target/core/engines/g;Lcom/my/target/core/facades/h;)V
    .locals 2

    .prologue
    .line 45
    .line 2226
    iput-object p1, p0, Lcom/my/target/core/engines/g;->c:Lcom/my/target/core/facades/h;

    .line 2227
    invoke-virtual {p1}, Lcom/my/target/core/facades/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/g;->a(Ljava/lang/String;)V

    .line 2228
    invoke-virtual {p1}, Lcom/my/target/core/facades/h;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 2229
    if-eqz v0, :cond_0

    .line 2230
    new-instance v1, Lcom/my/target/core/communication/js/calls/f;

    invoke-direct {v1, v0}, Lcom/my/target/core/communication/js/calls/f;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p0, v1}, Lcom/my/target/core/engines/g;->a(Lcom/my/target/core/communication/js/calls/c;)V

    .line 45
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/my/target/core/engines/g;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/my/target/core/engines/g;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/my/target/core/engines/g;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/g;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/engines/g;->c:Lcom/my/target/core/facades/h;

    return-object v0
.end method

.method static synthetic f(Lcom/my/target/core/engines/g;)Lcom/my/target/core/engines/g$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    return-object v0
.end method

.method static synthetic g(Lcom/my/target/core/engines/g;)Lcom/my/target/core/ui/views/AdView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    return-object v0
.end method

.method static synthetic h(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/engines/g;->d:Lcom/my/target/core/facades/h;

    return-object v0
.end method

.method static synthetic i(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/engines/g;->w:Lcom/my/target/core/facades/h$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/my/target/core/engines/a;->a()V

    .line 141
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/g$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/g$a;->b(Z)V

    .line 146
    new-instance v0, Lcom/my/target/core/communication/js/calls/b;

    const-string v1, "pause"

    invoke-direct {v0, v1}, Lcom/my/target/core/communication/js/calls/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/g;->a(Lcom/my/target/core/communication/js/calls/c;)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "already paused"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    const-string v0, "not started"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public final a(Lcom/my/target/core/facades/g;)V
    .locals 4

    .prologue
    .line 98
    instance-of v0, p1, Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/g$a;->e()V

    .line 101
    check-cast p1, Lcom/my/target/core/facades/h;

    iput-object p1, p0, Lcom/my/target/core/engines/g;->c:Lcom/my/target/core/facades/h;

    .line 102
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/g;->i:Z

    .line 104
    iget-object v0, p0, Lcom/my/target/core/engines/g;->c:Lcom/my/target/core/facades/h;

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/my/target/core/engines/g;->c:Lcom/my/target/core/facades/h;

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/g;->a(Ljava/lang/String;)V

    .line 108
    const-string v0, "load page"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/my/target/core/engines/g;->c:Lcom/my/target/core/facades/h;

    invoke-virtual {v1}, Lcom/my/target/core/facades/h;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/g;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/g;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    const-string v1, "No ad"

    iget-object v2, p0, Lcom/my/target/core/engines/g;->e:Lcom/my/target/ads/MyTargetView;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V

    goto :goto_0

    .line 113
    :cond_2
    const-string v0, "StandardAdEngine: incorrect ad type"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Lcom/my/target/core/engines/a;->b()V

    .line 158
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/g$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/g$a;->b(Z)V

    .line 163
    new-instance v0, Lcom/my/target/core/communication/js/calls/b;

    const-string v1, "resume"

    invoke-direct {v0, v1}, Lcom/my/target/core/communication/js/calls/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/g;->a(Lcom/my/target/core/communication/js/calls/c;)V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "already started"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_1
    const-string v0, "not started"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 173
    invoke-super {p0}, Lcom/my/target/core/engines/a;->c()V

    .line 175
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/g$a;->b(Z)V

    .line 178
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/g$a;->a(Z)V

    .line 179
    iget-object v0, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/my/target/core/engines/g;->d:Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/my/target/core/engines/g;->d:Lcom/my/target/core/facades/h;

    invoke-virtual {v0, v2}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 183
    iput-object v2, p0, Lcom/my/target/core/engines/g;->d:Lcom/my/target/core/facades/h;

    .line 185
    :cond_0
    new-instance v0, Lcom/my/target/core/communication/js/calls/b;

    const-string v1, "stop"

    invoke-direct {v0, v1}, Lcom/my/target/core/communication/js/calls/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/g;->a(Lcom/my/target/core/communication/js/calls/c;)V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string v0, "not started"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-super {p0}, Lcom/my/target/core/engines/a;->d()V

    .line 121
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/g$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "already started"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/g$a;->a(Z)V

    .line 127
    iget-object v0, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v2, v2}, Lcom/my/target/core/ui/views/AdView;->setDesiredSize(II)V

    .line 128
    iget-object v0, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 130
    new-instance v1, Lcom/my/target/core/communication/js/calls/e;

    const-string v2, "standard_320x50"

    invoke-direct {v1, v2, v0}, Lcom/my/target/core/communication/js/calls/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/my/target/core/engines/g;->a(Lcom/my/target/core/communication/js/calls/c;)V

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "not ready"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-super {p0}, Lcom/my/target/core/engines/a;->f()V

    .line 195
    iget-boolean v0, p0, Lcom/my/target/core/engines/g;->j:Z

    if-nez v0, :cond_1

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/g;->j:Z

    .line 198
    iget-object v0, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    invoke-virtual {v0}, Lcom/my/target/core/communication/js/c;->a()V

    .line 199
    iput-object v2, p0, Lcom/my/target/core/engines/g;->k:Lcom/my/target/core/communication/js/c;

    .line 200
    iget-object v0, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/AdView;->removeAllViews()V

    .line 202
    iput-object v2, p0, Lcom/my/target/core/engines/g;->f:Lcom/my/target/core/ui/views/AdView;

    .line 203
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 204
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 205
    iget-object v0, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 206
    iput-object v2, p0, Lcom/my/target/core/engines/g;->g:Landroid/webkit/WebView;

    .line 207
    iput-object v2, p0, Lcom/my/target/core/engines/g;->c:Lcom/my/target/core/facades/h;

    .line 208
    iput-object v2, p0, Lcom/my/target/core/engines/g;->e:Lcom/my/target/ads/MyTargetView;

    .line 209
    iput-object v2, p0, Lcom/my/target/core/engines/g;->l:Lcom/my/target/core/engines/g$a;

    .line 210
    iget-object v0, p0, Lcom/my/target/core/engines/g;->d:Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/my/target/core/engines/g;->d:Lcom/my/target/core/facades/h;

    invoke-virtual {v0, v2}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 213
    iput-object v2, p0, Lcom/my/target/core/engines/g;->d:Lcom/my/target/core/facades/h;

    .line 216
    :cond_1
    return-void
.end method
