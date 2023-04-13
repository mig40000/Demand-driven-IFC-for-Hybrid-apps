.class public Lorg/nexage/sourcekit/mraid/MRAIDView;
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
        Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebViewClient;,
        Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebChromeClient;,
        Lorg/nexage/sourcekit/mraid/MRAIDView$Size;
    }
.end annotation


# static fields
.field private static final CLOSE_REGION_SIZE:I = 0x32

.field private static final PROGRESS_TIMER_INTERVAL:I = 0x28

.field public static final STATE_DEFAULT:I = 0x1

.field public static final STATE_EXPANDED:I = 0x2

.field public static final STATE_HIDDEN:I = 0x4

.field public static final STATE_LOADING:I = 0x0

.field public static final STATE_RESIZED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MRAIDView"

.field public static final VERSION:Ljava/lang/String; = "1.1.1"


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

.field private closeTime:I

.field private closeTimerPosition:I

.field private contentViewTop:I

.field private context:Landroid/content/Context;

.field private currentPosition:Landroid/graphics/Rect;

.field private currentWebView:Landroid/webkit/WebView;

.field private defaultPosition:Landroid/graphics/Rect;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private expandedView:Landroid/widget/RelativeLayout;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private handler:Landroid/os/Handler;

.field private interstitialActivity:Landroid/app/Activity;

.field private isActionBarShowing:Z

.field private isCloseClickable:Z

.field private isClosing:Z

.field private isComplained:Z

.field private isExpandingFromDefault:Z

.field private isExpandingPart2:Z

.field private isForceNotFullScreen:Z

.field private isForcingFullScreen:Z

.field private isFullScreen:Z

.field private final isInterstitial:Z

.field private isLaidOut:Z

.field private isPageFinished:Z

.field private isShown:Z

.field private isTouched:Z

.field private isViewable:Z

.field private listener:Lorg/nexage/sourcekit/mraid/MRAIDViewListener;

.field private mData:Ljava/lang/String;

.field private maxSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

.field private mraidJs:Ljava/lang/String;

.field private mraidWebChromeClient:Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebChromeClient;

.field private mraidWebViewClient:Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebViewClient;

.field private nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

.field private nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

.field private orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

.field private origTitleBarVisibility:I

.field private final originalRequestedOrientation:I

.field private preload:Z

.field private resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

.field private resizedView:Landroid/widget/RelativeLayout;

.field private rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

.field private screenSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

.field private state:I

.field private titleBar:Landroid/view/View;

.field private useCustomClose:Z

.field private webView:Landroid/webkit/WebView;

.field private webViewPart2:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;IILorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V
    .locals 13

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Lorg/nexage/sourcekit/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;ZIILorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;ZIILorg/nexage/sourcekit/mraid/rtb/RtbInfo;Z)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lorg/nexage/sourcekit/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;ZIILorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;ZIILorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZI)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isShown:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isCloseClickable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isTouched:Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeTimerPosition:I

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getLogLevel()Lcom/appodeal/ads/utils/Log$LogLevel;

    move-result-object v1

    sget-object v2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    if-ne v1, v2, :cond_4

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->verbose:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->setLoggingLevel(Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;)V

    :goto_0
    if-nez p4, :cond_0

    const/4 v1, 0x0

    new-array p4, v1, [Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isComplained:Z

    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    move/from16 v0, p7

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    move/from16 v0, p11

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->preload:Z

    move/from16 v0, p12

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeTime:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isViewable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->useCustomClose:Z

    new-instance v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    invoke-direct {v1}, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;-><init>()V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    new-instance v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    invoke-direct {v1}, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;-><init>()V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    new-instance v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p1, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDViewListener;

    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;Lorg/nexage/sourcekit/mraid/MRAIDView$1;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;Lorg/nexage/sourcekit/mraid/MRAIDView$1;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->originalRequestedOrientation:I

    :goto_1
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originalRequestedOrientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->originalRequestedOrientation:I

    invoke-static {v3}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getOrientationString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/nexage/sourcekit/mraid/MRAIDView$1;

    invoke-direct {v3, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$1;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebChromeClient;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;Lorg/nexage/sourcekit/mraid/MRAIDView$1;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidWebChromeClient:Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebChromeClient;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebViewClient;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;Lorg/nexage/sourcekit/mraid/MRAIDView$1;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidWebViewClient:Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v2, "#7F000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->addView(Landroid/view/View;)V

    if-eqz p10, :cond_1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->createReportButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->addView(Landroid/view/View;)V

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDView$2;

    invoke-direct {v2, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$2;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectMraidJs(Landroid/webkit/WebView;)V

    invoke-static {p3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDHtmlProcessor;->processRawHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-lt v2, v5, :cond_6

    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    iget v2, v3, Landroid/graphics/Point;->x:I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "status_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_2
    if-eqz p7, :cond_7

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v1, v3, v1

    :goto_3
    int-to-float v3, v2

    int-to-float v6, v1

    div-float/2addr v3, v6

    move/from16 v0, p8

    int-to-float v6, v0

    move/from16 v0, p9

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_9

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_8

    int-to-float v2, v1

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_4
    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v1, v2

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move/from16 v0, p8

    if-le v3, v0, :cond_10

    move/from16 v0, p9

    if-le v1, v0, :cond_10

    if-eqz p8, :cond_10

    if-eqz p9, :cond_10

    move/from16 v1, p9

    move/from16 v2, p8

    :goto_5
    const-string v3, "body, p {margin:0; padding:0} img {max-width:%dpx; max-height:%dpx} #appnext-interstitial {min-width:%dpx; min-height:%dpx;}img[width=\'%d\'][height=\'%d\'] {width: %dpx; height: %dpx} .appodeal-outer {display: table; position: absolute; height: 100%%; width: 100%%;}.appodeal-middle {display: table-cell; vertical-align: middle;}.appodeal-inner {margin-left: auto; margin-right: auto; width: %dpx; height: %dpx;}.ad_slug_table {margin-left: auto !important; margin-right: auto !important;} #ad[align=\'center\'] {height: %dpx;} #voxelPlayer {position: relative !important;} #lsm_mobile_ad #wrapper, #lsm_overlay {position: relative !important;}"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/16 v2, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<style type=\'text/css\'>%s</style><div class=\'appodeal-outer\'><div class=\'appodeal-middle\'><div class=\'appodeal-inner\'>%s</div></div></div>"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v1, 0x1

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mData:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->preload:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mData:Ljava/lang/String;

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->verbose:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_3
    :goto_7
    return-void

    :cond_4
    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-static {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->setLoggingLevel(Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->originalRequestedOrientation:I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    :cond_7
    move/from16 v0, p9

    int-to-float v1, v0

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto/16 :goto_3

    :cond_8
    int-to-float v1, v2

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_4

    :cond_9
    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p5

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDViewListener;->mraidViewLoaded(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    goto :goto_6

    :cond_b
    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->debug:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->info:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.INFO;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->warning:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.WARNING;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.ERROR;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->none:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.NONE;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_10
    move v2, v3

    goto/16 :goto_5
.end method

.method static synthetic access$1000(Lorg/nexage/sourcekit/mraid/MRAIDView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setViewable(I)V

    return-void
.end method

.method static synthetic access$1100(Lorg/nexage/sourcekit/mraid/MRAIDView;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->pauseWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/nexage/sourcekit/mraid/MRAIDView;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->resumeWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1302(Lorg/nexage/sourcekit/mraid/MRAIDView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isTouched:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/nexage/sourcekit/mraid/MRAIDView;)I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    return v0
.end method

.method static synthetic access$1402(Lorg/nexage/sourcekit/mraid/MRAIDView;I)I
    .locals 0

    iput p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    return p1
.end method

.method static synthetic access$1500(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeFromExpanded()V

    return-void
.end method

.method static synthetic access$1600(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeFromResized()V

    return-void
.end method

.method static synthetic access$1700(Lorg/nexage/sourcekit/mraid/MRAIDView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->removeResizeView()V

    return-void
.end method

.method static synthetic access$1900(Lorg/nexage/sourcekit/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/nexage/sourcekit/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/nexage/sourcekit/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/nexage/sourcekit/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lorg/nexage/sourcekit/mraid/MRAIDView;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectMraidJs(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/nexage/sourcekit/mraid/MRAIDView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/nexage/sourcekit/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/nexage/sourcekit/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/nexage/sourcekit/mraid/MRAIDView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isExpandingPart2:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/nexage/sourcekit/mraid/MRAIDView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isExpandingPart2:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/nexage/sourcekit/mraid/MRAIDView;Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandHelper(Landroid/webkit/WebView;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireStateChangeEvent()V

    return-void
.end method

.method static synthetic access$2800(Lorg/nexage/sourcekit/mraid/MRAIDView;Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->createInterstitialReportView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lorg/nexage/sourcekit/mraid/MRAIDView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/nexage/sourcekit/mraid/MRAIDView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isComplained:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/mraid/MRAIDViewListener;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDViewListener;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->restoreOriginalOrientation()V

    return-void
.end method

.method static synthetic access$3200(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->restoreOriginalScreenState()V

    return-void
.end method

.method static synthetic access$3300(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->close()V

    return-void
.end method

.method static synthetic access$3400(Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/vast/view/VastCountdown;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/nexage/sourcekit/mraid/MRAIDView;)I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeTimerPosition:I

    return v0
.end method

.method static synthetic access$3502(Lorg/nexage/sourcekit/mraid/MRAIDView;I)I
    .locals 0

    iput p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeTimerPosition:I

    return p1
.end method

.method static synthetic access$3602(Lorg/nexage/sourcekit/mraid/MRAIDView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isCloseClickable:Z

    return p1
.end method

.method static synthetic access$3700(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setResizedViewPosition()V

    return-void
.end method

.method static synthetic access$3802(Lorg/nexage/sourcekit/mraid/MRAIDView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isPageFinished:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/nexage/sourcekit/mraid/MRAIDView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/nexage/sourcekit/mraid/MRAIDView;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->createReportView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setSupportedServices()V

    return-void
.end method

.method static synthetic access$4100(Lorg/nexage/sourcekit/mraid/MRAIDView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isLaidOut:Z

    return v0
.end method

.method static synthetic access$4200(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setScreenSize()V

    return-void
.end method

.method static synthetic access$4300(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setMaxSize()V

    return-void
.end method

.method static synthetic access$4400(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setCurrentPosition()V

    return-void
.end method

.method static synthetic access$4500(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setDefaultPosition()V

    return-void
.end method

.method static synthetic access$4600(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireReadyEvent()V

    return-void
.end method

.method static synthetic access$4700(Lorg/nexage/sourcekit/mraid/MRAIDView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isViewable:Z

    return v0
.end method

.method static synthetic access$4800(Lorg/nexage/sourcekit/mraid/MRAIDView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireViewableChangeEvent()V

    return-void
.end method

.method static synthetic access$4900(Lorg/nexage/sourcekit/mraid/MRAIDView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->preload:Z

    return v0
.end method

.method static synthetic access$500(Lorg/nexage/sourcekit/mraid/MRAIDView;Landroid/webkit/WebView;ZIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/nexage/sourcekit/mraid/MRAIDView;->onLayoutWebView(Landroid/webkit/WebView;ZIIII)V

    return-void
.end method

.method static synthetic access$5000(Lorg/nexage/sourcekit/mraid/MRAIDView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/nexage/sourcekit/mraid/MRAIDView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->parseCommandUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lorg/nexage/sourcekit/mraid/MRAIDView;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->open(Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$600(Lorg/nexage/sourcekit/mraid/MRAIDView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    return v0
.end method

.method static synthetic access$700(Lorg/nexage/sourcekit/mraid/MRAIDView;)Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$800(Lorg/nexage/sourcekit/mraid/MRAIDView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addCloseRegion(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lorg/nexage/sourcekit/vast/view/VastCountdown;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$14;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$14;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->useCustomClose:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->showDefaultCloseButton()V

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private applyOrientationProperties()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyOrientationProperties "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v4, v4, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    invoke-virtual {v4}, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->interstitialActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    const-string v4, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentOrientation "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    const-string v3, "portrait"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget v3, v3, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    if-nez v3, :cond_4

    :cond_0
    :goto_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->interstitialActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v3, "landscape"

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget v3, v3, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    if-ne v3, v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v3, v3, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    if-eqz v3, :cond_6

    const/4 v1, -0x1

    goto :goto_2

    :cond_6
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_2
.end method

.method private calculateMaxSize()V
    .locals 6

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateMaxSize frame ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    iput v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->contentViewTop:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->contentViewTop:I

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->contentViewTop:I

    sub-int/2addr v0, v2

    const-string v3, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateMaxSize statusHeight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateMaxSize titleHeight "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateMaxSize contentViewTop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->contentViewTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iget v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->height:I

    iget v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->contentViewTop:I

    sub-int/2addr v1, v2

    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateMaxSize max size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->width:I

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->height:I

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iput v0, v2, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->width:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iput v1, v0, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->height:I

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setMaxSize()V

    :cond_2
    return-void
.end method

.method private calculatePosition(Z)V
    .locals 8

    const/4 v0, 0x2

    new-array v2, v0, [I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_3

    const-string v0, "current"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculatePosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " locationOnScreen ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculatePosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contentViewTop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->contentViewTop:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->contentViewTop:I

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const-string v5, "MRAIDView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculatePosition "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " position ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "] ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    :goto_2
    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-ne v3, v5, :cond_0

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    if-eqz p1, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v4, v3

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    :goto_3
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setCurrentPosition()V

    :cond_1
    :goto_4
    return-void

    :cond_2
    move-object v1, p0

    goto/16 :goto_0

    :cond_3
    const-string v0, "default"

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v4, v3

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setDefaultPosition()V

    goto :goto_4
.end method

.method private calculateScreenSize()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_2

    :goto_0
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateScreenSize orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_3

    const-string v0, "portrait"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateScreenSize screen size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->width:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->height:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iput v0, v2, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->width:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iput v1, v0, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->height:I

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setScreenSize()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v0, "landscape"

    goto :goto_1
.end method

.method private close()V
    .locals 2

    const-string v0, "MRAIDView-JS callback"

    const-string v1, "close"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isCloseClickable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->useCustomClose:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$6;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$6;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private closeFromExpanded()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->clearView()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$10;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$10;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isClosing:Z

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$11;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$11;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$12;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$12;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    iput v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidWebChromeClient:Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidWebViewClient:Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    goto :goto_1
.end method

.method private closeFromResized()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isClosing:Z

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->removeResizeView()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$13;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$13;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createCalendarEvent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MRAIDView-JS callback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCalendarEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCreateCalendarEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createInterstitialReportView(Landroid/app/Activity;)Landroid/view/View;
    .locals 4

    new-instance v1, Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-direct {v1, p1, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->registerCallback(Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;)V

    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

.method private createReportButton()Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x32

    new-instance v1, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

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

.method private createReportView()Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    new-instance v0, Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->registerCallback(Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;)V

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createWebView()Landroid/webkit/WebView;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDView$3;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView$3;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$4;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$4;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidWebChromeClient:Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidWebViewClient:Lorg/nexage/sourcekit/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method private expand(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string v1, "MRAIDView-JS callback"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expand "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-eq v0, v4, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "(1-part)"

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-ne v0, v3, :cond_7

    :cond_4
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandHelper(Landroid/webkit/WebView;Landroid/app/Activity;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-ne v0, v4, :cond_5

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->removeResizeView()V

    goto :goto_2

    :cond_8
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDView$7;

    invoke-direct {v2, p0, v0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDView$7;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;Ljava/lang/String;Landroid/app/Activity;)V

    const-string v0, "2-part-content"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private expandHelper(Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    :cond_0
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->applyOrientationProperties()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->forceFullScreen()V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->addCloseRegion(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setCloseRegionPosition(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->createReportButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$9;

    invoke-direct {v1, p0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDView$9;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->preload:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mData:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iput-boolean v7, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isExpandingFromDefault:Z

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_3

    iput-boolean v7, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isLaidOut:Z

    iput v7, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireStateChangeEvent()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private fireReadyEvent()V
    .locals 2

    const-string v0, "MRAIDView"

    const-string v1, "fireReadyEvent"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mraid.fireReadyEvent();"

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private fireStateChangeEvent()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "MRAIDView"

    const-string v1, "fireStateChangeEvent"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "loading"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "expanded"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "resized"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hidden"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.fireStateChangeEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private fireViewableChangeEvent()V
    .locals 2

    const-string v0, "MRAIDView"

    const-string v1, "fireViewableChangeEvent"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireViewableChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isViewable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private forceFullScreen()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "MRAIDView"

    const-string v1, "forceFullScreen"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v4, 0x400

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isFullScreen:Z

    and-int/lit16 v1, v4, 0x800

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isForceNotFullScreen:Z

    const/16 v1, -0x9

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->origTitleBarVisibility:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v4

    iput-boolean v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isActionBarShowing:Z

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    move v1, v2

    :goto_2
    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->titleBar:Landroid/view/View;

    const v1, 0x1020016

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->titleBar:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->titleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->titleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->origTitleBarVisibility:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->titleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFullScreen "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isFullScreen:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForceNotFullScreen "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isForceNotFullScreen:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActionBarShowing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isActionBarShowing:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "origTitleBarVisibility "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->origTitleBarVisibility:I

    invoke-static {v4}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isFullScreen:Z

    if-nez v0, :cond_3

    :goto_4
    iput-boolean v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isForcingFullScreen:Z

    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto/16 :goto_1

    :cond_3
    move v2, v3

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_4
    move v1, v3

    goto/16 :goto_2
.end method

.method private static getOrientationString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UNSPECIFIED"

    goto :goto_0

    :pswitch_1
    const-string v0, "LANDSCAPE"

    goto :goto_0

    :pswitch_2
    const-string v0, "PORTRAIT"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStringFromFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v2, v0, v2

    const-string v3, "android_asset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error fetching file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->e(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v0, "Unknown location to fetch file content"

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->e(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const-string v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getStringFromFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v3, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_5

    const-string v1, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentLength "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/16 v3, 0x5dc

    :try_start_1
    new-array v3, v3, [B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2
    :try_start_2
    const-string v3, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStringFromUrl failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    :try_start_5
    const-string v3, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStringFromUrl ok, length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_4
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_3
.end method

.method private static getVisibilityString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GONE"

    goto :goto_0

    :sswitch_1
    const-string v0, "INVISIBLE"

    goto :goto_0

    :sswitch_2
    const-string v0, "VISIBLE"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    :try_start_0
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluating js: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDView$17;

    invoke-direct {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$17;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private injectJavaScript(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private injectMraidJs(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ly8NCi8vICBtcmFpZC5qcw0KLy8NCg0KKGZ1bmN0aW9uKCkgew0KCQ0KCWNvbnNvbGUubG9nKCJN UkFJRCBvYmplY3QgbG9hZGluZy4uLiIpOw0KDQoJLyoqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKg0KCSAqIGNv bnNvbGUgbG9nZ2luZyBoZWxwZXINCgkgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovDQoNCgl2YXIgTG9nTGV2 ZWxFbnVtID0gew0KCQkiREVCVUciICAgOiAwLA0KCQkiSU5GTyIgICAgOiAxLA0KCQkiV0FSTklO RyIgOiAyLA0KCQkiRVJST1IiICAgOiAzLA0KCQkiTk9ORSIgICAgOiA0DQoJfTsNCg0KCXZhciBs b2dMZXZlbCA9IExvZ0xldmVsRW51bS5OT05FOw0KCXZhciBsb2cgPSB7fTsNCg0KCWxvZy5kID0g ZnVuY3Rpb24obXNnKSB7DQoJCWlmIChsb2dMZXZlbCA8PSBMb2dMZXZlbEVudW0uREVCVUcpIHsN CgkJCWNvbnNvbGUubG9nKCIoRC1tcmFpZC5qcykgIiArIG1zZyk7DQoJCX0NCgl9Ow0KDQoJbG9n LmkgPSBmdW5jdGlvbihtc2cpIHsNCgkJaWYgKGxvZ0xldmVsIDw9IExvZ0xldmVsRW51bS5JTkZP KSB7DQoJCQljb25zb2xlLmxvZygiKEktbXJhaWQuanMpICIgKyBtc2cpOw0KCQl9DQoJfTsNCg0K CWxvZy53ID0gZnVuY3Rpb24obXNnKSB7DQoJCWlmIChsb2dMZXZlbCA8PSBMb2dMZXZlbEVudW0u V0FSTklORykgew0KCQkJY29uc29sZS5sb2coIihXLW1yYWlkLmpzKSAiICsgbXNnKTsNCgkJfQ0K CX07DQoNCglsb2cuZSA9IGZ1bmN0aW9uKG1zZykgew0KCQlpZiAobG9nTGV2ZWwgPD0gTG9nTGV2 ZWxFbnVtLkVSUk9SKSB7DQoJCQljb25zb2xlLmxvZygiKEUtbXJhaWQuanMpICIgKyBtc2cpOw0K CQl9DQoJfTsNCg0KCS8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioNCgkgKiBNUkFJRCBkZWNsYXJhdGlvbg0K CSAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKi8NCg0KCXZhciBtcmFpZCA9IHdpbmRvdy5tcmFpZCA9IHt9Ow0K DQoJLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKg0KCSAqIGNvbnN0YW50cw0KCSAqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq Ki8NCg0KCXZhciBWRVJTSU9OID0gIjIuMCI7DQoNCgl2YXIgU1RBVEVTID0gbXJhaWQuU1RBVEVT ID0gew0KCQkiTE9BRElORyIgOiAibG9hZGluZyIsDQoJCSJERUZBVUxUIiA6ICJkZWZhdWx0IiwN CgkJIkVYUEFOREVEIiA6ICJleHBhbmRlZCIsDQoJCSJSRVNJWkVEIiA6ICJyZXNpemVkIiwNCgkJ IkhJRERFTiIgOiAiaGlkZGVuIg0KCX07DQoNCgl2YXIgUExBQ0VNRU5UX1RZUEVTID0gbXJhaWQu UExBQ0VNRU5UX1RZUEVTID0gew0KCQkiSU5MSU5FIiA6ICJpbmxpbmUiLA0KCQkiSU5URVJTVElU SUFMIiA6ICJpbnRlcnN0aXRpYWwiDQoJfTsNCg0KCXZhciBSRVNJWkVfUFJPUEVSVElFU19DVVNU T01fQ0xPU0VfUE9TSVRJT04gPSBtcmFpZC5SRVNJWkVfUFJPUEVSVElFU19DVVNUT01fQ0xPU0Vf UE9TSVRJT04gPSB7DQoJCSJUT1BfTEVGVCIgOiAidG9wLWxlZnQiLA0KCQkiVE9QX0NFTlRFUiIg OiAidG9wLWNlbnRlciIsDQoJCSJUT1BfUklHSFQiIDogInRvcC1yaWdodCIsDQoJCSJDRU5URVIi IDogImNlbnRlciIsDQoJCSJCT1RUT01fTEVGVCIgOiAiYm90dG9tLWxlZnQiLA0KCQkiQk9UVE9N X0NFTlRFUiIgOiAiYm90dG9tLWNlbnRlciIsDQoJCSJCT1RUT01fUklHSFQiIDogImJvdHRvbS1y aWdodCINCgl9Ow0KDQoJdmFyIE9SSUVOVEFUSU9OX1BST1BFUlRJRVNfRk9SQ0VfT1JJRU5UQVRJ T04gPSBtcmFpZC5PUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OID0gew0K CQkiUE9SVFJBSVQiIDogInBvcnRyYWl0IiwNCgkJIkxBTkRTQ0FQRSIgOiAibGFuZHNjYXBlIiwN CgkJIk5PTkUiIDogIm5vbmUiDQoJfTsNCg0KCXZhciBFVkVOVFMgPSBtcmFpZC5FVkVOVFMgPSB7 DQoJCSJFUlJPUiIgOiAiZXJyb3IiLA0KCQkiUkVBRFkiIDogInJlYWR5IiwNCgkJIlNJWkVDSEFO R0UiIDogInNpemVDaGFuZ2UiLA0KCQkiU1RBVEVDSEFOR0UiIDogInN0YXRlQ2hhbmdlIiwNCgkJ IlZJRVdBQkxFQ0hBTkdFIiA6ICJ2aWV3YWJsZUNoYW5nZSINCgl9Ow0KDQoJdmFyIFNVUFBPUlRF RF9GRUFUVVJFUyA9IG1yYWlkLlNVUFBPUlRFRF9GRUFUVVJFUyA9IHsNCgkJIlNNUyIgOiAic21z IiwNCgkJIlRFTCIgOiAidGVsIiwNCgkJIkNBTEVOREFSIiA6ICJjYWxlbmRhciIsDQoJCSJTVE9S RVBJQ1RVUkUiIDogInN0b3JlUGljdHVyZSIsDQoJCSJJTkxJTkVWSURFTyIgOiAiaW5saW5lVmlk ZW8iDQoJfTsNCg0KCS8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioNCgkgKiBzdGF0ZQ0KCSAqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKi8NCg0KCXZhciBzdGF0ZSA9IFNUQVRFUy5MT0FESU5HOw0KCXZhciBwbGFjZW1lbnRU eXBlID0gUExBQ0VNRU5UX1RZUEVTLklOTElORTsNCgl2YXIgc3VwcG9ydGVkRmVhdHVyZXMgPSB7 fTsNCgl2YXIgaXNWaWV3YWJsZSA9IGZhbHNlOw0KCXZhciBpc0V4cGFuZFByb3BlcnRpZXNTZXQg PSBmYWxzZTsNCgl2YXIgaXNSZXNpemVSZWFkeSA9IGZhbHNlOw0KDQoJdmFyIGV4cGFuZFByb3Bl cnRpZXMgPSB7DQoJCSJ3aWR0aCIgOiAwLA0KCQkiaGVpZ2h0IiA6IDAsDQoJCSJ1c2VDdXN0b21D bG9zZSIgOiBmYWxzZSwNCgkJImlzTW9kYWwiIDogdHJ1ZQ0KCX07DQoNCgl2YXIgb3JpZW50YXRp b25Qcm9wZXJ0aWVzID0gew0KCQkiYWxsb3dPcmllbnRhdGlvbkNoYW5nZSIgOiB0cnVlLA0KCQki Zm9yY2VPcmllbnRhdGlvbiIgOiBPUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFU SU9OLk5PTkUNCgl9Ow0KDQoJdmFyIHJlc2l6ZVByb3BlcnRpZXMgPSB7DQoJCSJ3aWR0aCIgOiAw LA0KCQkiaGVpZ2h0IiA6IDAsDQoJCSJjdXN0b21DbG9zZVBvc2l0aW9uIiA6IFJFU0laRV9QUk9Q RVJUSUVTX0NVU1RPTV9DTE9TRV9QT1NJVElPTi5UT1BfUklHSFQsDQoJCSJvZmZzZXRYIiA6IDAs DQoJCSJvZmZzZXRZIiA6IDAsDQoJCSJhbGxvd09mZnNjcmVlbiIgOiB0cnVlDQoJfTsNCg0KCXZh ciBjdXJyZW50UG9zaXRpb24gPSB7DQoJCSJ4IiA6IDAsDQoJCSJ5IiA6IDAsDQoJCSJ3aWR0aCIg OiAwLA0KCQkiaGVpZ2h0IiA6IDANCgl9Ow0KDQoJdmFyIGRlZmF1bHRQb3NpdGlvbiA9IHsNCgkJ IngiIDogMCwNCgkJInkiIDogMCwNCgkJIndpZHRoIiA6IDAsDQoJCSJoZWlnaHQiIDogMA0KCX07 DQoNCgl2YXIgbWF4U2l6ZSA9IHsNCgkJIndpZHRoIiA6IDAsDQoJCSJoZWlnaHQiIDogMA0KCX07 DQoNCgl2YXIgc2NyZWVuU2l6ZSA9IHsNCgkJIndpZHRoIiA6IDAsDQoJCSJoZWlnaHQiIDogMA0K CX07DQoNCgl2YXIgY3VycmVudE9yaWVudGF0aW9uID0gMDsNCg0KCXZhciBsaXN0ZW5lcnMgPSB7 fTsNCg0KCS8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioNCgkgKiAib2ZmaWNpYWwiIEFQSTogbWV0aG9kcyBj YWxsZWQgYnkgY3JlYXRpdmUNCgkgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovDQoNCgltcmFpZC5hZGRFdmVu dExpc3RlbmVyID0gZnVuY3Rpb24oZXZlbnQsIGxpc3RlbmVyKSB7DQoJCWxvZy5pKCJtcmFpZC5h ZGRFdmVudExpc3RlbmVyICIgKyBldmVudCArICI6ICIgKyBTdHJpbmcobGlzdGVuZXIpKTsNCgkJ aWYgKCFldmVudCB8fCAhbGlzdGVuZXIpIHsNCgkJCW1yYWlkLmZpcmVFcnJvckV2ZW50KCJCb3Ro IGV2ZW50IGFuZCBsaXN0ZW5lciBhcmUgcmVxdWlyZWQuIiwgImFkZEV2ZW50TGlzdGVuZXIiKTsN CgkJCXJldHVybjsNCgkJfQ0KCQlpZiAoIWNvbnRhaW5zKGV2ZW50LCBFVkVOVFMpKSB7DQoJCQlt cmFpZC5maXJlRXJyb3JFdmVudCgiVW5rbm93biBNUkFJRCBldmVudDogIiArIGV2ZW50LCAiYWRk RXZlbnRMaXN0ZW5lciIpOw0KCQkJcmV0dXJuOw0KCQl9DQoJCXZhciBsaXN0ZW5lcnNGb3JFdmVu dCA9IGxpc3RlbmVyc1tldmVudF0gPSBsaXN0ZW5lcnNbZXZlbnRdIHx8IFtdOw0KCQkvLyBjaGVj ayB0byBtYWtlIHN1cmUgdGhhdCB0aGUgbGlzdGVuZXIgaXNuJ3QgYWxyZWFkeSByZWdpc3RlcmVk DQoJCWZvciAodmFyIGkgPSAwOyBpIDwgbGlzdGVuZXJzRm9yRXZlbnQubGVuZ3RoOyBpKyspIHsN CgkJCXZhciBzdHIxID0gU3RyaW5nKGxpc3RlbmVyKTsNCgkJCXZhciBzdHIyID0gU3RyaW5nKGxp c3RlbmVyc0ZvckV2ZW50W2ldKTsNCgkJCWlmIChsaXN0ZW5lciA9PT0gbGlzdGVuZXJzRm9yRXZl bnRbaV0gfHwgc3RyMSA9PT0gc3RyMikgew0KCQkJCWxvZy5pKCJsaXN0ZW5lciAiICsgc3RyMSAr ICIgaXMgYWxyZWFkeSByZWdpc3RlcmVkIGZvciBldmVudCAiICsgZXZlbnQpOw0KCQkJCXJldHVy bjsNCgkJCX0NCgkJfQ0KCQlsaXN0ZW5lcnNGb3JFdmVudC5wdXNoKGxpc3RlbmVyKTsNCgl9Ow0K DQoJbXJhaWQuY3JlYXRlQ2FsZW5kYXJFdmVudCA9IGZ1bmN0aW9uKHBhcmFtZXRlcnMpIHsNCgkJ bG9nLmkoIm1yYWlkLmNyZWF0ZUNhbGVuZGFyRXZlbnQgd2l0aCAiICsgcGFyYW1ldGVycyk7DQoJ CWlmIChzdXBwb3J0ZWRGZWF0dXJlc1ttcmFpZC5TVVBQT1JURURfRkVBVFVSRVMuQ0FMRU5EQVJd KSB7DQoJCQljYWxsTmF0aXZlKCJjcmVhdGVDYWxlbmRhckV2ZW50P2V2ZW50SlNPTj0iCSsgSlNP Ti5zdHJpbmdpZnkocGFyYW1ldGVycykpOw0KCQl9IGVsc2Ugew0KCQkJbG9nLmUoImNyZWF0ZUNh bGVuZGFyRXZlbnQgaXMgbm90IHN1cHBvcnRlZCIpOw0KCQl9DQoJfTsNCg0KCW1yYWlkLmNsb3Nl ID0gZnVuY3Rpb24oKSB7DQoJCWxvZy5pKCJtcmFpZC5jbG9zZSIpOw0KCQlpZiAoc3RhdGUgPT09 IFNUQVRFUy5MT0FESU5HDQoJCQkJfHwgKHN0YXRlID09PSBTVEFURVMuREVGQVVMVCAmJiBwbGFj ZW1lbnRUeXBlID09PSBQTEFDRU1FTlRfVFlQRVMuSU5MSU5FKQ0KCQkJCXx8IHN0YXRlID09PSBT VEFURVMuSElEREVOKSB7DQoJCQkvLyBkbyBub3RoaW5nDQoJCQlyZXR1cm47DQoJCX0NCgkJY2Fs bE5hdGl2ZSgiY2xvc2UiKTsNCgl9Ow0KDQoJbXJhaWQuZXhwYW5kID0gZnVuY3Rpb24odXJsKSB7 DQoJCWlmICh1cmwgPT09IHVuZGVmaW5lZCkgew0KCQkJbG9nLmkoIm1yYWlkLmV4cGFuZCAoMS1w YXJ0KSIpOw0KCQl9IGVsc2Ugew0KCQkJbG9nLmkoIm1yYWlkLmV4cGFuZCAiICsgdXJsKTsNCgkJ fQ0KCQkvLyBUaGUgb25seSB0aW1lIGl0IGlzIHZhbGlkIHRvIGNhbGwgZXhwYW5kIGlzIHdoZW4g dGhlIGFkIGlzDQoJCS8vIGEgYmFubmVyIGN1cnJlbnRseSBpbiBlaXRoZXIgZGVmYXVsdCBvciBy ZXNpemVkIHN0YXRlLg0KCQlpZiAocGxhY2VtZW50VHlwZSAhPT0gUExBQ0VNRU5UX1RZUEVTLklO TElORQ0KCQkJCXx8IChzdGF0ZSAhPT0gU1RBVEVTLkRFRkFVTFQgJiYgc3RhdGUgIT09IFNUQVRF Uy5SRVNJWkVEKSkgew0KCQkJcmV0dXJuOw0KCQl9DQoJCWlmICh1cmwgPT09IHVuZGVmaW5lZCkg ew0KCQkJY2FsbE5hdGl2ZSgiZXhwYW5kIik7DQoJCX0gZWxzZSB7DQoJCQljYWxsTmF0aXZlKCJl eHBhbmQ/dXJsPSIgKyBlbmNvZGVVUklDb21wb25lbnQodXJsKSk7DQoJCX0NCgl9Ow0KDQoJbXJh aWQuZ2V0Q3VycmVudFBvc2l0aW9uID0gZnVuY3Rpb24oKSB7DQoJCWxvZy5pKCJtcmFpZC5nZXRD dXJyZW50UG9zaXRpb24iKTsNCgkJcmV0dXJuIGN1cnJlbnRQb3NpdGlvbjsNCgl9Ow0KDQoJbXJh aWQuZ2V0RGVmYXVsdFBvc2l0aW9uID0gZnVuY3Rpb24oKSB7DQoJCWxvZy5pKCJtcmFpZC5nZXRE ZWZhdWx0UG9zaXRpb24iKTsNCgkJcmV0dXJuIGRlZmF1bHRQb3NpdGlvbjsNCgl9Ow0KDQoJbXJh aWQuZ2V0RXhwYW5kUHJvcGVydGllcyA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuZ2V0 RXhwYW5kUHJvcGVydGllcyIpOw0KCQlyZXR1cm4gZXhwYW5kUHJvcGVydGllczsNCgl9Ow0KDQoJ bXJhaWQuZ2V0TWF4U2l6ZSA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuZ2V0TWF4U2l6 ZSIpOw0KCQlyZXR1cm4gbWF4U2l6ZTsNCgl9Ow0KDQoJbXJhaWQuZ2V0T3JpZW50YXRpb25Qcm9w ZXJ0aWVzID0gZnVuY3Rpb24oKSB7DQoJCWxvZy5pKCJtcmFpZC5nZXRPcmllbnRhdGlvblByb3Bl cnRpZXMiKTsNCgkJcmV0dXJuIG9yaWVudGF0aW9uUHJvcGVydGllczsNCgl9Ow0KDQoJbXJhaWQu Z2V0UGxhY2VtZW50VHlwZSA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuZ2V0UGxhY2Vt ZW50VHlwZSIpOw0KCQlyZXR1cm4gcGxhY2VtZW50VHlwZTsNCgl9Ow0KDQoJbXJhaWQuZ2V0UmVz aXplUHJvcGVydGllcyA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuZ2V0UmVzaXplUHJv cGVydGllcyIpOw0KCQlyZXR1cm4gcmVzaXplUHJvcGVydGllczsNCgl9Ow0KDQoJbXJhaWQuZ2V0 U2NyZWVuU2l6ZSA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuZ2V0U2NyZWVuU2l6ZSIp Ow0KCQlyZXR1cm4gc2NyZWVuU2l6ZTsNCgl9Ow0KDQoJbXJhaWQuZ2V0U3RhdGUgPSBmdW5jdGlv bigpIHsNCgkJbG9nLmkoIm1yYWlkLmdldFN0YXRlIik7DQoJCXJldHVybiBzdGF0ZTsNCgl9Ow0K DQoJbXJhaWQuZ2V0VmVyc2lvbiA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuZ2V0VmVy c2lvbiIpOw0KCQlyZXR1cm4gVkVSU0lPTjsNCgl9Ow0KDQoJbXJhaWQuaXNWaWV3YWJsZSA9IGZ1 bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuaXNWaWV3YWJsZSIpOw0KCQlyZXR1cm4gaXNWaWV3 YWJsZTsNCgl9Ow0KDQoJbXJhaWQub3BlbiA9IGZ1bmN0aW9uKHVybCkgew0KCQlsb2cuaSgibXJh aWQub3BlbiAiICsgdXJsKTsNCgkJY2FsbE5hdGl2ZSgib3Blbj91cmw9IiArIGVuY29kZVVSSUNv bXBvbmVudCh1cmwpKTsNCgl9Ow0KDQoJbXJhaWQucGxheVZpZGVvID0gZnVuY3Rpb24odXJsKSB7 DQoJCWxvZy5pKCJtcmFpZC5wbGF5VmlkZW8gIiArIHVybCk7DQoJCWNhbGxOYXRpdmUoInBsYXlW aWRlbz91cmw9IiArIGVuY29kZVVSSUNvbXBvbmVudCh1cmwpKTsNCgl9Ow0KDQoJbXJhaWQucmVt b3ZlRXZlbnRMaXN0ZW5lciA9IGZ1bmN0aW9uKGV2ZW50LCBsaXN0ZW5lcikgew0KCQlsb2cuaSgi bXJhaWQucmVtb3ZlRXZlbnRMaXN0ZW5lciAiICsgZXZlbnQgKyAiIDogIiArIFN0cmluZyhsaXN0 ZW5lcikpOw0KCQlpZiAoIWV2ZW50KSB7DQoJCQltcmFpZC5maXJlRXJyb3JFdmVudCgiRXZlbnQg aXMgcmVxdWlyZWQuIiwgInJlbW92ZUV2ZW50TGlzdGVuZXIiKTsNCgkJCXJldHVybjsNCgkJfQ0K CQlpZiAoIWNvbnRhaW5zKGV2ZW50LCBFVkVOVFMpKSB7DQoJCQltcmFpZC5maXJlRXJyb3JFdmVu dCgiVW5rbm93biBNUkFJRCBldmVudDogIiArIGV2ZW50LCAicmVtb3ZlRXZlbnRMaXN0ZW5lciIp Ow0KCQkJcmV0dXJuOw0KCQl9DQoJCWlmIChsaXN0ZW5lcnMuaGFzT3duUHJvcGVydHkoZXZlbnQp KSB7DQoJCQlpZiAobGlzdGVuZXIpIHsNCgkJCQl2YXIgbGlzdGVuZXJzRm9yRXZlbnQgPSBsaXN0 ZW5lcnNbZXZlbnRdOw0KCQkJCS8vIHRyeSB0byBmaW5kIHRoZSBnaXZlbiBsaXN0ZW5lcg0KCQkJ CXZhciBsZW4gPSBsaXN0ZW5lcnNGb3JFdmVudC5sZW5ndGg7DQoJCQkJZm9yICh2YXIgaSA9IDA7 IGkgPCBsZW47IGkrKykgew0KCQkJCQl2YXIgcmVnaXN0ZXJlZExpc3RlbmVyID0gbGlzdGVuZXJz Rm9yRXZlbnRbaV07DQoJCQkJCXZhciBzdHIxID0gU3RyaW5nKGxpc3RlbmVyKTsNCgkJCQkJdmFy IHN0cjIgPSBTdHJpbmcocmVnaXN0ZXJlZExpc3RlbmVyKTsNCgkJCQkJaWYgKGxpc3RlbmVyID09 PSByZWdpc3RlcmVkTGlzdGVuZXIgfHwgc3RyMSA9PT0gc3RyMikgew0KCQkJCQkJbGlzdGVuZXJz Rm9yRXZlbnQuc3BsaWNlKGksIDEpOw0KCQkJCQkJYnJlYWs7DQoJCQkJCX0NCgkJCQl9DQoJCQkJ aWYgKGkgPT09IGxlbikgew0KCQkJCQlsb2cuaSgibGlzdGVuZXIgIiArIHN0cjEgKyAiIG5vdCBm b3VuZCBmb3IgZXZlbnQgIiArIGV2ZW50KTsNCgkJCQl9DQoJCQkJaWYgKGxpc3RlbmVyc0ZvckV2 ZW50Lmxlbmd0aCA9PT0gMCkgew0KCQkJCQlkZWxldGUgbGlzdGVuZXJzW2V2ZW50XTsNCgkJCQl9 DQoJCQl9IGVsc2Ugew0KCQkJCS8vIG5vIGxpc3RlbmVyIHRvIHJlbW92ZSB3YXMgcHJvdmlkZWQs IHNvIHJlbW92ZSBhbGwgbGlzdGVuZXJzDQoJCQkJLy8gZm9yIGdpdmVuIGV2ZW50DQoJCQkJZGVs ZXRlIGxpc3RlbmVyc1tldmVudF07DQoJCQl9DQoJCX0gZWxzZSB7DQoJCQlsb2cuaSgibm8gbGlz dGVuZXJzIHJlZ2lzdGVyZWQgZm9yIGV2ZW50ICIgKyBldmVudCk7DQoJCX0NCgl9Ow0KDQoJbXJh aWQucmVzaXplID0gZnVuY3Rpb24oKSB7DQoJCWxvZy5pKCJtcmFpZC5yZXNpemUiKTsNCgkJLy8g VGhlIG9ubHkgdGltZSBpdCBpcyB2YWxpZCB0byBjYWxsIHJlc2l6ZSBpcyB3aGVuIHRoZSBhZCBp cw0KCQkvLyBhIGJhbm5lciBjdXJyZW50bHkgaW4gZWl0aGVyIGRlZmF1bHQgb3IgcmVzaXplZCBz dGF0ZS4NCgkJLy8gVHJpZ2dlciBhbiBlcnJvciBpZiB0aGUgY3VycmVudCBzdGF0ZSBpcyBleHBh bmRlZC4NCgkJaWYgKHBsYWNlbWVudFR5cGUgPT09IFBMQUNFTUVOVF9UWVBFUy5JTlRFUlNUSVRJ QUwgfHwgc3RhdGUgPT09IFNUQVRFUy5MT0FESU5HIHx8IHN0YXRlID09PSBTVEFURVMuSElEREVO KSB7DQoJCQkvLyBkbyBub3RoaW5nDQoJCQlyZXR1cm47DQoJCX0NCgkJaWYgKHN0YXRlID09PSBT VEFURVMuRVhQQU5ERUQpIHsNCgkJCW1yYWlkLmZpcmVFcnJvckV2ZW50KCJtcmFpZC5yZXNpemUg Y2FsbGVkIHdoZW4gYWQgaXMgaW4gZXhwYW5kZWQgc3RhdGUiLCAibXJhaWQucmVzaXplIik7DQoJ CQlyZXR1cm47DQoJCX0NCgkJaWYgKCFpc1Jlc2l6ZVJlYWR5KSB7DQoJCQltcmFpZC5maXJlRXJy b3JFdmVudCgibXJhaWQucmVzaXplIGlzIG5vdCByZWFkeSB0byBiZSBjYWxsZWQiLCAibXJhaWQu cmVzaXplIik7DQoJCQlyZXR1cm47DQoJCX0NCgkJY2FsbE5hdGl2ZSgicmVzaXplIik7DQoJfTsN Cg0KCW1yYWlkLnNldEV4cGFuZFByb3BlcnRpZXMgPSBmdW5jdGlvbihwcm9wZXJ0aWVzKSB7DQoJ CWxvZy5pKCJtcmFpZC5zZXRFeHBhbmRQcm9wZXJ0aWVzIik7DQoNCgkJaWYgKCF2YWxpZGF0ZShw cm9wZXJ0aWVzLCAic2V0RXhwYW5kUHJvcGVydGllcyIpKSB7DQoJCQlsb2cuZSgiZmFpbGVkIHZh bGlkYXRpb24iKTsNCgkJCXJldHVybjsNCgkJfQ0KDQoJCXZhciBvbGRVc2VDdXN0b21DbG9zZSA9 IGV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2U7DQoNCgkJLy8gZXhwYW5kUHJvcGVydGll cyBjb250YWlucyAzIHJlYWQtd3JpdGUgcHJvcGVydGllczogd2lkdGgsIGhlaWdodCwgYW5kIHVz ZUN1c3RvbUNsb3NlOw0KCQkvLyB0aGUgaXNNb2RhbCBwcm9wZXJ0eSBpcyByZWFkLW9ubHkNCgkJ dmFyIHJ3UHJvcHMgPSBbICJ3aWR0aCIsICJoZWlnaHQiLCAidXNlQ3VzdG9tQ2xvc2UiIF07DQoJ CWZvciAodmFyIGkgPSAwOyBpIDwgcndQcm9wcy5sZW5ndGg7IGkrKykgew0KCQkJdmFyIHByb3Bu YW1lID0gcndQcm9wc1tpXTsNCgkJCWlmIChwcm9wZXJ0aWVzLmhhc093blByb3BlcnR5KHByb3Bu YW1lKSkgew0KCQkJCWV4cGFuZFByb3BlcnRpZXNbcHJvcG5hbWVdID0gcHJvcGVydGllc1twcm9w bmFtZV07DQoJCQl9DQoJCX0NCg0KCQkvLyBJbiBNUkFJRCB2Mi4wLCBhbGwgZXhwYW5kZWQgYWRz IGJ5IGRlZmluaXRpb24gY292ZXIgdGhlIGVudGlyZSBzY3JlZW4sDQoJCS8vIHNvIHRoZSBvbmx5 IHByb3BlcnR5IHRoYXQgdGhlIG5hdGl2ZSBzaWRlIGhhcyB0byBrbm93IGFib3V0IGlzIHVzZUN1 c3RvbUNsb3NlLg0KCQkvLyAoVGhhdCBpcywgdGhlIHdpZHRoIGFuZCBoZWlnaHQgcHJvcGVydGll cyBhcmUgbm90IG5lZWRlZCBieSB0aGUgbmF0aXZlIGNvZGUuKQ0KCQlpZiAoZXhwYW5kUHJvcGVy dGllcy51c2VDdXN0b21DbG9zZSAhPT0gb2xkVXNlQ3VzdG9tQ2xvc2UpIHsNCgkJCWNhbGxOYXRp dmUoInVzZUN1c3RvbUNsb3NlP3VzZUN1c3RvbUNsb3NlPSIJKyBleHBhbmRQcm9wZXJ0aWVzLnVz ZUN1c3RvbUNsb3NlKTsNCgkJfQ0KCQkNCgkJaXNFeHBhbmRQcm9wZXJ0aWVzU2V0ID0gdHJ1ZTsN Cgl9Ow0KDQoJbXJhaWQuc2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzID0gZnVuY3Rpb24ocHJvcGVy dGllcykgew0KCQlsb2cuaSgibXJhaWQuc2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIik7DQoNCgkJ aWYgKCF2YWxpZGF0ZShwcm9wZXJ0aWVzLCAic2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIikpIHsN CgkJCWxvZy5lKCJmYWlsZWQgdmFsaWRhdGlvbiIpOw0KCQkJcmV0dXJuOw0KCQl9DQoNCgkJdmFy IG5ld09yaWVudGF0aW9uUHJvcGVydGllcyA9IHt9Ow0KCQluZXdPcmllbnRhdGlvblByb3BlcnRp ZXMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZSA9IG9yaWVudGF0aW9uUHJvcGVydGllcy5hbGxvd09y aWVudGF0aW9uQ2hhbmdlLA0KCQluZXdPcmllbnRhdGlvblByb3BlcnRpZXMuZm9yY2VPcmllbnRh dGlvbiA9IG9yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uOw0KDQoJCS8vIG9y aWVudGF0aW9uUHJvcGVydGllcyBjb250YWlucyAyIHJlYWQtd3JpdGUgcHJvcGVydGllczoNCgkJ Ly8gYWxsb3dPcmllbnRhdGlvbkNoYW5nZSBhbmQgZm9yY2VPcmllbnRhdGlvbg0KCQl2YXIgcndQ cm9wcyA9IFsgImFsbG93T3JpZW50YXRpb25DaGFuZ2UiLCAiZm9yY2VPcmllbnRhdGlvbiIgXTsN CgkJZm9yICh2YXIgaSA9IDA7IGkgPCByd1Byb3BzLmxlbmd0aDsgaSsrKSB7DQoJCQl2YXIgcHJv cG5hbWUgPSByd1Byb3BzW2ldOw0KCQkJaWYgKHByb3BlcnRpZXMuaGFzT3duUHJvcGVydHkocHJv cG5hbWUpKSB7DQoJCQkJbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzW3Byb3BuYW1lXSA9IHByb3Bl cnRpZXNbcHJvcG5hbWVdOw0KCQkJfQ0KCQl9DQoNCgkJLy8gU2V0dGluZyBhbGxvd09yaWVudGF0 aW9uQ2hhbmdlIHRvIHRydWUgd2hpbGUgc2V0dGluZyBmb3JjZU9yaWVudGF0aW9uDQoJCS8vIHRv IGVpdGhlciBwb3J0cmFpdCBvciBsYW5kc2NhcGUNCgkJLy8gaXMgY29uc2lkZXJlZCBhbiBlcnJv ciBjb25kaXRpb24uDQoJCWlmIChuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmllbnRh dGlvbkNoYW5nZQ0KCQkJCSYmIG5ld09yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0 aW9uICE9PSBtcmFpZC5PUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OLk5P TkUpIHsNCgkJCW1yYWlkLmZpcmVFcnJvckV2ZW50KA0KCQkJCQkiYWxsb3dPcmllbnRhdGlvbkNo YW5nZSBpcyB0cnVlIGJ1dCBmb3JjZU9yaWVudGF0aW9uIGlzICINCgkJCQkJKyBuZXdPcmllbnRh dGlvblByb3BlcnRpZXMuZm9yY2VPcmllbnRhdGlvbiwNCgkJCQkJInNldE9yaWVudGF0aW9uUHJv cGVydGllcyIpOw0KCQkJcmV0dXJuOw0KCQl9DQoNCgkJb3JpZW50YXRpb25Qcm9wZXJ0aWVzLmFs bG93T3JpZW50YXRpb25DaGFuZ2UgPSBuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmll bnRhdGlvbkNoYW5nZTsNCgkJb3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb24g PSBuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuZm9yY2VPcmllbnRhdGlvbjsNCg0KCQl2YXIgcGFy YW1zID0gImFsbG93T3JpZW50YXRpb25DaGFuZ2U9Ig0KCQkJCSsgb3JpZW50YXRpb25Qcm9wZXJ0 aWVzLmFsbG93T3JpZW50YXRpb25DaGFuZ2UNCgkJCQkrICImZm9yY2VPcmllbnRhdGlvbj0iICsg b3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb247DQoNCgkJY2FsbE5hdGl2ZSgi c2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzPyIgKyBwYXJhbXMpOw0KCX07DQoNCgltcmFpZC5zZXRS ZXNpemVQcm9wZXJ0aWVzID0gZnVuY3Rpb24ocHJvcGVydGllcykgew0KCQlsb2cuaSgibXJhaWQu c2V0UmVzaXplUHJvcGVydGllcyIpOw0KCQkNCgkJaXNSZXNpemVSZWFkeSA9IGZhbHNlOw0KDQoJ CS8vIHJlc2l6ZVByb3BlcnRpZXMgY29udGFpbnMgNiByZWFkLXdyaXRlIHByb3BlcnRpZXM6DQoJ CS8vIHdpZHRoLCBoZWlnaHQsIG9mZnNldFgsIG9mZnNldFksIGN1c3RvbUNsb3NlUG9zaXRpb24s IGFsbG93T2Zmc2NyZWVuDQoNCgkJLy8gVGhlIHByb3BlcnRpZXMgb2JqZWN0IHBhc3NlZCBpbnRv IHRoaXMgZnVuY3Rpb24gbXVzdCBjb250YWluIHdpZHRoLCBoZWlnaHQsIG9mZnNldFgsIG9mZnNl dFkuDQoJCS8vIFRoZSByZW1haW5pbmcgdHdvIHByb3BlcnRpZXMgYXJlIG9wdGlvbmFsLg0KCQl2 YXIgcmVxdWlyZWRQcm9wcyA9IFsgIndpZHRoIiwgImhlaWdodCIsICJvZmZzZXRYIiwgIm9mZnNl dFkiIF07DQoJCWZvciAodmFyIGkgPSAwOyBpIDwgcmVxdWlyZWRQcm9wcy5sZW5ndGg7IGkrKykg ew0KCQkJdmFyIHByb3BuYW1lID0gcmVxdWlyZWRQcm9wc1tpXTsNCgkJCWlmICghcHJvcGVydGll cy5oYXNPd25Qcm9wZXJ0eShwcm9wbmFtZSkpIHsNCgkJCQltcmFpZC5maXJlRXJyb3JFdmVudCgN CgkJCQkJCSJyZXF1aXJlZCBwcm9wZXJ0eSAiICsgcHJvcG5hbWUgKyAiIGlzIG1pc3NpbmciLA0K CQkJCQkJIm1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKTsNCgkJCQlyZXR1cm47DQoJCQl9DQoJ CX0NCgkJDQoJCWlmICghdmFsaWRhdGUocHJvcGVydGllcywgInNldFJlc2l6ZVByb3BlcnRpZXMi KSkgew0KCQkJbXJhaWQuZmlyZUVycm9yRXZlbnQoImZhaWxlZCB2YWxpZGF0aW9uIiwgIm1yYWlk LnNldFJlc2l6ZVByb3BlcnRpZXMiKTsNCgkJCXJldHVybjsNCgkJfQ0KCQkNCiAgICAgICAgdmFy IGFkanVzdG1lbnRzID0geyAieCI6IDAsICJ5IjogMCB9Ow0KCQkNCgkJdmFyIGFsbG93T2Zmc2Ny ZWVuID0gcHJvcGVydGllcy5oYXNPd25Qcm9wZXJ0eSgiYWxsb3dPZmZzY3JlZW4iKSA/IHByb3Bl cnRpZXMuYWxsb3dPZmZzY3JlZW4gOiByZXNpemVQcm9wZXJ0aWVzLmFsbG93T2Zmc2NyZWVuOw0K ICAgICAgICBpZiAoIWFsbG93T2Zmc2NyZWVuKSB7DQogICAgICAgICAgICBpZiAocHJvcGVydGll cy53aWR0aCA+IG1heFNpemUud2lkdGggfHwgcHJvcGVydGllcy5oZWlnaHQgPiBtYXhTaXplLmhl aWdodCkgew0KICAgICAgICAgICAgICAgIG1yYWlkLmZpcmVFcnJvckV2ZW50KCJyZXNpemUgd2lk dGggb3IgaGVpZ2h0IGlzIGdyZWF0ZXIgdGhhbiB0aGUgbWF4U2l6ZSB3aWR0aCBvciBoZWlnaHQi LCAibXJhaWQuc2V0UmVzaXplUHJvcGVydGllcyIpOw0KICAgICAgICAgICAgICAgIHJldHVybjsN CiAgICAgICAgICAgIH0NCiAgICAgICAgICAgIGFkanVzdG1lbnRzID0gZml0UmVzaXplVmlld09u U2NyZWVuKHByb3BlcnRpZXMpOw0KICAgICAgICB9IGVsc2UgaWYgKCFpc0Nsb3NlUmVnaW9uT25T Y3JlZW4ocHJvcGVydGllcykpIHsNCiAgICAgICAgICAgIG1yYWlkLmZpcmVFcnJvckV2ZW50KCJj bG9zZSBldmVudCByZWdpb24gd2lsbCBub3QgYXBwZWFyIGVudGlyZWx5IG9uc2NyZWVuIiwgIm1y YWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKTsNCiAgICAgICAgICAgIHJldHVybjsNCiAgICAgICAg fQ0KCQkNCgkJdmFyIHJ3UHJvcHMgPSBbICJ3aWR0aCIsICJoZWlnaHQiLCAib2Zmc2V0WCIsICJv ZmZzZXRZIiwgImN1c3RvbUNsb3NlUG9zaXRpb24iLCAiYWxsb3dPZmZzY3JlZW4iIF07DQoJCWZv ciAodmFyIGkgPSAwOyBpIDwgcndQcm9wcy5sZW5ndGg7IGkrKykgew0KCQkJdmFyIHByb3BuYW1l ID0gcndQcm9wc1tpXTsNCgkJCWlmIChwcm9wZXJ0aWVzLmhhc093blByb3BlcnR5KHByb3BuYW1l KSkgew0KCQkJCXJlc2l6ZVByb3BlcnRpZXNbcHJvcG5hbWVdID0gcHJvcGVydGllc1twcm9wbmFt ZV07DQoJCQl9DQoJCX0NCgkJDQoJCXZhciBwYXJhbXMgPQ0KCQkJIndpZHRoPSIgKyByZXNpemVQ cm9wZXJ0aWVzLndpZHRoICsNCgkJCSImaGVpZ2h0PSIgKyByZXNpemVQcm9wZXJ0aWVzLmhlaWdo dCArDQoJICAgICAgICAiJm9mZnNldFg9IiArIChyZXNpemVQcm9wZXJ0aWVzLm9mZnNldFggKyBh ZGp1c3RtZW50cy54KSArDQoJICAgICAgICAiJm9mZnNldFk9IiArIChyZXNpemVQcm9wZXJ0aWVz Lm9mZnNldFkgKyBhZGp1c3RtZW50cy55KSArDQoJCQkiJmN1c3RvbUNsb3NlUG9zaXRpb249IiAr IHJlc2l6ZVByb3BlcnRpZXMuY3VzdG9tQ2xvc2VQb3NpdGlvbiArDQoJCQkiJmFsbG93T2Zmc2Ny ZWVuPSIgKyByZXNpemVQcm9wZXJ0aWVzLmFsbG93T2Zmc2NyZWVuOw0KDQoJCWNhbGxOYXRpdmUo InNldFJlc2l6ZVByb3BlcnRpZXM/IiArIHBhcmFtcyk7DQoNCgkJaXNSZXNpemVSZWFkeSA9IHRy dWU7DQoJfTsNCg0KCW1yYWlkLnN0b3JlUGljdHVyZSA9IGZ1bmN0aW9uKHVybCkgew0KCQlsb2cu aSgibXJhaWQuc3RvcmVQaWN0dXJlICIgKyB1cmwpOw0KCQlpZiAoc3VwcG9ydGVkRmVhdHVyZXNb bXJhaWQuU1VQUE9SVEVEX0ZFQVRVUkVTLlNUT1JFUElDVFVSRV0pIHsNCgkJCWNhbGxOYXRpdmUo InN0b3JlUGljdHVyZT91cmw9IiArIGVuY29kZVVSSUNvbXBvbmVudCh1cmwpKTsNCgkJfSBlbHNl IHsNCgkJCWxvZy5lKCJzdG9yZVBpY3R1cmUgaXMgbm90IHN1cHBvcnRlZCIpOw0KCQl9DQoJfTsN Cg0KCW1yYWlkLnN1cHBvcnRzID0gZnVuY3Rpb24oZmVhdHVyZSkgew0KCQlsb2cuaSgibXJhaWQu c3VwcG9ydHMgIiArIGZlYXR1cmUgKyAiICIgKyBzdXBwb3J0ZWRGZWF0dXJlc1tmZWF0dXJlXSk7 DQoJCXZhciByZXR2YWwgPSBzdXBwb3J0ZWRGZWF0dXJlc1tmZWF0dXJlXTsNCgkJaWYgKHR5cGVv ZiByZXR2YWwgPT09ICJ1bmRlZmluZWQiKSB7DQoJCQlyZXR2YWwgPSBmYWxzZTsNCgkJfQ0KCQly ZXR1cm4gcmV0dmFsOw0KCX07DQoNCgltcmFpZC51c2VDdXN0b21DbG9zZSA9IGZ1bmN0aW9uKGlz Q3VzdG9tQ2xvc2UpIHsNCgkJbG9nLmkoIm1yYWlkLnVzZUN1c3RvbUNsb3NlICIgKyBpc0N1c3Rv bUNsb3NlKTsNCgkJaWYgKGV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2UgIT09IGlzQ3Vz dG9tQ2xvc2UpIHsNCgkJCWV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2UgPSBpc0N1c3Rv bUNsb3NlOw0KCQkJY2FsbE5hdGl2ZSgidXNlQ3VzdG9tQ2xvc2U/dXNlQ3VzdG9tQ2xvc2U9Ig0K CQkJCQkrIGV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2UpOw0KCQl9DQoJfTsNCg0KCS8q KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioNCgkgKiBoZWxwZXIgbWV0aG9kcyBjYWxsZWQgYnkgU0RLDQoJICoq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqLw0KDQoJLy8gc2V0dGVycyB0byBjaGFuZ2Ugc3RhdGUNCgltcmFpZC5z ZXRDdXJyZW50UG9zaXRpb24gPSBmdW5jdGlvbih4LCB5LCB3aWR0aCwgaGVpZ2h0KSB7DQoJCWxv Zy5pKCJtcmFpZC5zZXRDdXJyZW50UG9zaXRpb24gIiArIHggKyAiLCIgKyB5ICsgIiwiICsgd2lk dGggKyAiLCIJKyBoZWlnaHQpOw0KDQoJCXZhciBwcmV2aW91c1NpemUgPSB7fTsNCgkJcHJldmlv dXNTaXplLndpZHRoID0gY3VycmVudFBvc2l0aW9uLndpZHRoOw0KCQlwcmV2aW91c1NpemUuaGVp Z2h0ID0gY3VycmVudFBvc2l0aW9uLmhlaWdodDsNCgkJbG9nLmkoInByZXZpb3VzU2l6ZSAiICsg cHJldmlvdXNTaXplLndpZHRoICsgIiwiICsgcHJldmlvdXNTaXplLmhlaWdodCk7DQoNCgkJY3Vy cmVudFBvc2l0aW9uLnggPSB4Ow0KCQljdXJyZW50UG9zaXRpb24ueSA9IHk7DQoJCWN1cnJlbnRQ b3NpdGlvbi53aWR0aCA9IHdpZHRoOw0KCQljdXJyZW50UG9zaXRpb24uaGVpZ2h0ID0gaGVpZ2h0 Ow0KDQoJCWlmICh3aWR0aCAhPT0gcHJldmlvdXNTaXplLndpZHRoIHx8IGhlaWdodCAhPT0gcHJl dmlvdXNTaXplLmhlaWdodCkgew0KCQkJbXJhaWQuZmlyZVNpemVDaGFuZ2VFdmVudCh3aWR0aCwg aGVpZ2h0KTsNCgkJfQ0KCX07DQoNCgltcmFpZC5zZXREZWZhdWx0UG9zaXRpb24gPSBmdW5jdGlv bih4LCB5LCB3aWR0aCwgaGVpZ2h0KSB7DQoJCWxvZy5pKCJtcmFpZC5zZXREZWZhdWx0UG9zaXRp b24gIiArIHggKyAiLCIgKyB5ICsgIiwiICsgd2lkdGggKyAiLCIJKyBoZWlnaHQpOw0KCQlkZWZh dWx0UG9zaXRpb24ueCA9IHg7DQoJCWRlZmF1bHRQb3NpdGlvbi55ID0geTsNCgkJZGVmYXVsdFBv c2l0aW9uLndpZHRoID0gd2lkdGg7DQoJCWRlZmF1bHRQb3NpdGlvbi5oZWlnaHQgPSBoZWlnaHQ7 DQoJfTsNCg0KCW1yYWlkLnNldEV4cGFuZFNpemUgPSBmdW5jdGlvbih3aWR0aCwgaGVpZ2h0KSB7 DQoJCWxvZy5pKCJtcmFpZC5zZXRFeHBhbmRTaXplICIgKyB3aWR0aCArICJ4IiArIGhlaWdodCk7 DQoJCWV4cGFuZFByb3BlcnRpZXMud2lkdGggPSB3aWR0aDsNCgkJZXhwYW5kUHJvcGVydGllcy5o ZWlnaHQgPSBoZWlnaHQ7DQoJfTsNCg0KCW1yYWlkLnNldE1heFNpemUgPSBmdW5jdGlvbih3aWR0 aCwgaGVpZ2h0KSB7DQoJCWxvZy5pKCJtcmFpZC5zZXRNYXhTaXplICIgKyB3aWR0aCArICJ4IiAr IGhlaWdodCk7DQoJCW1heFNpemUud2lkdGggPSB3aWR0aDsNCgkJbWF4U2l6ZS5oZWlnaHQgPSBo ZWlnaHQ7DQoJfTsNCg0KCW1yYWlkLnNldFBsYWNlbWVudFR5cGUgPSBmdW5jdGlvbihwdCkgew0K CQlsb2cuaSgibXJhaWQuc2V0UGxhY2VtZW50VHlwZSAiICsgcHQpOw0KCQlwbGFjZW1lbnRUeXBl ID0gcHQ7DQoJfTsNCg0KCW1yYWlkLnNldFNjcmVlblNpemUgPSBmdW5jdGlvbih3aWR0aCwgaGVp Z2h0KSB7DQoJCWxvZy5pKCJtcmFpZC5zZXRTY3JlZW5TaXplICIgKyB3aWR0aCArICJ4IiArIGhl aWdodCk7DQoJCXNjcmVlblNpemUud2lkdGggPSB3aWR0aDsNCgkJc2NyZWVuU2l6ZS5oZWlnaHQg PSBoZWlnaHQ7DQoJCWlmICghaXNFeHBhbmRQcm9wZXJ0aWVzU2V0KSB7DQoJCQlleHBhbmRQcm9w ZXJ0aWVzLndpZHRoID0gd2lkdGg7DQoJCQlleHBhbmRQcm9wZXJ0aWVzLmhlaWdodCA9IGhlaWdo dDs7DQoJCX0NCgl9Ow0KDQoJbXJhaWQuc2V0U3VwcG9ydHMgPSBmdW5jdGlvbihmZWF0dXJlLCBz dXBwb3J0ZWQpIHsNCgkJbG9nLmkoIm1yYWlkLnNldFN1cHBvcnRzICIgKyBmZWF0dXJlICsgIiAi ICsgc3VwcG9ydGVkKTsNCgkJc3VwcG9ydGVkRmVhdHVyZXNbZmVhdHVyZV0gPSBzdXBwb3J0ZWQ7 DQoJfTsNCg0KCS8vIG1ldGhvZHMgdG8gZmlyZSBldmVudHMNCg0KCW1yYWlkLmZpcmVFcnJvckV2 ZW50ID0gZnVuY3Rpb24obWVzc2FnZSwgYWN0aW9uKSB7DQoJCWxvZy5pKCJtcmFpZC5maXJlRXJy b3JFdmVudCAiICsgbWVzc2FnZSArICIgIiArIGFjdGlvbik7DQoJCWZpcmVFdmVudChtcmFpZC5F VkVOVFMuRVJST1IsIG1lc3NhZ2UsIGFjdGlvbik7DQoJfTsNCg0KCW1yYWlkLmZpcmVSZWFkeUV2 ZW50ID0gZnVuY3Rpb24oKSB7DQoJCWxvZy5pKCJtcmFpZC5maXJlUmVhZHlFdmVudCIpOw0KCQlm aXJlRXZlbnQobXJhaWQuRVZFTlRTLlJFQURZKTsNCgl9Ow0KDQoJbXJhaWQuZmlyZVNpemVDaGFu Z2VFdmVudCA9IGZ1bmN0aW9uKHdpZHRoLCBoZWlnaHQpIHsNCgkJbG9nLmkoIm1yYWlkLmZpcmVT aXplQ2hhbmdlRXZlbnQgIiArIHdpZHRoICsgIngiICsgaGVpZ2h0KTsNCgkJaWYgKHN0YXRlICE9 PSBtcmFpZC5TVEFURVMuTE9BRElORykgew0KCQkJZmlyZUV2ZW50KG1yYWlkLkVWRU5UUy5TSVpF Q0hBTkdFLCB3aWR0aCwgaGVpZ2h0KTsNCgkJfQ0KCX07DQoNCgltcmFpZC5maXJlU3RhdGVDaGFu Z2VFdmVudCA9IGZ1bmN0aW9uKG5ld1N0YXRlKSB7DQoJCWxvZy5pKCJtcmFpZC5maXJlU3RhdGVD aGFuZ2VFdmVudCAiICsgbmV3U3RhdGUpOw0KCQlpZiAoc3RhdGUgIT09IG5ld1N0YXRlKSB7DQoJ CQlzdGF0ZSA9IG5ld1N0YXRlOw0KCQkJZmlyZUV2ZW50KG1yYWlkLkVWRU5UUy5TVEFURUNIQU5H RSwgc3RhdGUpOw0KCQl9DQoJfTsNCg0KCW1yYWlkLmZpcmVWaWV3YWJsZUNoYW5nZUV2ZW50ID0g ZnVuY3Rpb24obmV3SXNWaWV3YWJsZSkgew0KCQlsb2cuaSgibXJhaWQuZmlyZVZpZXdhYmxlQ2hh bmdlRXZlbnQgIiArIG5ld0lzVmlld2FibGUpOw0KCQlpZiAoaXNWaWV3YWJsZSAhPT0gbmV3SXNW aWV3YWJsZSkgew0KCQkJaXNWaWV3YWJsZSA9IG5ld0lzVmlld2FibGU7DQoJCQlmaXJlRXZlbnQo bXJhaWQuRVZFTlRTLlZJRVdBQkxFQ0hBTkdFLCBpc1ZpZXdhYmxlKTsNCgkJfQ0KCX07DQoNCgkv KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqDQoJICogaW50ZXJuYWwgaGVscGVyIG1ldGhvZHMNCgkgKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKiovDQoNCglmdW5jdGlvbiBjYWxsTmF0aXZlKGNvbW1hbmQpIHsNCgkJdmFyIGlm cmFtZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoIklGUkFNRSIpOw0KCQlpZnJhbWUuc2V0QXR0 cmlidXRlKCJzcmMiLCAibXJhaWQ6Ly8iICsgY29tbWFuZCk7DQoJCWRvY3VtZW50LmRvY3VtZW50 RWxlbWVudC5hcHBlbmRDaGlsZChpZnJhbWUpOw0KCQlpZnJhbWUucGFyZW50Tm9kZS5yZW1vdmVD aGlsZChpZnJhbWUpOw0KCQlpZnJhbWUgPSBudWxsOw0KCX07DQoNCglmdW5jdGlvbiBmaXJlRXZl bnQoZXZlbnQpIHsNCgkJdmFyIGFyZ3MgPSBBcnJheS5wcm90b3R5cGUuc2xpY2UuY2FsbChhcmd1 bWVudHMpOw0KCQlhcmdzLnNoaWZ0KCk7DQoJCWxvZy5pKCJmaXJlRXZlbnQgIiArIGV2ZW50ICsg IiBbIiArIGFyZ3MudG9TdHJpbmcoKSArICJdIik7DQoJCXZhciBldmVudExpc3RlbmVycyA9IGxp c3RlbmVyc1tldmVudF07DQoJCWlmIChldmVudExpc3RlbmVycykgew0KCQkJdmFyIGxlbiA9IGV2 ZW50TGlzdGVuZXJzLmxlbmd0aDsNCgkJCWxvZy5pKGxlbiArICIgbGlzdGVuZXIocykgZm91bmQi KTsNCgkJCWZvciAodmFyIGkgPSAwOyBpIDwgbGVuOyBpKyspIHsNCgkJCQlldmVudExpc3RlbmVy c1tpXS5hcHBseShudWxsLCBhcmdzKTsNCgkJCX0NCgkJfSBlbHNlIHsNCgkJCWxvZy5pKCJubyBs aXN0ZW5lcnMgZm91bmQiKTsNCgkJfQ0KCX07DQoNCglmdW5jdGlvbiBjb250YWlucyh2YWx1ZSwg YXJyYXkpIHsNCgkJZm9yICggdmFyIGkgaW4gYXJyYXkpIHsNCgkJCWlmIChhcnJheVtpXSA9PT0g dmFsdWUpIHsNCgkJCQlyZXR1cm4gdHJ1ZTsNCgkJCX0NCgkJfQ0KCQlyZXR1cm4gZmFsc2U7DQoJ fTsNCg0KCS8vIFRoZSBhY3Rpb24gcGFyYW1ldGVyIGlzIGEgc3RyaW5nIHdoaWNoIGlzIHRoZSBu YW1lIG9mIHRoZSBzZXR0ZXIgZnVuY3Rpb24NCgkvLyB3aGljaCBjYWxsZWQgdGhpcyBmdW5jdGlv bg0KCS8vIChpbiBvdGhlciB3b3Jkcywgc2V0RXhwYW5kUHJvcGV0aWVzLCBzZXRPcmllbnRhdGlv blByb3BlcnRpZXMsIG9yDQoJLy8gc2V0UmVzaXplUHJvcGVydGllcykuDQoJLy8gSXQgc2VydmVz IGJvdGggYXMgdGhlIGtleSB0byBnZXQgdGhlIHRoZSBhcHByb3ByaWF0ZSBzZXQgb2YgdmFsaWRh dGluZw0KCS8vIGZ1bmN0aW9ucyBmcm9tIHRoZSBhbGxWYWxpZGF0b3JzIG9iamVjdA0KCS8vIGFz IHdlbGwgYXMgdGhlIGFjdGlvbiBwYXJhbWV0ZXIgb2YgYW55IGVycm9yIGV2ZW50IHRoYXQgbWF5 IGJlIHRocm93bi4NCglmdW5jdGlvbiB2YWxpZGF0ZShwcm9wZXJ0aWVzLCBhY3Rpb24pIHsNCgkJ dmFyIHJldHZhbCA9IHRydWU7DQoJCXZhciB2YWxpZGF0b3JzID0gYWxsVmFsaWRhdG9yc1thY3Rp b25dOw0KCQlmb3IgKHZhciBwcm9wIGluIHByb3BlcnRpZXMpIHsNCgkJCXZhciB2YWxpZGF0b3Ig PSB2YWxpZGF0b3JzW3Byb3BdOw0KCQkJdmFyIHZhbHVlID0gcHJvcGVydGllc1twcm9wXTsNCgkJ CWlmICh2YWxpZGF0b3IgJiYgIXZhbGlkYXRvcih2YWx1ZSkpIHsNCgkJCQltcmFpZC5maXJlRXJy b3JFdmVudCgiVmFsdWUgb2YgcHJvcGVydHkgIiArIHByb3AgKyAiICgiICsgdmFsdWUJKyAiKSBp cyBpbnZhbGlkIiwgIm1yYWlkLiIgKyBhY3Rpb24pOw0KCQkJCXJldHZhbCA9IGZhbHNlOw0KCQkJ fQ0KCQl9DQoJCXJldHVybiByZXR2YWw7DQoJfTsNCg0KCXZhciBhbGxWYWxpZGF0b3JzID0gew0K CQkic2V0RXhwYW5kUHJvcGVydGllcyIgOiB7DQoJCQkvLyBJbiBNUkFJRCAyLjAsIHRoZSBvbmx5 IHByb3BlcnR5IGluIGV4cGFuZFByb3BlcnRpZXMgd2UgYWN0dWFsbHkgY2FyZSBhYm91dCBpcyB1 c2VDdXN0b21DbG9zZS4NCgkJCS8vIFN0aWxsLCB3ZSdsbCBkbyBhIGJhc2ljIHNhbml0eSBjaGVj ayBvbiB0aGUgd2lkdGggYW5kIGhlaWdodCBwcm9wZXJ0aWVzLCB0b28uDQoJCQkid2lkdGgiIDog ZnVuY3Rpb24od2lkdGgpIHsNCgkJCQlyZXR1cm4gIWlzTmFOKHdpZHRoKTsNCgkJCX0sDQoJCQki aGVpZ2h0IiA6IGZ1bmN0aW9uKGhlaWdodCkgew0KCQkJCXJldHVybiAhaXNOYU4oaGVpZ2h0KTsN CgkJCX0sDQoJCQkidXNlQ3VzdG9tQ2xvc2UiIDogZnVuY3Rpb24odXNlQ3VzdG9tQ2xvc2UpIHsN CgkJCQlyZXR1cm4gKHR5cGVvZiB1c2VDdXN0b21DbG9zZSA9PT0gImJvb2xlYW4iKTsNCgkJCX0N CgkJfSwNCgkJInNldE9yaWVudGF0aW9uUHJvcGVydGllcyIgOiB7DQoJCQkiYWxsb3dPcmllbnRh dGlvbkNoYW5nZSIgOiBmdW5jdGlvbihhbGxvd09yaWVudGF0aW9uQ2hhbmdlKSB7DQoJCQkJcmV0 dXJuICh0eXBlb2YgYWxsb3dPcmllbnRhdGlvbkNoYW5nZSA9PT0gImJvb2xlYW4iKTsNCgkJCX0s DQoJCQkiZm9yY2VPcmllbnRhdGlvbiIgOiBmdW5jdGlvbihmb3JjZU9yaWVudGF0aW9uKSB7DQoJ CQkJdmFyIHZhbGlkVmFsdWVzID0gWyAicG9ydHJhaXQiLCAibGFuZHNjYXBlIiwgIm5vbmUiIF07 DQoJCQkJcmV0dXJuICh0eXBlb2YgZm9yY2VPcmllbnRhdGlvbiA9PT0gInN0cmluZyIgJiYgdmFs aWRWYWx1ZXMuaW5kZXhPZihmb3JjZU9yaWVudGF0aW9uKSAhPT0gLTEpOw0KCQkJfQ0KCQl9LA0K CQkic2V0UmVzaXplUHJvcGVydGllcyIgOiB7DQoJCQkid2lkdGgiIDogZnVuY3Rpb24od2lkdGgp IHsNCgkJCQlyZXR1cm4gIWlzTmFOKHdpZHRoKSAmJiA1MCA8PSB3aWR0aDsNCgkJCX0sDQoJCQki aGVpZ2h0IiA6IGZ1bmN0aW9uKGhlaWdodCkgew0KCQkJCXJldHVybiAhaXNOYU4oaGVpZ2h0KSAm JiA1MCA8PSBoZWlnaHQ7DQoJCQl9LA0KCQkJIm9mZnNldFgiIDogZnVuY3Rpb24ob2Zmc2V0WCkg ew0KCQkJCXJldHVybiAhaXNOYU4ob2Zmc2V0WCk7DQoJCQl9LA0KCQkJIm9mZnNldFkiIDogZnVu Y3Rpb24ob2Zmc2V0WSkgew0KCQkJCXJldHVybiAhaXNOYU4ob2Zmc2V0WSk7DQoJCQl9LA0KCQkJ ImN1c3RvbUNsb3NlUG9zaXRpb24iIDogZnVuY3Rpb24oY3VzdG9tQ2xvc2VQb3NpdGlvbikgew0K CQkJCXZhciB2YWxpZFBvc2l0aW9ucyA9IFsgInRvcC1sZWZ0IiwgInRvcC1jZW50ZXIiLCAidG9w LXJpZ2h0IiwNCgkJCQkgICAgICAgICAgICAgICAgICAgICAgICJjZW50ZXIiLA0KCQkJCSAgICAg ICAgICAgICAgICAgICAgICAgImJvdHRvbS1sZWZ0IiwgImJvdHRvbS1jZW50ZXIiLAkiYm90dG9t LXJpZ2h0IiBdOw0KCQkJCXJldHVybiAodHlwZW9mIGN1c3RvbUNsb3NlUG9zaXRpb24gPT09ICJz dHJpbmciICYmIHZhbGlkUG9zaXRpb25zLmluZGV4T2YoY3VzdG9tQ2xvc2VQb3NpdGlvbikgIT09 IC0xKTsNCgkJCX0sDQoJCQkiYWxsb3dPZmZzY3JlZW4iIDogZnVuY3Rpb24oYWxsb3dPZmZzY3Jl ZW4pIHsNCgkJCQlyZXR1cm4gKHR5cGVvZiBhbGxvd09mZnNjcmVlbiA9PT0gImJvb2xlYW4iKTsN CgkJCX0NCgkJfQ0KCX07DQoJDQogICAgZnVuY3Rpb24gaXNDbG9zZVJlZ2lvbk9uU2NyZWVuKHBy b3BlcnRpZXMpIHsNCiAgICAgICAgbG9nLmQoImlzQ2xvc2VSZWdpb25PblNjcmVlbiIpOw0KICAg ICAgICBsb2cuZCgiZGVmYXVsdFBvc2l0aW9uICIgKyBkZWZhdWx0UG9zaXRpb24ueCArICIgIiAr IGRlZmF1bHRQb3NpdGlvbi55KTsNCiAgICAgICAgbG9nLmQoIm9mZnNldCAiICsgcHJvcGVydGll cy5vZmZzZXRYICsgIiAiICsgcHJvcGVydGllcy5vZmZzZXRZKTsNCg0KICAgICAgICB2YXIgcmVz aXplUmVjdCA9IHt9Ow0KICAgICAgICByZXNpemVSZWN0LnggPSBkZWZhdWx0UG9zaXRpb24ueCAr IHByb3BlcnRpZXMub2Zmc2V0WDsNCiAgICAgICAgcmVzaXplUmVjdC55ID0gZGVmYXVsdFBvc2l0 aW9uLnkgKyBwcm9wZXJ0aWVzLm9mZnNldFk7DQogICAgICAgIHJlc2l6ZVJlY3Qud2lkdGggPSBw cm9wZXJ0aWVzLndpZHRoOw0KICAgICAgICByZXNpemVSZWN0LmhlaWdodCA9IHByb3BlcnRpZXMu aGVpZ2h0Ow0KICAgICAgICBwcmludFJlY3QoInJlc2l6ZVJlY3QiLCByZXNpemVSZWN0KTsNCg0K CQl2YXIgY3VzdG9tQ2xvc2VQb3NpdGlvbiA9IHByb3BlcnRpZXMuaGFzT3duUHJvcGVydHkoImN1 c3RvbUNsb3NlUG9zaXRpb24iKSA/DQoJCQkJcHJvcGVydGllcy5jdXN0b21DbG9zZVBvc2l0aW9u IDogcmVzaXplUHJvcGVydGllcy5jdXN0b21DbG9zZVBvc2l0aW9uOw0KICAgICAgICBsb2cuZCgi Y3VzdG9tQ2xvc2VQb3NpdGlvbiAiICsgY3VzdG9tQ2xvc2VQb3NpdGlvbik7DQogICAgICAgIA0K ICAgICAgICB2YXIgY2xvc2VSZWN0ID0geyAid2lkdGgiOiA1MCwgImhlaWdodCI6IDUwIH07DQoN CiAgICAgICAgaWYgKGN1c3RvbUNsb3NlUG9zaXRpb24uc2VhcmNoKCJsZWZ0IikgIT09IC0xKSB7 DQogICAgICAgICAgICBjbG9zZVJlY3QueCA9IHJlc2l6ZVJlY3QueDsNCiAgICAgICAgfSBlbHNl IGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgiY2VudGVyIikgIT09IC0xKSB7DQogICAg ICAgICAgICBjbG9zZVJlY3QueCA9IHJlc2l6ZVJlY3QueCArIChyZXNpemVSZWN0LndpZHRoIC8g MikgLSAyNTsNCiAgICAgICAgfSBlbHNlIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgi cmlnaHQiKSAhPT0gLTEpIHsNCiAgICAgICAgICAgIGNsb3NlUmVjdC54ID0gcmVzaXplUmVjdC54 ICsgcmVzaXplUmVjdC53aWR0aCAtIDUwOw0KICAgICAgICB9DQoNCiAgICAgICAgaWYgKGN1c3Rv bUNsb3NlUG9zaXRpb24uc2VhcmNoKCJ0b3AiKSAhPT0gLTEpIHsNCiAgICAgICAgICAgIGNsb3Nl UmVjdC55ID0gcmVzaXplUmVjdC55Ow0KICAgICAgICB9IGVsc2UgaWYgKGN1c3RvbUNsb3NlUG9z aXRpb24gPT09ICJjZW50ZXIiKSB7DQogICAgICAgICAgICBjbG9zZVJlY3QueSA9IHJlc2l6ZVJl Y3QueSArIChyZXNpemVSZWN0LmhlaWdodCAvIDIpIC0gMjU7DQogICAgICAgIH0gZWxzZSBpZiAo Y3VzdG9tQ2xvc2VQb3NpdGlvbi5zZWFyY2goImJvdHRvbSIpICE9PSAtMSkgew0KICAgICAgICAg ICAgY2xvc2VSZWN0LnkgPSByZXNpemVSZWN0LnkgKyByZXNpemVSZWN0LmhlaWdodCAtIDUwOw0K ICAgICAgICB9DQoNCiAgICAgICAgdmFyIG1heFJlY3QgPSB7ICJ4IjogMCwgInkiOiAwIH07DQog ICAgICAgIG1heFJlY3Qud2lkdGggPSBtYXhTaXplLndpZHRoOw0KICAgICAgICBtYXhSZWN0Lmhl aWdodCA9IG1heFNpemUuaGVpZ2h0Ow0KDQogICAgICAgIHJldHVybiBpc1JlY3RDb250YWluZWQo bWF4UmVjdCwgY2xvc2VSZWN0KTsNCiAgICB9DQogICAgDQogICAgZnVuY3Rpb24gZml0UmVzaXpl Vmlld09uU2NyZWVuKHByb3BlcnRpZXMpIHsNCiAgICAgICAgbG9nLmQoImZpdFJlc2l6ZVZpZXdP blNjcmVlbiIpOw0KICAgICAgICBsb2cuZCgiZGVmYXVsdFBvc2l0aW9uICIgKyBkZWZhdWx0UG9z aXRpb24ueCArICIgIiArIGRlZmF1bHRQb3NpdGlvbi55KTsNCiAgICAgICAgbG9nLmQoIm9mZnNl dCAiICsgcHJvcGVydGllcy5vZmZzZXRYICsgIiAiICsgcHJvcGVydGllcy5vZmZzZXRZKTsNCg0K ICAgICAgICB2YXIgcmVzaXplUmVjdCA9IHt9Ow0KICAgICAgICByZXNpemVSZWN0LnggPSBkZWZh dWx0UG9zaXRpb24ueCArIHByb3BlcnRpZXMub2Zmc2V0WDsNCiAgICAgICAgcmVzaXplUmVjdC55 ID0gZGVmYXVsdFBvc2l0aW9uLnkgKyBwcm9wZXJ0aWVzLm9mZnNldFk7DQogICAgICAgIHJlc2l6 ZVJlY3Qud2lkdGggPSBwcm9wZXJ0aWVzLndpZHRoOw0KICAgICAgICByZXNpemVSZWN0LmhlaWdo dCA9IHByb3BlcnRpZXMuaGVpZ2h0Ow0KICAgICAgICBwcmludFJlY3QoInJlc2l6ZVJlY3QiLCBy ZXNpemVSZWN0KTsNCg0KICAgICAgICB2YXIgbWF4UmVjdCA9IHsgIngiOiAwLCAieSI6IDAgfTsN CiAgICAgICAgbWF4UmVjdC53aWR0aCA9IG1heFNpemUud2lkdGg7DQogICAgICAgIG1heFJlY3Qu aGVpZ2h0ID0gbWF4U2l6ZS5oZWlnaHQ7DQoNCiAgICAgICAgdmFyIGFkanVzdG1lbnRzID0geyAi eCI6IDAsICJ5IjogMCB9Ow0KDQogICAgICAgIGlmIChpc1JlY3RDb250YWluZWQobWF4UmVjdCwg cmVzaXplUmVjdCkpIHsNCiAgICAgICAgICAgIGxvZy5kKCJubyBhZGp1c3RtZW50IG5lY2Vzc2Fy eSIpOw0KICAgICAgICAgICAgcmV0dXJuIGFkanVzdG1lbnRzOw0KICAgICAgICB9DQoNCiAgICAg ICAgaWYgKHJlc2l6ZVJlY3QueCA8IG1heFJlY3QueCkgew0KICAgICAgICAgICAgYWRqdXN0bWVu dHMueCA9IG1heFJlY3QueCAtIHJlc2l6ZVJlY3QueDsNCiAgICAgICAgfSBlbHNlIGlmICgocmVz aXplUmVjdC54ICsgcmVzaXplUmVjdC53aWR0aCkgPiAobWF4UmVjdC54ICsgbWF4UmVjdC53aWR0 aCkpIHsNCiAgICAgICAgICAgIGFkanVzdG1lbnRzLnggPSAobWF4UmVjdC54ICsgbWF4UmVjdC53 aWR0aCkgLSAocmVzaXplUmVjdC54ICsgcmVzaXplUmVjdC53aWR0aCk7DQogICAgICAgIH0NCiAg ICAgICAgbG9nLmQoImFkanVzdG1lbnRzLnggIiArIGFkanVzdG1lbnRzLngpOw0KDQogICAgICAg IGlmIChyZXNpemVSZWN0LnkgPCBtYXhSZWN0LnkpIHsNCiAgICAgICAgICAgIGFkanVzdG1lbnRz LnkgPSBtYXhSZWN0LnkgLSByZXNpemVSZWN0Lnk7DQogICAgICAgIH0gZWxzZSBpZiAoKHJlc2l6 ZVJlY3QueSArIHJlc2l6ZVJlY3QuaGVpZ2h0KSA+IChtYXhSZWN0LnkgKyBtYXhSZWN0LmhlaWdo dCkpIHsNCiAgICAgICAgICAgIGFkanVzdG1lbnRzLnkgPSAobWF4UmVjdC55ICsgbWF4UmVjdC5o ZWlnaHQpIC0gKHJlc2l6ZVJlY3QueSArIHJlc2l6ZVJlY3QuaGVpZ2h0KTsNCiAgICAgICAgfQ0K ICAgICAgICBsb2cuZCgiYWRqdXN0bWVudHMueSAiICsgYWRqdXN0bWVudHMueSk7DQoNCiAgICAg ICAgcmVzaXplUmVjdC54ID0gZGVmYXVsdFBvc2l0aW9uLnggKyBwcm9wZXJ0aWVzLm9mZnNldFgg KyBhZGp1c3RtZW50cy54Ow0KICAgICAgICByZXNpemVSZWN0LnkgPSBkZWZhdWx0UG9zaXRpb24u eSArIHByb3BlcnRpZXMub2Zmc2V0WSArIGFkanVzdG1lbnRzLnk7DQogICAgICAgIHByaW50UmVj dCgiYWRqdXN0ZWQgcmVzaXplUmVjdCIsIHJlc2l6ZVJlY3QpOw0KDQogICAgICAgIHJldHVybiBh ZGp1c3RtZW50czsNCiAgICB9DQogICAgDQogICAgZnVuY3Rpb24gaXNSZWN0Q29udGFpbmVkKGNv bnRhaW5pbmdSZWN0LCBjb250YWluZWRSZWN0KSB7DQogICAgICAgIGxvZy5kKCJpc1JlY3RDb250 YWluZWQiKTsNCiAgICAgICAgcHJpbnRSZWN0KCJjb250YWluaW5nUmVjdCIsIGNvbnRhaW5pbmdS ZWN0KTsNCiAgICAgICAgcHJpbnRSZWN0KCJjb250YWluZWRSZWN0IiwgY29udGFpbmVkUmVjdCk7 DQogICAgICAgIHJldHVybiAoY29udGFpbmVkUmVjdC54ID49IGNvbnRhaW5pbmdSZWN0LnggJiYN CiAgICAgICAgICAgIChjb250YWluZWRSZWN0LnggKyBjb250YWluZWRSZWN0LndpZHRoKSA8PSAo Y29udGFpbmluZ1JlY3QueCArIGNvbnRhaW5pbmdSZWN0LndpZHRoKSAmJg0KICAgICAgICAgICAg Y29udGFpbmVkUmVjdC55ID49IGNvbnRhaW5pbmdSZWN0LnkgJiYNCiAgICAgICAgICAgIChjb250 YWluZWRSZWN0LnkgKyBjb250YWluZWRSZWN0LmhlaWdodCkgPD0gKGNvbnRhaW5pbmdSZWN0Lnkg KyBjb250YWluaW5nUmVjdC5oZWlnaHQpKTsNCiAgICB9DQogICAgDQogICAgZnVuY3Rpb24gcHJp bnRSZWN0KGxhYmVsLCByZWN0KSB7DQogICAgICAgIGxvZy5kKGxhYmVsICsNCiAgICAgICAgICAg ICIgWyIgKyByZWN0LnggKyAiLCIgKyByZWN0LnkgKyAiXSIgKw0KICAgICAgICAgICAgIixbIiAr IChyZWN0LnggKyByZWN0LndpZHRoKSArICIsIiArIChyZWN0LnkgKyByZWN0LmhlaWdodCkgKyAi XSIgKw0KICAgICAgICAgICAgIiAoIiArIHJlY3Qud2lkdGggKyAieCIgKyByZWN0LmhlaWdodCAr ICIpIik7DQogICAgfQ0KCQ0KCW1yYWlkLmR1bXBMaXN0ZW5lcnMgPSBmdW5jdGlvbigpIHsNCgkJ dmFyIG5FdmVudHMgPSBPYmplY3Qua2V5cyhsaXN0ZW5lcnMpLmxlbmd0aDsNCgkJbG9nLmkoImR1 bXBpbmcgbGlzdGVuZXJzICgiICsgbkV2ZW50cyArICIgZXZlbnRzKSIpOw0KCQlmb3IgKCB2YXIg ZXZlbnQgaW4gbGlzdGVuZXJzKSB7DQoJCQl2YXIgZXZlbnRMaXN0ZW5lcnMgPSBsaXN0ZW5lcnNb ZXZlbnRdOw0KCQkJbG9nLmkoIiAgIiArIGV2ZW50ICsgIiBjb250YWlucyAiICsgZXZlbnRMaXN0 ZW5lcnMubGVuZ3RoICsgIiBsaXN0ZW5lcnMiKTsNCgkJCWZvciAodmFyIGkgPSAwOyBpIDwgZXZl bnRMaXN0ZW5lcnMubGVuZ3RoOyBpKyspIHsNCgkJCQlsb2cuaSgiICAgICIgKyBldmVudExpc3Rl bmVyc1tpXSk7DQoJCQl9DQoJCX0NCgl9Ow0KCQ0KCWNvbnNvbGUubG9nKCJNUkFJRCBvYmplY3Qg bG9hZGVkIik7DQoNCn0pKCk7"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    :cond_0
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectMraidJs ok "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/an;->t(Landroid/content/Context;)I

    move-result v0

    const v1, 0x106d7904

    if-gt v0, v1, :cond_1

    const-string v0, "<html></html>"

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$16;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$16;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private noFill()V
    .locals 2

    const-string v0, "MRAIDView-JS callback"

    const-string v1, "noFill"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDViewListener;->mraidViewNoFill(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    :cond_0
    return-void
.end method

.method private onLayoutWebView(Landroid/webkit/WebView;ZIIII)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_0
    const-string v4, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLayoutWebView "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    if-ne p1, v3, :cond_2

    const-string v3, "1 "

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, "MRAIDView"

    const-string v1, "onLayoutWebView ignored, not current"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v3, "2 "

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isForcingFullScreen:Z

    if-eqz v0, :cond_4

    const-string v0, "MRAIDView"

    const-string v1, "onLayoutWebView ignored, isForcingFullScreen"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isForcingFullScreen:Z

    goto :goto_2

    :cond_4
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->calculateScreenSize()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->calculateMaxSize()V

    :cond_6
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isClosing:Z

    if-nez v0, :cond_7

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->calculatePosition(Z)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setDefaultPosition()V

    :cond_7
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isExpandingFromDefault:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isExpandingFromDefault:Z

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_8

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isLaidOut:Z

    :cond_8
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isExpandingPart2:Z

    if-nez v0, :cond_9

    const-string v0, "MRAIDView"

    const-string v1, "calling fireStateChangeEvent 1"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireStateChangeEvent()V

    :cond_9
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireReadyEvent()V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isViewable:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireViewableChangeEvent()V

    :cond_a
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDViewListener;->mraidViewExpand(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    goto :goto_2
.end method

.method private open(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->open(Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void
.end method

.method private open(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 3

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isTouched:Z

    if-eqz v0, :cond_3

    const-string v0, "MRAIDView-JS callback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    if-eqz v0, :cond_0

    const-string v0, "sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureSendSms(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCallTel(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1, p2}, Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureOpenBrowser(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_3
    const-string v0, "MRAIDView"

    const-string v1, "mraid view not touched"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseCommandUrl(Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCommandUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDParser;

    invoke-direct {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDParser;-><init>()V

    invoke-virtual {v0, p1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDParser;->parseCommandUrl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "command"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "close"

    aput-object v3, v2, v6

    const-string v3, "resize"

    aput-object v3, v2, v7

    const-string v3, "noFill"

    aput-object v3, v2, v8

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "createCalendarEvent"

    aput-object v4, v3, v6

    const-string v4, "expand"

    aput-object v4, v3, v7

    const-string v4, "open"

    aput-object v4, v3, v8

    const-string v4, "playVideo"

    aput-object v4, v3, v5

    const/4 v4, 0x4

    const-string v5, "storePicture"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "useCustomClose"

    aput-object v5, v3, v4

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "setOrientationProperties"

    aput-object v5, v4, v6

    const-string v5, "setResizeProperties"

    aput-object v5, v4, v7

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

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "createCalendarEvent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "eventJSON"

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

    :cond_2
    :try_start_1
    const-string v3, "useCustomClose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "useCustomClose"

    goto :goto_1

    :cond_3
    const-string v0, "url"

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private pauseWebView(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseWebView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

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

.method private playVideo(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView-JS callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v1, v0}, Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;->mraidNativeFeaturePlayVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private px2dip(I)I
    .locals 2

    mul-int/lit16 v0, p1, 0xa0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v0, v1

    return v0
.end method

.method private removeDefaultCloseButton()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setClickable(Z)V

    const v0, 0x186a0

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeTimerPosition:I

    :cond_0
    return-void
.end method

.method private removeResizeView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    return-void
.end method

.method private resize()V
    .locals 6

    const-string v0, "MRAIDView-JS callback"

    const-string v1, "resize"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDViewListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDViewListener;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v2, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v3, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->height:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v4, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetX:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v5, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetY:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lorg/nexage/sourcekit/mraid/MRAIDViewListener;->mraidViewResize(Lorg/nexage/sourcekit/mraid/MRAIDView;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->removeAllViews()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->addCloseRegion(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setCloseRegionPosition(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setResizedViewSize()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setResizedViewPosition()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$8;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$8;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private restoreOriginalOrientation()V
    .locals 2

    const-string v0, "MRAIDView"

    const-string v1, "restoreOriginalOrientation"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->interstitialActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->interstitialActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iget v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->originalRequestedOrientation:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->interstitialActivity:Landroid/app/Activity;

    iget v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->originalRequestedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private restoreOriginalScreenState()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isFullScreen:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isForceNotFullScreen:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isActionBarShowing:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->titleBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->titleBar:Landroid/view/View;

    iget v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->origTitleBarVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private resumeWebView(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeWebView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

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

.method private setCloseRegionPosition(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private setCurrentPosition()V
    .locals 7

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCurrentPosition ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mraid.setCurrentPosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setDefaultPosition()V
    .locals 7

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultPosition ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mraid.setDefaultPosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setMaxSize()V
    .locals 5

    const-string v0, "MRAIDView"

    const-string v1, "setMaxSize"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->width:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iget v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->height:I

    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMaxSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid.setMaxSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setOrientationProperties(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allowOrientationChange"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "forceOrientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "MRAIDView-JS callback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOrientationProperties "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v2, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientationFromString(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iput-boolean v1, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientationFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->applyOrientationProperties()V

    :cond_2
    return-void
.end method

.method private setResizeProperties(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "offsetX"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "offsetY"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "customClosePosition"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "allowOffscreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "MRAIDView-JS callback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setResizeProperties "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iput v2, v6, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iput v3, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->height:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iput v4, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetX:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iput v5, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetY:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->customClosePositionFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iput-boolean v1, v0, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->allowOffscreen:Z

    return-void
.end method

.method private setResizedViewPosition()V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "MRAIDView"

    const-string v1, "setResizedViewPosition"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v1, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->height:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetX:I

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v3, v3, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetY:I

    int-to-float v0, v0

    iget-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v4, v0

    int-to-float v0, v1

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v1, v0

    int-to-float v0, v2

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v3

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v1, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setCurrentPosition()V

    goto :goto_0
.end method

.method private setResizedViewSize()V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "MRAIDView"

    const-string v1, "setResizedViewSize"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v1, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->height:I

    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResizedViewSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setScreenSize()V
    .locals 5

    const-string v0, "MRAIDView"

    const-string v1, "setScreenSize"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->width:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDView$Size;

    iget v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDView$Size;->height:I

    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScreenSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid.setScreenSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setSupportedServices()V
    .locals 2

    const-string v0, "MRAIDView"

    const-string v1, "setSupportedServices"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;->isCalendarSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;->isInlineVideoSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;->isSmsSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;->isStorePictureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;->isTelSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setViewable(I)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isViewable:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isViewable:Z

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isLaidOut:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireViewableChangeEvent()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDefaultCloseButton()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isCloseClickable:Z

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeTime:I

    if-nez v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeTimerPosition:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDView$15;

    invoke-direct {v2, p0, v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView$15;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;ILandroid/os/Handler;)V

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->closeTime:I

    goto :goto_0
.end method

.method private storePicture(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView-JS callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storePicture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v1, v0}, Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureStorePicture(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private useCustomClose(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MRAIDView-JS callback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useCustomClose "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->useCustomClose:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->useCustomClose:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->removeDefaultCloseButton()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->showDefaultCloseButton()V

    goto :goto_0
.end method


# virtual methods
.method public clearView()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$5;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$5;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string v0, "MRAIDView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v1, "MRAIDView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void

    :cond_0
    const-string v0, "landscape"

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "MRAIDView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isForcingFullScreen:Z

    if-eqz v0, :cond_1

    const-string v0, "MRAIDView"

    const-string v1, "onLayout ignored"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-ne v0, v5, :cond_3

    :cond_2
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->calculateScreenSize()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->calculateMaxSize()V

    :cond_3
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isClosing:Z

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isClosing:Z

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setCurrentPosition()V

    :goto_1
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-ne v0, v5, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDView$18;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDView$18;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput-boolean v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isLaidOut:Z

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_0

    iput v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->state:I

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireStateChangeEvent()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireReadyEvent()V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isViewable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->fireViewableChangeEvent()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v3}, Lorg/nexage/sourcekit/mraid/MRAIDView;->calculatePosition(Z)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setViewable(I)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getVisibility()I

    move-result v0

    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowVisibilityChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->setViewable(I)V

    return-void
.end method

.method public show()V
    .locals 6

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->preload:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isShown:Z

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->mData:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected showAsInterstitial(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->interstitialActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->expand(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public wasComplained()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;->isComplained:Z

    return-void
.end method
