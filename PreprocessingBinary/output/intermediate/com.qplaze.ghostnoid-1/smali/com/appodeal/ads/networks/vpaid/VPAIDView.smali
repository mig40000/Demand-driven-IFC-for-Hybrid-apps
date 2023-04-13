.class public Lcom/appodeal/ads/networks/vpaid/VPAIDView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/networks/vpaid/VPAIDView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/appodeal/ads/networks/vpaid/a;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/webkit/WebView;

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/util/Timer;

.field private l:Landroid/widget/TextView;

.field private m:F

.field private n:F

.field private o:Lcom/appodeal/ads/networks/vpaid/VPAIDView$a;

.field private p:I

.field private q:Z

.field private r:Lorg/nexage/sourcekit/vast/model/VASTModel;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/networks/vpaid/a;ZLjava/lang/String;Lorg/nexage/sourcekit/vast/model/VASTModel;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->h:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->i:I

    iput v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->m:F

    iput v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->n:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->q:Z

    iput-boolean v2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->u:Z

    iput-boolean v2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->v:Z

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getLogLevel()Lcom/appodeal/ads/utils/Log$LogLevel;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->a:Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/c;->a(Lcom/appodeal/ads/networks/vpaid/c$a;)V

    :goto_0
    iput-object p1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->b:Lcom/appodeal/ads/networks/vpaid/a;

    iput-boolean p3, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->c:Z

    iput-object p4, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->r:Lorg/nexage/sourcekit/vast/model/VASTModel;

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->r:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getTrackingUrls()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->s:Ljava/util/HashMap;

    invoke-virtual {p5}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getPickedMediaFileURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->e:Ljava/lang/String;

    invoke-virtual {p5}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getAdParameterms()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->t:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l()V

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->i:I

    iput v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j:I

    if-eqz p6, :cond_0

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDView$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$1;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->h()V

    iput v2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->e:Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/c;->a(Lcom/appodeal/ads/networks/vpaid/c$a;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/appodeal/ads/networks/vpaid/VPAIDView;I)I
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j:I

    return p1
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$2;

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$2;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$4;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDView$5;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$5;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/networks/vpaid/VPAIDView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "VPAIDView"

    const-string v1, "entered fireUrls"

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/vpaid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "VPAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tfiring url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appodeal/ads/networks/vpaid/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/nexage/sourcekit/util/HttpTools;->httpGetURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "VPAIDView"

    const-string v1, "\turl list is null"

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/vpaid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->u:Z

    return v0
.end method

.method static synthetic a(Lcom/appodeal/ads/networks/vpaid/VPAIDView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/appodeal/ads/networks/vpaid/VPAIDView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/appodeal/ads/networks/vpaid/d;

    invoke-direct {v0}, Lcom/appodeal/ads/networks/vpaid/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/networks/vpaid/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "command"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x13

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AdStarted"

    aput-object v3, v2, v5

    const-string v3, "AdStopped"

    aput-object v3, v2, v6

    const-string v3, "AdSkipped"

    aput-object v3, v2, v7

    const-string v3, "AdLoaded"

    aput-object v3, v2, v8

    const-string v3, "AdLinearChange"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "AdSizeChange"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "AdExpandedChange"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "AdImpression"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "AdInteraction"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "AdVideoStart"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "AdVideoFirstQuartile"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "AdVideoMidpoint"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "AdVideoThirdQuartile"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "AdVideoComplete"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "AdUserAcceptInvitation"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "AdUserMinimize"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "AdUserClose"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "AdPaused"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "AdPlaying"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "AdSkippableStateChange"

    aput-object v4, v3, v5

    const-string v4, "AdDurationChange"

    aput-object v4, v3, v6

    const-string v4, "AdVolumeChange"

    aput-object v4, v3, v7

    const-string v4, "AdClickThru"

    aput-object v4, v3, v8

    const-string v4, "AdError"

    aput-object v4, v3, v9

    const/4 v4, 0x5

    const-string v5, "AdLog"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "AdRemainingTime"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "useCustomClose"

    aput-object v5, v3, v4

    :try_start_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "AdSkippableStateChange"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "AdDurationChange"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "AdVolumeChange"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v0, "state"

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v3, "AdError"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "AdLog"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v0, "msg"

    goto :goto_1

    :cond_5
    const-string v3, "AdClickThru"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v0, "url"

    goto :goto_1

    :cond_6
    const-string v3, "AdRemainingTime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "time"

    goto :goto_1

    :cond_7
    const-string v3, "useCustomClose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "useCustomClose"

    goto :goto_1

    :cond_8
    const-string v0, "url"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic c(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->b:Lcom/appodeal/ads/networks/vpaid/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->b:Lcom/appodeal/ads/networks/vpaid/a;

    invoke-interface {v0, p1}, Lcom/appodeal/ads/networks/vpaid/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->r:Lorg/nexage/sourcekit/vast/model/VASTModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->r:Lorg/nexage/sourcekit/vast/model/VASTModel;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/model/VASTModel;->sendError(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k()V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->r:Lorg/nexage/sourcekit/vast/model/VASTModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->r:Lorg/nexage/sourcekit/vast/model/VASTModel;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/model/VASTModel;->sendError(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Lcom/appodeal/ads/networks/vpaid/a;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->b:Lcom/appodeal/ads/networks/vpaid/a;

    return-object v0
.end method

.method static synthetic e(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    return v0
.end method

.method private f()Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x32

    new-instance v1, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;

    iget-object v2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method static synthetic f(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k()V

    return-void
.end method

.method private g()Landroid/view/View;
    .locals 4

    new-instance v1, Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    invoke-direct {v1, v0, v2}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->registerCallback(Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;)V

    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->t:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x42480000    # 50.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->v:Z

    return v0
.end method

.method static synthetic h(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a:Landroid/content/Context;

    return-object v0
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->d:Ljava/lang/String;

    const-string v1, "{VPAID_JS_URL}"

    iget-object v2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    const-string v1, "http://localhost"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpaid.setCreativeData("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j()V

    return-void
.end method

.method static synthetic i(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->i()V

    return-void
.end method

.method static synthetic j(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)F
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->m:F

    return v0
.end method

.method private j()V
    .locals 1

    const-string v0, "vpaid.loadAd()"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)F
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->n:F

    return v0
.end method

.method private k()V
    .locals 3

    const/4 v2, 0x2

    const-string v0, "VPAIDView"

    const-string v1, "closeView"

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/vpaid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    if-eq v0, v2, :cond_0

    iput v2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Landroid/webkit/WebView;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->e()V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->o:Lcom/appodeal/ads/networks/vpaid/VPAIDView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->o:Lcom/appodeal/ads/networks/vpaid/VPAIDView$a;

    invoke-interface {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$a;->a()V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j:I

    return v0
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    const-string v1, "#6b000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->i:I

    return v0
.end method

.method private m()V
    .locals 6

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->q:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k:Ljava/util/Timer;

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j:I

    return v0
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->h:Z

    if-nez v0, :cond_0

    const-string v0, "Skip video"

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->h:Z

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDView$8;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$8;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->o()V

    return-void
.end method

.method static synthetic p(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private p()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "vpaid.fireAdPauseEvent()"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->m()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "VPAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injecting js: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/vpaid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDView$6;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$6;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->g:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->n()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->h:Z

    return v0
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->p:I

    const-string v0, "vpaid.fireStartAdEvent()"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "vpaid.fireAdResumeEvent()"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method e()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->b:Lcom/appodeal/ads/networks/vpaid/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->b:Lcom/appodeal/ads/networks/vpaid/a;

    invoke-interface {v0}, Lcom/appodeal/ads/networks/vpaid/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->r:Lorg/nexage/sourcekit/vast/model/VASTModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->s:Ljava/util/HashMap;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->close:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public getListener()Lcom/appodeal/ads/networks/vpaid/a;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->b:Lcom/appodeal/ads/networks/vpaid/a;

    return-object v0
.end method

.method public setListener(Lcom/appodeal/ads/networks/vpaid/VPAIDView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->o:Lcom/appodeal/ads/networks/vpaid/VPAIDView$a;

    return-void
.end method

.method public wasComplained()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->u:Z

    return-void
.end method
