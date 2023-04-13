.class public Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;
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
        Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Builder;,
        Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;,
        Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebChromeClient;,
        Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;
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

.field private static final TAG:Ljava/lang/String; = "MRAIDVideoAddendumView"

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

.field private isSkippable:Z

.field private isTouched:Z

.field private isViewable:Z

.field private listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

.field private mData:Ljava/lang/String;

.field private maxSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

.field private mraidJs:Ljava/lang/String;

.field private mraidWebChromeClient:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebChromeClient;

.field private mraidWebViewClient:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

.field private nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

.field private nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

.field private orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

.field private origTitleBarVisibility:I

.field private final originalRequestedOrientation:I

.field private preload:Z

.field private resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

.field private resizedView:Landroid/widget/RelativeLayout;

.field private rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

.field private screenSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

.field private state:I

.field private titleBar:Landroid/view/View;

.field private useCustomClose:Z

.field private webView:Landroid/webkit/WebView;

.field private webViewPart2:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;ZIILorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZZ)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isShown:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isCloseClickable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isTouched:Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeTimerPosition:I

    if-nez p4, :cond_0

    const/4 v1, 0x0

    new-array p4, v1, [Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isComplained:Z

    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->baseUrl:Ljava/lang/String;

    move/from16 v0, p7

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    move/from16 v0, p11

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->preload:Z

    move/from16 v0, p12

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isSkippable:Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isViewable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->useCustomClose:Z

    new-instance v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    invoke-direct {v1}, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;-><init>()V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    new-instance v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    invoke-direct {v1}, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;-><init>()V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    new-instance v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p1, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$1;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$1;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->originalRequestedOrientation:I

    :goto_0
    const-string v1, "MRAIDVideoAddendumView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originalRequestedOrientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->originalRequestedOrientation:I

    invoke-static {v3}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getOrientationString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$1;

    invoke-direct {v3, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$1;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebChromeClient;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$1;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidWebChromeClient:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebChromeClient;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$1;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidWebViewClient:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->createWebView()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const-string v2, "#7F000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->addView(Landroid/view/View;)V

    if-eqz p10, :cond_1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->createReportButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->addView(Landroid/view/View;)V

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$2;

    invoke-direct {v2, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$2;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectMraidJs(Landroid/webkit/WebView;)V

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

    if-lt v2, v5, :cond_5

    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_1
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
    if-eqz p7, :cond_6

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v1, v3, v1

    :goto_2
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

    if-nez v7, :cond_8

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_7

    int-to-float v2, v1

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_3
    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v1, v2

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move/from16 v0, p8

    if-le v3, v0, :cond_f

    move/from16 v0, p9

    if-le v1, v0, :cond_f

    if-eqz p8, :cond_f

    if-eqz p9, :cond_f

    move/from16 v1, p9

    move/from16 v2, p8

    :goto_4
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

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mData:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->preload:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mData:Ljava/lang/String;

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
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

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_3
    :goto_6
    return-void

    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->originalRequestedOrientation:I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_6
    move/from16 v0, p9

    int-to-float v1, v0

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto/16 :goto_2

    :cond_7
    int-to-float v1, v2

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_3

    :cond_8
    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p5

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewLoaded(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    goto :goto_5

    :cond_a
    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->debug:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->info:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.INFO;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->warning:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.WARNING;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.ERROR;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    invoke-static {}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->none:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const-string v2, "mraid.logLevel = mraid.LogLevelEnum.NONE;"

    invoke-direct {p0, v1, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    move v2, v3

    goto/16 :goto_4
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;ZIILorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZZLorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$1;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;ZIILorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZZ)V

    return-void
.end method

.method private AdClickThru(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdClickThru"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewClickThru(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private AdError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdError"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewError(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private AdLog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdLog"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewLog(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private AdPaused()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdPaused"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewPaused(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private AdPlaying()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdPlaying"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewPlaying(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private AdSkippableStateChange(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdSkippableStateChange"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isSkippable:Z

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isSkippable:Z

    invoke-interface {v0, p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewSkippableStateChange(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Z)V

    :cond_0
    return-void
.end method

.method private AdSkipped()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdSkipped"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewSkipped(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private AdStarted()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdStarted"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewStarted(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private AdStopped()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdStopped"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewStopped(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private AdUserClose()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdUserClose"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewUserClose(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private AdVideoComplete()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdVideoComplete"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewComplete(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private AdVideoFirstQuartile()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdVideoFirstQuartile"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewFirstQuartile(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private AdVideoMidpoint()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdVideoMidpoint"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewMidpoint(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private AdVideoStart()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdVideoStart"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewVideoStart(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private AdVideoThirdQuartile()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "AdVideoThirdQuartile"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewThirdQuartile(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setViewable(I)V

    return-void
.end method

.method static synthetic access$1100(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->pauseWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resumeWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1302(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isTouched:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    return v0
.end method

.method static synthetic access$1402(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;I)I
    .locals 0

    iput p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    return p1
.end method

.method static synthetic access$1500(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeFromExpanded()V

    return-void
.end method

.method static synthetic access$1600(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeFromResized()V

    return-void
.end method

.method static synthetic access$1700(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->removeResizeView()V

    return-void
.end method

.method static synthetic access$1900(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webViewPart2:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webViewPart2:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;
    .locals 1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->createWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectMraidJs(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isExpandingPart2:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isExpandingPart2:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandHelper(Landroid/webkit/WebView;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireStateChangeEvent()V

    return-void
.end method

.method static synthetic access$2800(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->createInterstitialReportView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isComplained:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->restoreOriginalOrientation()V

    return-void
.end method

.method static synthetic access$3200(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->restoreOriginalScreenState()V

    return-void
.end method

.method static synthetic access$3300(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->close()V

    return-void
.end method

.method static synthetic access$3400(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Lorg/nexage/sourcekit/vast/view/VastCountdown;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeTimerPosition:I

    return v0
.end method

.method static synthetic access$3502(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;I)I
    .locals 0

    iput p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeTimerPosition:I

    return p1
.end method

.method static synthetic access$3602(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isCloseClickable:Z

    return p1
.end method

.method static synthetic access$3700(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setResizedViewPosition()V

    return-void
.end method

.method static synthetic access$3802(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isPageFinished:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->createReportView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setSupportedServices()V

    return-void
.end method

.method static synthetic access$4100(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isLaidOut:Z

    return v0
.end method

.method static synthetic access$4200(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setScreenSize()V

    return-void
.end method

.method static synthetic access$4300(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setMaxSize()V

    return-void
.end method

.method static synthetic access$4400(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setCurrentPosition()V

    return-void
.end method

.method static synthetic access$4500(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setDefaultPosition()V

    return-void
.end method

.method static synthetic access$4600(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireReadyEvent()V

    return-void
.end method

.method static synthetic access$4700(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isViewable:Z

    return v0
.end method

.method static synthetic access$4800(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireViewableChangeEvent()V

    return-void
.end method

.method static synthetic access$4900(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->preload:Z

    return v0
.end method

.method static synthetic access$500(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/webkit/WebView;ZIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->onLayoutWebView(Landroid/webkit/WebView;ZIIII)V

    return-void
.end method

.method static synthetic access$5000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->parseCommandUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->open(Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$600(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    return v0
.end method

.method static synthetic access$700(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$800(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addCloseRegion(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lorg/nexage/sourcekit/vast/view/VastCountdown;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$14;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$14;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->useCustomClose:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->showDefaultCloseButton()V

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private applyOrientationProperties()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "MRAIDVideoAddendumView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyOrientationProperties "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v4, v4, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    invoke-virtual {v4}, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->interstitialActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    const-string v4, "MRAIDVideoAddendumView"

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

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget v3, v3, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    if-nez v3, :cond_4

    :cond_0
    :goto_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->interstitialActivity:Landroid/app/Activity;

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
    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget v3, v3, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    if-ne v3, v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

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

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string v2, "MRAIDVideoAddendumView"

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

    iput v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->contentViewTop:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->contentViewTop:I

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->contentViewTop:I

    sub-int/2addr v0, v2

    const-string v3, "MRAIDVideoAddendumView"

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

    const-string v2, "MRAIDVideoAddendumView"

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

    const-string v0, "MRAIDVideoAddendumView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateMaxSize contentViewTop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->contentViewTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iget v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->height:I

    iget v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->contentViewTop:I

    sub-int/2addr v1, v2

    const-string v2, "MRAIDVideoAddendumView"

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

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->width:I

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->height:I

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iput v0, v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->width:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iput v1, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->height:I

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isPageFinished:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setMaxSize()V

    :cond_2
    return-void
.end method

.method private calculatePosition(Z)V
    .locals 8

    const/4 v0, 0x2

    new-array v2, v0, [I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentWebView:Landroid/webkit/WebView;

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

    const-string v4, "MRAIDVideoAddendumView"

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

    const-string v4, "MRAIDVideoAddendumView"

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

    iget v6, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->contentViewTop:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->contentViewTop:I

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const-string v5, "MRAIDVideoAddendumView"

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

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

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

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    :goto_3
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isPageFinished:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setCurrentPosition()V

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
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v4, v3

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setDefaultPosition()V

    goto :goto_4
.end method

.method private calculateScreenSize()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_2

    :goto_0
    const-string v1, "MRAIDVideoAddendumView"

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

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v2, "MRAIDVideoAddendumView"

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

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->width:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->height:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iput v0, v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->width:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iput v1, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->height:I

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isPageFinished:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setScreenSize()V

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

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "close"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isCloseClickable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->useCustomClose:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$6;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$6;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private closeFromExpanded()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->clearView()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$10;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$10;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isClosing:Z

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$11;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$11;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webViewPart2:Landroid/webkit/WebView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$12;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$12;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    iput v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webViewPart2:Landroid/webkit/WebView;

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidWebChromeClient:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidWebViewClient:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentWebView:Landroid/webkit/WebView;

    goto :goto_1
.end method

.method private closeFromResized()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isClosing:Z

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->removeResizeView()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$13;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$13;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createCalendarEvent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MRAIDVideoAddendumView-JS callback"

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

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCreateCalendarEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createInterstitialReportView(Landroid/app/Activity;)Landroid/view/View;
    .locals 4

    new-instance v1, Lorg/nexage/sourcekit/mraid/rtb/ReportView;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-direct {v1, p1, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->registerCallback(Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;)V

    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getContext()Landroid/content/Context;

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

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

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

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->registerCallback(Lorg/nexage/sourcekit/mraid/rtb/ReportView$ComplainedCallback;)V

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/mraid/rtb/ReportView;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

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

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$3;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$3;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$4;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$4;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidWebChromeClient:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidWebViewClient:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

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

    const-string v1, "MRAIDVideoAddendumView-JS callback"

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

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

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

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    if-ne v0, v3, :cond_7

    :cond_4
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandHelper(Landroid/webkit/WebView;Landroid/app/Activity;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    if-ne v0, v4, :cond_5

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->removeResizeView()V

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

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;

    invoke-direct {v2, p0, v0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;Landroid/app/Activity;)V

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

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    :cond_0
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->applyOrientationProperties()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->forceFullScreen()V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isSkippable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->addCloseRegion(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setCloseRegionPosition(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->createReportButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$9;

    invoke-direct {v1, p0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$9;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->preload:Z

    if-nez v0, :cond_3

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mData:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_5

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iput-boolean v7, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isExpandingFromDefault:Z

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-eqz v0, :cond_4

    iput-boolean v7, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isLaidOut:Z

    iput v7, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireStateChangeEvent()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private fireReadyEvent()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "fireReadyEvent"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mraid.fireReadyEvent();"

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private fireStateChangeEvent()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "MRAIDVideoAddendumView"

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

    iget v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private fireViewableChangeEvent()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "fireViewableChangeEvent"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireViewableChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isViewable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private forceFullScreen()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "forceFullScreen"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

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
    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isFullScreen:Z

    and-int/lit16 v1, v4, 0x800

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isForceNotFullScreen:Z

    const/16 v1, -0x9

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->origTitleBarVisibility:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v4

    iput-boolean v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isActionBarShowing:Z

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    move v1, v2

    :goto_2
    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->titleBar:Landroid/view/View;

    const v1, 0x1020016

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->titleBar:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->titleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->titleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->origTitleBarVisibility:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->titleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v0, "MRAIDVideoAddendumView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFullScreen "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isFullScreen:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MRAIDVideoAddendumView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForceNotFullScreen "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isForceNotFullScreen:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MRAIDVideoAddendumView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActionBarShowing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isActionBarShowing:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MRAIDVideoAddendumView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "origTitleBarVisibility "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->origTitleBarVisibility:I

    invoke-static {v4}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isFullScreen:Z

    if-nez v0, :cond_3

    :goto_4
    iput-boolean v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isForcingFullScreen:Z

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

    iget-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

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

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getStringFromFileUrl(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v3, "MRAIDVideoAddendumView"

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

    const-string v1, "MRAIDVideoAddendumView"

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
    const-string v3, "MRAIDVideoAddendumView"

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
    const-string v3, "MRAIDVideoAddendumView"

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
    const-string v0, "MRAIDVideoAddendumView"

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

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$17;

    invoke-direct {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$17;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    const-string v0, "MRAIDVideoAddendumView"

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
    const-string v0, "MRAIDVideoAddendumView"

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

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private injectMraidJs(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidJs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ly8KLy8gIG1yYWlkLmpzCi8vCgooZnVuY3Rpb24oKSB7CgogIGNvbnNvbGUubG9nKCJNUkFJRCBvYmplY3QgbG9hZGluZy4uLiIpOwoKICAvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgICogY29uc29sZSBsb2dnaW5nIGhlbHBlcgogICAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8KCiAgdmFyIExvZ0xldmVsRW51bSA9IHsKICAgICJERUJVRyIgICA6IDAsCiAgICAiSU5GTyIgICAgOiAxLAogICAgIldBUk5JTkciIDogMiwKICAgICJFUlJPUiIgICA6IDMsCiAgICAiTk9ORSIgICAgOiA0CiAgfTsKCiAgdmFyIGxvZ0xldmVsID0gTG9nTGV2ZWxFbnVtLk5PTkU7CiAgdmFyIGxvZyA9IHt9OwoKICBsb2cuZCA9IGZ1bmN0aW9uKG1zZykgewogICAgaWYgKGxvZ0xldmVsIDw9IExvZ0xldmVsRW51bS5ERUJVRykgewogICAgICBjb25zb2xlLmxvZygiKEQtbXJhaWQuanMpICIgKyBtc2cpOwogICAgfQogIH07CgogIGxvZy5pID0gZnVuY3Rpb24obXNnKSB7CiAgICBpZiAobG9nTGV2ZWwgPD0gTG9nTGV2ZWxFbnVtLklORk8pIHsKICAgICAgY29uc29sZS5sb2coIihJLW1yYWlkLmpzKSAiICsgbXNnKTsKICAgIH0KICB9OwoKICBsb2cudyA9IGZ1bmN0aW9uKG1zZykgewogICAgaWYgKGxvZ0xldmVsIDw9IExvZ0xldmVsRW51bS5XQVJOSU5HKSB7CiAgICAgIGNvbnNvbGUubG9nKCIoVy1tcmFpZC5qcykgIiArIG1zZyk7CiAgICB9CiAgfTsKCiAgbG9nLmUgPSBmdW5jdGlvbihtc2cpIHsKICAgIGlmIChsb2dMZXZlbCA8PSBMb2dMZXZlbEVudW0uRVJST1IpIHsKICAgICAgY29uc29sZS5sb2coIihFLW1yYWlkLmpzKSAiICsgbXNnKTsKICAgIH0KICB9OwoKICAvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgICogTVJBSUQgZGVjbGFyYXRpb24KICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCgogIHZhciBtcmFpZCA9IHdpbmRvdy5tcmFpZCA9IHt9OwoKICAvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgICogY29uc3RhbnRzCiAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKICB2YXIgVkVSU0lPTiA9ICIyLjAiOwoKICB2YXIgU1RBVEVTID0gbXJhaWQuU1RBVEVTID0gewogICAgIkxPQURJTkciIDogImxvYWRpbmciLAogICAgIkRFRkFVTFQiIDogImRlZmF1bHQiLAogICAgIkVYUEFOREVEIiA6ICJleHBhbmRlZCIsCiAgICAiUkVTSVpFRCIgOiAicmVzaXplZCIsCiAgICAiSElEREVOIiA6ICJoaWRkZW4iCiAgfTsKCiAgdmFyIFBMQUNFTUVOVF9UWVBFUyA9IG1yYWlkLlBMQUNFTUVOVF9UWVBFUyA9IHsKICAgICJJTkxJTkUiIDogImlubGluZSIsCiAgICAiSU5URVJTVElUSUFMIiA6ICJpbnRlcnN0aXRpYWwiCiAgfTsKCiAgdmFyIFJFU0laRV9QUk9QRVJUSUVTX0NVU1RPTV9DTE9TRV9QT1NJVElPTiA9IG1yYWlkLlJFU0laRV9QUk9QRVJUSUVTX0NVU1RPTV9DTE9TRV9QT1NJVElPTiA9IHsKICAgICJUT1BfTEVGVCIgOiAidG9wLWxlZnQiLAogICAgIlRPUF9DRU5URVIiIDogInRvcC1jZW50ZXIiLAogICAgIlRPUF9SSUdIVCIgOiAidG9wLXJpZ2h0IiwKICAgICJDRU5URVIiIDogImNlbnRlciIsCiAgICAiQk9UVE9NX0xFRlQiIDogImJvdHRvbS1sZWZ0IiwKICAgICJCT1RUT01fQ0VOVEVSIiA6ICJib3R0b20tY2VudGVyIiwKICAgICJCT1RUT01fUklHSFQiIDogImJvdHRvbS1yaWdodCIKICB9OwoKICB2YXIgT1JJRU5UQVRJT05fUFJPUEVSVElFU19GT1JDRV9PUklFTlRBVElPTiA9IG1yYWlkLk9SSUVOVEFUSU9OX1BST1BFUlRJRVNfRk9SQ0VfT1JJRU5UQVRJT04gPSB7CiAgICAiUE9SVFJBSVQiIDogInBvcnRyYWl0IiwKICAgICJMQU5EU0NBUEUiIDogImxhbmRzY2FwZSIsCiAgICAiTk9ORSIgOiAibm9uZSIKICB9OwoKICB2YXIgRVZFTlRTID0gbXJhaWQuRVZFTlRTID0gewogICAgIkVSUk9SIiA6ICJlcnJvciIsCiAgICAiUkVBRFkiIDogInJlYWR5IiwKICAgICJTSVpFQ0hBTkdFIiA6ICJzaXplQ2hhbmdlIiwKICAgICJTVEFURUNIQU5HRSIgOiAic3RhdGVDaGFuZ2UiLAogICAgIlZJRVdBQkxFQ0hBTkdFIiA6ICJ2aWV3YWJsZUNoYW5nZSIKICB9OwoKICB2YXIgU1VQUE9SVEVEX0ZFQVRVUkVTID0gbXJhaWQuU1VQUE9SVEVEX0ZFQVRVUkVTID0gewogICAgIlNNUyIgOiAic21zIiwKICAgICJURUwiIDogInRlbCIsCiAgICAiQ0FMRU5EQVIiIDogImNhbGVuZGFyIiwKICAgICJTVE9SRVBJQ1RVUkUiIDogInN0b3JlUGljdHVyZSIsCiAgICAiSU5MSU5FVklERU8iIDogImlubGluZVZpZGVvIgogIH07CgogIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAgKiBzdGF0ZQogICAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8KCiAgdmFyIHN0YXRlID0gU1RBVEVTLkxPQURJTkc7CiAgdmFyIHBsYWNlbWVudFR5cGUgPSBQTEFDRU1FTlRfVFlQRVMuSU5MSU5FOwogIHZhciBzdXBwb3J0ZWRGZWF0dXJlcyA9IHt9OwogIHZhciBpc1ZpZXdhYmxlID0gZmFsc2U7CiAgdmFyIGlzRXhwYW5kUHJvcGVydGllc1NldCA9IGZhbHNlOwogIHZhciBpc1Jlc2l6ZVJlYWR5ID0gZmFsc2U7CgogIHZhciBleHBhbmRQcm9wZXJ0aWVzID0gewogICAgIndpZHRoIiA6IDAsCiAgICAiaGVpZ2h0IiA6IDAsCiAgICAidXNlQ3VzdG9tQ2xvc2UiIDogZmFsc2UsCiAgICAiaXNNb2RhbCIgOiB0cnVlCiAgfTsKCiAgdmFyIG9yaWVudGF0aW9uUHJvcGVydGllcyA9IHsKICAgICJhbGxvd09yaWVudGF0aW9uQ2hhbmdlIiA6IHRydWUsCiAgICAiZm9yY2VPcmllbnRhdGlvbiIgOiBPUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OLk5PTkUKICB9OwoKICB2YXIgcmVzaXplUHJvcGVydGllcyA9IHsKICAgICJ3aWR0aCIgOiAwLAogICAgImhlaWdodCIgOiAwLAogICAgImN1c3RvbUNsb3NlUG9zaXRpb24iIDogUkVTSVpFX1BST1BFUlRJRVNfQ1VTVE9NX0NMT1NFX1BPU0lUSU9OLlRPUF9SSUdIVCwKICAgICJvZmZzZXRYIiA6IDAsCiAgICAib2Zmc2V0WSIgOiAwLAogICAgImFsbG93T2Zmc2NyZWVuIiA6IHRydWUKICB9OwoKICB2YXIgY3VycmVudFBvc2l0aW9uID0gewogICAgIngiIDogMCwKICAgICJ5IiA6IDAsCiAgICAid2lkdGgiIDogMCwKICAgICJoZWlnaHQiIDogMAogIH07CgogIHZhciBkZWZhdWx0UG9zaXRpb24gPSB7CiAgICAieCIgOiAwLAogICAgInkiIDogMCwKICAgICJ3aWR0aCIgOiAwLAogICAgImhlaWdodCIgOiAwCiAgfTsKCiAgdmFyIG1heFNpemUgPSB7CiAgICAid2lkdGgiIDogMCwKICAgICJoZWlnaHQiIDogMAogIH07CgogIHZhciBzY3JlZW5TaXplID0gewogICAgIndpZHRoIiA6IDAsCiAgICAiaGVpZ2h0IiA6IDAKICB9OwoKICB2YXIgY3VycmVudE9yaWVudGF0aW9uID0gMDsKCiAgdmFyIGxpc3RlbmVycyA9IHt9OwoKICAvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgICogIm9mZmljaWFsIiBBUEk6IG1ldGhvZHMgY2FsbGVkIGJ5IGNyZWF0aXZlCiAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKICBtcmFpZC5hZGRFdmVudExpc3RlbmVyID0gZnVuY3Rpb24oZXZlbnQsIGxpc3RlbmVyKSB7CiAgICBsb2cuaSgibXJhaWQuYWRkRXZlbnRMaXN0ZW5lciAiICsgZXZlbnQgKyAiOiAiICsgU3RyaW5nKGxpc3RlbmVyKSk7CiAgICBpZiAoIWV2ZW50IHx8ICFsaXN0ZW5lcikgewogICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgiQm90aCBldmVudCBhbmQgbGlzdGVuZXIgYXJlIHJlcXVpcmVkLiIsICJhZGRFdmVudExpc3RlbmVyIik7CiAgICAgIHJldHVybjsKICAgIH0KICAgIGlmICghY29udGFpbnMoZXZlbnQsIEVWRU5UUykpIHsKICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoIlVua25vd24gTVJBSUQgZXZlbnQ6ICIgKyBldmVudCwgImFkZEV2ZW50TGlzdGVuZXIiKTsKICAgICAgcmV0dXJuOwogICAgfQogICAgdmFyIGxpc3RlbmVyc0ZvckV2ZW50ID0gbGlzdGVuZXJzW2V2ZW50XSA9IGxpc3RlbmVyc1tldmVudF0gfHwgW107CiAgICAvLyBjaGVjayB0byBtYWtlIHN1cmUgdGhhdCB0aGUgbGlzdGVuZXIgaXNuJ3QgYWxyZWFkeSByZWdpc3RlcmVkCiAgICBmb3IgKHZhciBpID0gMDsgaSA8IGxpc3RlbmVyc0ZvckV2ZW50Lmxlbmd0aDsgaSsrKSB7CiAgICAgIHZhciBzdHIxID0gU3RyaW5nKGxpc3RlbmVyKTsKICAgICAgdmFyIHN0cjIgPSBTdHJpbmcobGlzdGVuZXJzRm9yRXZlbnRbaV0pOwogICAgICBpZiAobGlzdGVuZXIgPT09IGxpc3RlbmVyc0ZvckV2ZW50W2ldIHx8IHN0cjEgPT09IHN0cjIpIHsKICAgICAgICBsb2cuaSgibGlzdGVuZXIgIiArIHN0cjEgKyAiIGlzIGFscmVhZHkgcmVnaXN0ZXJlZCBmb3IgZXZlbnQgIiArIGV2ZW50KTsKICAgICAgICByZXR1cm47CiAgICAgIH0KICAgIH0KICAgIGxpc3RlbmVyc0ZvckV2ZW50LnB1c2gobGlzdGVuZXIpOwogIH07CgogIG1yYWlkLmNyZWF0ZUNhbGVuZGFyRXZlbnQgPSBmdW5jdGlvbihwYXJhbWV0ZXJzKSB7CiAgICBsb2cuaSgibXJhaWQuY3JlYXRlQ2FsZW5kYXJFdmVudCB3aXRoICIgKyBwYXJhbWV0ZXJzKTsKICAgIGlmIChzdXBwb3J0ZWRGZWF0dXJlc1ttcmFpZC5TVVBQT1JURURfRkVBVFVSRVMuQ0FMRU5EQVJdKSB7CiAgICAgIGNhbGxOYXRpdmUoImNyZWF0ZUNhbGVuZGFyRXZlbnQ/ZXZlbnRKU09OPSIJKyBKU09OLnN0cmluZ2lmeShwYXJhbWV0ZXJzKSk7CiAgICB9IGVsc2UgewogICAgICBsb2cuZSgiY3JlYXRlQ2FsZW5kYXJFdmVudCBpcyBub3Qgc3VwcG9ydGVkIik7CiAgICB9CiAgfTsKCiAgbXJhaWQuY2xvc2UgPSBmdW5jdGlvbigpIHsKICAgIGxvZy5pKCJtcmFpZC5jbG9zZSIpOwogICAgaWYgKHN0YXRlID09PSBTVEFURVMuTE9BRElORwogICAgICAgIHx8IChzdGF0ZSA9PT0gU1RBVEVTLkRFRkFVTFQgJiYgcGxhY2VtZW50VHlwZSA9PT0gUExBQ0VNRU5UX1RZUEVTLklOTElORSkKICAgICAgICB8fCBzdGF0ZSA9PT0gU1RBVEVTLkhJRERFTikgewogICAgICAvLyBkbyBub3RoaW5nCiAgICAgIHJldHVybjsKICAgIH0KICAgIGNhbGxOYXRpdmUoImNsb3NlIik7CiAgfTsKCiAgbXJhaWQuZXhwYW5kID0gZnVuY3Rpb24odXJsKSB7CiAgICBpZiAodXJsID09PSB1bmRlZmluZWQpIHsKICAgICAgbG9nLmkoIm1yYWlkLmV4cGFuZCAoMS1wYXJ0KSIpOwogICAgfSBlbHNlIHsKICAgICAgbG9nLmkoIm1yYWlkLmV4cGFuZCAiICsgdXJsKTsKICAgIH0KICAgIC8vIFRoZSBvbmx5IHRpbWUgaXQgaXMgdmFsaWQgdG8gY2FsbCBleHBhbmQgaXMgd2hlbiB0aGUgYWQgaXMKICAgIC8vIGEgYmFubmVyIGN1cnJlbnRseSBpbiBlaXRoZXIgZGVmYXVsdCBvciByZXNpemVkIHN0YXRlLgogICAgaWYgKHBsYWNlbWVudFR5cGUgIT09IFBMQUNFTUVOVF9UWVBFUy5JTkxJTkUKICAgICAgICB8fCAoc3RhdGUgIT09IFNUQVRFUy5ERUZBVUxUICYmIHN0YXRlICE9PSBTVEFURVMuUkVTSVpFRCkpIHsKICAgICAgcmV0dXJuOwogICAgfQogICAgaWYgKHVybCA9PT0gdW5kZWZpbmVkKSB7CiAgICAgIGNhbGxOYXRpdmUoImV4cGFuZCIpOwogICAgfSBlbHNlIHsKICAgICAgY2FsbE5hdGl2ZSgiZXhwYW5kP3VybD0iICsgZW5jb2RlVVJJQ29tcG9uZW50KHVybCkpOwogICAgfQogIH07CgogIG1yYWlkLmdldEN1cnJlbnRQb3NpdGlvbiA9IGZ1bmN0aW9uKCkgewogICAgbG9nLmkoIm1yYWlkLmdldEN1cnJlbnRQb3NpdGlvbiIpOwogICAgcmV0dXJuIGN1cnJlbnRQb3NpdGlvbjsKICB9OwoKICBtcmFpZC5nZXREZWZhdWx0UG9zaXRpb24gPSBmdW5jdGlvbigpIHsKICAgIGxvZy5pKCJtcmFpZC5nZXREZWZhdWx0UG9zaXRpb24iKTsKICAgIHJldHVybiBkZWZhdWx0UG9zaXRpb247CiAgfTsKCiAgbXJhaWQuZ2V0RXhwYW5kUHJvcGVydGllcyA9IGZ1bmN0aW9uKCkgewogICAgbG9nLmkoIm1yYWlkLmdldEV4cGFuZFByb3BlcnRpZXMiKTsKICAgIHJldHVybiBleHBhbmRQcm9wZXJ0aWVzOwogIH07CgogIG1yYWlkLmdldE1heFNpemUgPSBmdW5jdGlvbigpIHsKICAgIGxvZy5pKCJtcmFpZC5nZXRNYXhTaXplIik7CiAgICByZXR1cm4gbWF4U2l6ZTsKICB9OwoKICBtcmFpZC5nZXRPcmllbnRhdGlvblByb3BlcnRpZXMgPSBmdW5jdGlvbigpIHsKICAgIGxvZy5pKCJtcmFpZC5nZXRPcmllbnRhdGlvblByb3BlcnRpZXMiKTsKICAgIHJldHVybiBvcmllbnRhdGlvblByb3BlcnRpZXM7CiAgfTsKCiAgbXJhaWQuZ2V0UGxhY2VtZW50VHlwZSA9IGZ1bmN0aW9uKCkgewogICAgbG9nLmkoIm1yYWlkLmdldFBsYWNlbWVudFR5cGUiKTsKICAgIHJldHVybiBwbGFjZW1lbnRUeXBlOwogIH07CgogIG1yYWlkLmdldFJlc2l6ZVByb3BlcnRpZXMgPSBmdW5jdGlvbigpIHsKICAgIGxvZy5pKCJtcmFpZC5nZXRSZXNpemVQcm9wZXJ0aWVzIik7CiAgICByZXR1cm4gcmVzaXplUHJvcGVydGllczsKICB9OwoKICBtcmFpZC5nZXRTY3JlZW5TaXplID0gZnVuY3Rpb24oKSB7CiAgICBsb2cuaSgibXJhaWQuZ2V0U2NyZWVuU2l6ZSIpOwogICAgcmV0dXJuIHNjcmVlblNpemU7CiAgfTsKCiAgbXJhaWQuZ2V0U3RhdGUgPSBmdW5jdGlvbigpIHsKICAgIGxvZy5pKCJtcmFpZC5nZXRTdGF0ZSIpOwogICAgcmV0dXJuIHN0YXRlOwogIH07CgogIG1yYWlkLmdldFZlcnNpb24gPSBmdW5jdGlvbigpIHsKICAgIGxvZy5pKCJtcmFpZC5nZXRWZXJzaW9uIik7CiAgICByZXR1cm4gVkVSU0lPTjsKICB9OwoKICBtcmFpZC5pc1ZpZXdhYmxlID0gZnVuY3Rpb24oKSB7CiAgICBsb2cuaSgibXJhaWQuaXNWaWV3YWJsZSIpOwogICAgcmV0dXJuIGlzVmlld2FibGU7CiAgfTsKCiAgbXJhaWQub3BlbiA9IGZ1bmN0aW9uKHVybCkgewogICAgbG9nLmkoIm1yYWlkLm9wZW4gIiArIHVybCk7CiAgICBjYWxsTmF0aXZlKCJvcGVuP3VybD0iICsgZW5jb2RlVVJJQ29tcG9uZW50KHVybCkpOwogIH07CgogIG1yYWlkLnBsYXlWaWRlbyA9IGZ1bmN0aW9uKHVybCkgewogICAgbG9nLmkoIm1yYWlkLnBsYXlWaWRlbyAiICsgdXJsKTsKICAgIGNhbGxOYXRpdmUoInBsYXlWaWRlbz91cmw9IiArIGVuY29kZVVSSUNvbXBvbmVudCh1cmwpKTsKICB9OwoKICBtcmFpZC5yZW1vdmVFdmVudExpc3RlbmVyID0gZnVuY3Rpb24oZXZlbnQsIGxpc3RlbmVyKSB7CiAgICBsb2cuaSgibXJhaWQucmVtb3ZlRXZlbnRMaXN0ZW5lciAiICsgZXZlbnQgKyAiIDogIiArIFN0cmluZyhsaXN0ZW5lcikpOwogICAgaWYgKCFldmVudCkgewogICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgiRXZlbnQgaXMgcmVxdWlyZWQuIiwgInJlbW92ZUV2ZW50TGlzdGVuZXIiKTsKICAgICAgcmV0dXJuOwogICAgfQogICAgaWYgKCFjb250YWlucyhldmVudCwgRVZFTlRTKSkgewogICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgiVW5rbm93biBNUkFJRCBldmVudDogIiArIGV2ZW50LCAicmVtb3ZlRXZlbnRMaXN0ZW5lciIpOwogICAgICByZXR1cm47CiAgICB9CiAgICBpZiAobGlzdGVuZXJzLmhhc093blByb3BlcnR5KGV2ZW50KSkgewogICAgICBpZiAobGlzdGVuZXIpIHsKICAgICAgICB2YXIgbGlzdGVuZXJzRm9yRXZlbnQgPSBsaXN0ZW5lcnNbZXZlbnRdOwogICAgICAgIC8vIHRyeSB0byBmaW5kIHRoZSBnaXZlbiBsaXN0ZW5lcgogICAgICAgIHZhciBsZW4gPSBsaXN0ZW5lcnNGb3JFdmVudC5sZW5ndGg7CiAgICAgICAgZm9yICh2YXIgaSA9IDA7IGkgPCBsZW47IGkrKykgewogICAgICAgICAgdmFyIHJlZ2lzdGVyZWRMaXN0ZW5lciA9IGxpc3RlbmVyc0ZvckV2ZW50W2ldOwogICAgICAgICAgdmFyIHN0cjEgPSBTdHJpbmcobGlzdGVuZXIpOwogICAgICAgICAgdmFyIHN0cjIgPSBTdHJpbmcocmVnaXN0ZXJlZExpc3RlbmVyKTsKICAgICAgICAgIGlmIChsaXN0ZW5lciA9PT0gcmVnaXN0ZXJlZExpc3RlbmVyIHx8IHN0cjEgPT09IHN0cjIpIHsKICAgICAgICAgICAgbGlzdGVuZXJzRm9yRXZlbnQuc3BsaWNlKGksIDEpOwogICAgICAgICAgICBicmVhazsKICAgICAgICAgIH0KICAgICAgICB9CiAgICAgICAgaWYgKGkgPT09IGxlbikgewogICAgICAgICAgbG9nLmkoImxpc3RlbmVyICIgKyBzdHIxICsgIiBub3QgZm91bmQgZm9yIGV2ZW50ICIgKyBldmVudCk7CiAgICAgICAgfQogICAgICAgIGlmIChsaXN0ZW5lcnNGb3JFdmVudC5sZW5ndGggPT09IDApIHsKICAgICAgICAgIGRlbGV0ZSBsaXN0ZW5lcnNbZXZlbnRdOwogICAgICAgIH0KICAgICAgfSBlbHNlIHsKICAgICAgICAvLyBubyBsaXN0ZW5lciB0byByZW1vdmUgd2FzIHByb3ZpZGVkLCBzbyByZW1vdmUgYWxsIGxpc3RlbmVycwogICAgICAgIC8vIGZvciBnaXZlbiBldmVudAogICAgICAgIGRlbGV0ZSBsaXN0ZW5lcnNbZXZlbnRdOwogICAgICB9CiAgICB9IGVsc2UgewogICAgICBsb2cuaSgibm8gbGlzdGVuZXJzIHJlZ2lzdGVyZWQgZm9yIGV2ZW50ICIgKyBldmVudCk7CiAgICB9CiAgfTsKCiAgbXJhaWQucmVzaXplID0gZnVuY3Rpb24oKSB7CiAgICBsb2cuaSgibXJhaWQucmVzaXplIik7CiAgICAvLyBUaGUgb25seSB0aW1lIGl0IGlzIHZhbGlkIHRvIGNhbGwgcmVzaXplIGlzIHdoZW4gdGhlIGFkIGlzCiAgICAvLyBhIGJhbm5lciBjdXJyZW50bHkgaW4gZWl0aGVyIGRlZmF1bHQgb3IgcmVzaXplZCBzdGF0ZS4KICAgIC8vIFRyaWdnZXIgYW4gZXJyb3IgaWYgdGhlIGN1cnJlbnQgc3RhdGUgaXMgZXhwYW5kZWQuCiAgICBpZiAocGxhY2VtZW50VHlwZSA9PT0gUExBQ0VNRU5UX1RZUEVTLklOVEVSU1RJVElBTCB8fCBzdGF0ZSA9PT0gU1RBVEVTLkxPQURJTkcgfHwgc3RhdGUgPT09IFNUQVRFUy5ISURERU4pIHsKICAgICAgLy8gZG8gbm90aGluZwogICAgICByZXR1cm47CiAgICB9CiAgICBpZiAoc3RhdGUgPT09IFNUQVRFUy5FWFBBTkRFRCkgewogICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgibXJhaWQucmVzaXplIGNhbGxlZCB3aGVuIGFkIGlzIGluIGV4cGFuZGVkIHN0YXRlIiwgIm1yYWlkLnJlc2l6ZSIpOwogICAgICByZXR1cm47CiAgICB9CiAgICBpZiAoIWlzUmVzaXplUmVhZHkpIHsKICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoIm1yYWlkLnJlc2l6ZSBpcyBub3QgcmVhZHkgdG8gYmUgY2FsbGVkIiwgIm1yYWlkLnJlc2l6ZSIpOwogICAgICByZXR1cm47CiAgICB9CiAgICBjYWxsTmF0aXZlKCJyZXNpemUiKTsKICB9OwoKICBtcmFpZC5zZXRFeHBhbmRQcm9wZXJ0aWVzID0gZnVuY3Rpb24ocHJvcGVydGllcykgewogICAgbG9nLmkoIm1yYWlkLnNldEV4cGFuZFByb3BlcnRpZXMiKTsKCiAgICBpZiAoIXZhbGlkYXRlKHByb3BlcnRpZXMsICJzZXRFeHBhbmRQcm9wZXJ0aWVzIikpIHsKICAgICAgbG9nLmUoImZhaWxlZCB2YWxpZGF0aW9uIik7CiAgICAgIHJldHVybjsKICAgIH0KCiAgICB2YXIgb2xkVXNlQ3VzdG9tQ2xvc2UgPSBleHBhbmRQcm9wZXJ0aWVzLnVzZUN1c3RvbUNsb3NlOwoKICAgIC8vIGV4cGFuZFByb3BlcnRpZXMgY29udGFpbnMgMyByZWFkLXdyaXRlIHByb3BlcnRpZXM6IHdpZHRoLCBoZWlnaHQsIGFuZCB1c2VDdXN0b21DbG9zZTsKICAgIC8vIHRoZSBpc01vZGFsIHByb3BlcnR5IGlzIHJlYWQtb25seQogICAgdmFyIHJ3UHJvcHMgPSBbICJ3aWR0aCIsICJoZWlnaHQiLCAidXNlQ3VzdG9tQ2xvc2UiIF07CiAgICBmb3IgKHZhciBpID0gMDsgaSA8IHJ3UHJvcHMubGVuZ3RoOyBpKyspIHsKICAgICAgdmFyIHByb3BuYW1lID0gcndQcm9wc1tpXTsKICAgICAgaWYgKHByb3BlcnRpZXMuaGFzT3duUHJvcGVydHkocHJvcG5hbWUpKSB7CiAgICAgICAgZXhwYW5kUHJvcGVydGllc1twcm9wbmFtZV0gPSBwcm9wZXJ0aWVzW3Byb3BuYW1lXTsKICAgICAgfQogICAgfQoKICAgIC8vIEluIE1SQUlEIHYyLjAsIGFsbCBleHBhbmRlZCBhZHMgYnkgZGVmaW5pdGlvbiBjb3ZlciB0aGUgZW50aXJlIHNjcmVlbiwKICAgIC8vIHNvIHRoZSBvbmx5IHByb3BlcnR5IHRoYXQgdGhlIG5hdGl2ZSBzaWRlIGhhcyB0byBrbm93IGFib3V0IGlzIHVzZUN1c3RvbUNsb3NlLgogICAgLy8gKFRoYXQgaXMsIHRoZSB3aWR0aCBhbmQgaGVpZ2h0IHByb3BlcnRpZXMgYXJlIG5vdCBuZWVkZWQgYnkgdGhlIG5hdGl2ZSBjb2RlLikKICAgIGlmIChleHBhbmRQcm9wZXJ0aWVzLnVzZUN1c3RvbUNsb3NlICE9PSBvbGRVc2VDdXN0b21DbG9zZSkgewogICAgICBjYWxsTmF0aXZlKCJ1c2VDdXN0b21DbG9zZT91c2VDdXN0b21DbG9zZT0iCSsgZXhwYW5kUHJvcGVydGllcy51c2VDdXN0b21DbG9zZSk7CiAgICB9CgogICAgaXNFeHBhbmRQcm9wZXJ0aWVzU2V0ID0gdHJ1ZTsKICB9OwoKICBtcmFpZC5zZXRPcmllbnRhdGlvblByb3BlcnRpZXMgPSBmdW5jdGlvbihwcm9wZXJ0aWVzKSB7CiAgICBsb2cuaSgibXJhaWQuc2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIik7CgogICAgaWYgKCF2YWxpZGF0ZShwcm9wZXJ0aWVzLCAic2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIikpIHsKICAgICAgbG9nLmUoImZhaWxlZCB2YWxpZGF0aW9uIik7CiAgICAgIHJldHVybjsKICAgIH0KCiAgICB2YXIgbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzID0ge307CiAgICBuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZSA9IG9yaWVudGF0aW9uUHJvcGVydGllcy5hbGxvd09yaWVudGF0aW9uQ2hhbmdlLAogICAgICAgIG5ld09yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uID0gb3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb247CgogICAgLy8gb3JpZW50YXRpb25Qcm9wZXJ0aWVzIGNvbnRhaW5zIDIgcmVhZC13cml0ZSBwcm9wZXJ0aWVzOgogICAgLy8gYWxsb3dPcmllbnRhdGlvbkNoYW5nZSBhbmQgZm9yY2VPcmllbnRhdGlvbgogICAgdmFyIHJ3UHJvcHMgPSBbICJhbGxvd09yaWVudGF0aW9uQ2hhbmdlIiwgImZvcmNlT3JpZW50YXRpb24iIF07CiAgICBmb3IgKHZhciBpID0gMDsgaSA8IHJ3UHJvcHMubGVuZ3RoOyBpKyspIHsKICAgICAgdmFyIHByb3BuYW1lID0gcndQcm9wc1tpXTsKICAgICAgaWYgKHByb3BlcnRpZXMuaGFzT3duUHJvcGVydHkocHJvcG5hbWUpKSB7CiAgICAgICAgbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzW3Byb3BuYW1lXSA9IHByb3BlcnRpZXNbcHJvcG5hbWVdOwogICAgICB9CiAgICB9CgogICAgLy8gU2V0dGluZyBhbGxvd09yaWVudGF0aW9uQ2hhbmdlIHRvIHRydWUgd2hpbGUgc2V0dGluZyBmb3JjZU9yaWVudGF0aW9uCiAgICAvLyB0byBlaXRoZXIgcG9ydHJhaXQgb3IgbGFuZHNjYXBlCiAgICAvLyBpcyBjb25zaWRlcmVkIGFuIGVycm9yIGNvbmRpdGlvbi4KICAgIGlmIChuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZQogICAgICAgICYmIG5ld09yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uICE9PSBtcmFpZC5PUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OLk5PTkUpIHsKICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoCiAgICAgICAgICAiYWxsb3dPcmllbnRhdGlvbkNoYW5nZSBpcyB0cnVlIGJ1dCBmb3JjZU9yaWVudGF0aW9uIGlzICIKICAgICAgICAgICsgbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb24sCiAgICAgICAgICAic2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIik7CiAgICAgIHJldHVybjsKICAgIH0KCiAgICBvcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZSA9IG5ld09yaWVudGF0aW9uUHJvcGVydGllcy5hbGxvd09yaWVudGF0aW9uQ2hhbmdlOwogICAgb3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb24gPSBuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuZm9yY2VPcmllbnRhdGlvbjsKCiAgICB2YXIgcGFyYW1zID0gImFsbG93T3JpZW50YXRpb25DaGFuZ2U9IgogICAgICAgICsgb3JpZW50YXRpb25Qcm9wZXJ0aWVzLmFsbG93T3JpZW50YXRpb25DaGFuZ2UKICAgICAgICArICImZm9yY2VPcmllbnRhdGlvbj0iICsgb3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb247CgogICAgY2FsbE5hdGl2ZSgic2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzPyIgKyBwYXJhbXMpOwogIH07CgogIG1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMgPSBmdW5jdGlvbihwcm9wZXJ0aWVzKSB7CiAgICBsb2cuaSgibXJhaWQuc2V0UmVzaXplUHJvcGVydGllcyIpOwoKICAgIGlzUmVzaXplUmVhZHkgPSBmYWxzZTsKCiAgICAvLyByZXNpemVQcm9wZXJ0aWVzIGNvbnRhaW5zIDYgcmVhZC13cml0ZSBwcm9wZXJ0aWVzOgogICAgLy8gd2lkdGgsIGhlaWdodCwgb2Zmc2V0WCwgb2Zmc2V0WSwgY3VzdG9tQ2xvc2VQb3NpdGlvbiwgYWxsb3dPZmZzY3JlZW4KCiAgICAvLyBUaGUgcHJvcGVydGllcyBvYmplY3QgcGFzc2VkIGludG8gdGhpcyBmdW5jdGlvbiBtdXN0IGNvbnRhaW4gd2lkdGgsIGhlaWdodCwgb2Zmc2V0WCwgb2Zmc2V0WS4KICAgIC8vIFRoZSByZW1haW5pbmcgdHdvIHByb3BlcnRpZXMgYXJlIG9wdGlvbmFsLgogICAgdmFyIHJlcXVpcmVkUHJvcHMgPSBbICJ3aWR0aCIsICJoZWlnaHQiLCAib2Zmc2V0WCIsICJvZmZzZXRZIiBdOwogICAgZm9yICh2YXIgaSA9IDA7IGkgPCByZXF1aXJlZFByb3BzLmxlbmd0aDsgaSsrKSB7CiAgICAgIHZhciBwcm9wbmFtZSA9IHJlcXVpcmVkUHJvcHNbaV07CiAgICAgIGlmICghcHJvcGVydGllcy5oYXNPd25Qcm9wZXJ0eShwcm9wbmFtZSkpIHsKICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgKICAgICAgICAgICAgInJlcXVpcmVkIHByb3BlcnR5ICIgKyBwcm9wbmFtZSArICIgaXMgbWlzc2luZyIsCiAgICAgICAgICAgICJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7CiAgICAgICAgcmV0dXJuOwogICAgICB9CiAgICB9CgogICAgaWYgKCF2YWxpZGF0ZShwcm9wZXJ0aWVzLCAic2V0UmVzaXplUHJvcGVydGllcyIpKSB7CiAgICAgIG1yYWlkLmZpcmVFcnJvckV2ZW50KCJmYWlsZWQgdmFsaWRhdGlvbiIsICJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7CiAgICAgIHJldHVybjsKICAgIH0KCiAgICB2YXIgYWRqdXN0bWVudHMgPSB7ICJ4IjogMCwgInkiOiAwIH07CgogICAgdmFyIGFsbG93T2Zmc2NyZWVuID0gcHJvcGVydGllcy5oYXNPd25Qcm9wZXJ0eSgiYWxsb3dPZmZzY3JlZW4iKSA/IHByb3BlcnRpZXMuYWxsb3dPZmZzY3JlZW4gOiByZXNpemVQcm9wZXJ0aWVzLmFsbG93T2Zmc2NyZWVuOwogICAgaWYgKCFhbGxvd09mZnNjcmVlbikgewogICAgICBpZiAocHJvcGVydGllcy53aWR0aCA+IG1heFNpemUud2lkdGggfHwgcHJvcGVydGllcy5oZWlnaHQgPiBtYXhTaXplLmhlaWdodCkgewogICAgICAgIG1yYWlkLmZpcmVFcnJvckV2ZW50KCJyZXNpemUgd2lkdGggb3IgaGVpZ2h0IGlzIGdyZWF0ZXIgdGhhbiB0aGUgbWF4U2l6ZSB3aWR0aCBvciBoZWlnaHQiLCAibXJhaWQuc2V0UmVzaXplUHJvcGVydGllcyIpOwogICAgICAgIHJldHVybjsKICAgICAgfQogICAgICBhZGp1c3RtZW50cyA9IGZpdFJlc2l6ZVZpZXdPblNjcmVlbihwcm9wZXJ0aWVzKTsKICAgIH0gZWxzZSBpZiAoIWlzQ2xvc2VSZWdpb25PblNjcmVlbihwcm9wZXJ0aWVzKSkgewogICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgiY2xvc2UgZXZlbnQgcmVnaW9uIHdpbGwgbm90IGFwcGVhciBlbnRpcmVseSBvbnNjcmVlbiIsICJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7CiAgICAgIHJldHVybjsKICAgIH0KCiAgICB2YXIgcndQcm9wcyA9IFsgIndpZHRoIiwgImhlaWdodCIsICJvZmZzZXRYIiwgIm9mZnNldFkiLCAiY3VzdG9tQ2xvc2VQb3NpdGlvbiIsICJhbGxvd09mZnNjcmVlbiIgXTsKICAgIGZvciAodmFyIGkgPSAwOyBpIDwgcndQcm9wcy5sZW5ndGg7IGkrKykgewogICAgICB2YXIgcHJvcG5hbWUgPSByd1Byb3BzW2ldOwogICAgICBpZiAocHJvcGVydGllcy5oYXNPd25Qcm9wZXJ0eShwcm9wbmFtZSkpIHsKICAgICAgICByZXNpemVQcm9wZXJ0aWVzW3Byb3BuYW1lXSA9IHByb3BlcnRpZXNbcHJvcG5hbWVdOwogICAgICB9CiAgICB9CgogICAgdmFyIHBhcmFtcyA9CiAgICAgICAgIndpZHRoPSIgKyByZXNpemVQcm9wZXJ0aWVzLndpZHRoICsKICAgICAgICAiJmhlaWdodD0iICsgcmVzaXplUHJvcGVydGllcy5oZWlnaHQgKwogICAgICAgICImb2Zmc2V0WD0iICsgKHJlc2l6ZVByb3BlcnRpZXMub2Zmc2V0WCArIGFkanVzdG1lbnRzLngpICsKICAgICAgICAiJm9mZnNldFk9IiArIChyZXNpemVQcm9wZXJ0aWVzLm9mZnNldFkgKyBhZGp1c3RtZW50cy55KSArCiAgICAgICAgIiZjdXN0b21DbG9zZVBvc2l0aW9uPSIgKyByZXNpemVQcm9wZXJ0aWVzLmN1c3RvbUNsb3NlUG9zaXRpb24gKwogICAgICAgICImYWxsb3dPZmZzY3JlZW49IiArIHJlc2l6ZVByb3BlcnRpZXMuYWxsb3dPZmZzY3JlZW47CgogICAgY2FsbE5hdGl2ZSgic2V0UmVzaXplUHJvcGVydGllcz8iICsgcGFyYW1zKTsKCiAgICBpc1Jlc2l6ZVJlYWR5ID0gdHJ1ZTsKICB9OwoKICBtcmFpZC5zdG9yZVBpY3R1cmUgPSBmdW5jdGlvbih1cmwpIHsKICAgIGxvZy5pKCJtcmFpZC5zdG9yZVBpY3R1cmUgIiArIHVybCk7CiAgICBpZiAoc3VwcG9ydGVkRmVhdHVyZXNbbXJhaWQuU1VQUE9SVEVEX0ZFQVRVUkVTLlNUT1JFUElDVFVSRV0pIHsKICAgICAgY2FsbE5hdGl2ZSgic3RvcmVQaWN0dXJlP3VybD0iICsgZW5jb2RlVVJJQ29tcG9uZW50KHVybCkpOwogICAgfSBlbHNlIHsKICAgICAgbG9nLmUoInN0b3JlUGljdHVyZSBpcyBub3Qgc3VwcG9ydGVkIik7CiAgICB9CiAgfTsKCiAgbXJhaWQuc3VwcG9ydHMgPSBmdW5jdGlvbihmZWF0dXJlKSB7CiAgICBsb2cuaSgibXJhaWQuc3VwcG9ydHMgIiArIGZlYXR1cmUgKyAiICIgKyBzdXBwb3J0ZWRGZWF0dXJlc1tmZWF0dXJlXSk7CiAgICB2YXIgcmV0dmFsID0gc3VwcG9ydGVkRmVhdHVyZXNbZmVhdHVyZV07CiAgICBpZiAodHlwZW9mIHJldHZhbCA9PT0gInVuZGVmaW5lZCIpIHsKICAgICAgcmV0dmFsID0gZmFsc2U7CiAgICB9CiAgICByZXR1cm4gcmV0dmFsOwogIH07CgogIG1yYWlkLnVzZUN1c3RvbUNsb3NlID0gZnVuY3Rpb24oaXNDdXN0b21DbG9zZSkgewogICAgbG9nLmkoIm1yYWlkLnVzZUN1c3RvbUNsb3NlICIgKyBpc0N1c3RvbUNsb3NlKTsKICAgIGlmIChleHBhbmRQcm9wZXJ0aWVzLnVzZUN1c3RvbUNsb3NlICE9PSBpc0N1c3RvbUNsb3NlKSB7CiAgICAgIGV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2UgPSBpc0N1c3RvbUNsb3NlOwogICAgICBjYWxsTmF0aXZlKCJ1c2VDdXN0b21DbG9zZT91c2VDdXN0b21DbG9zZT0iCiAgICAgICAgICArIGV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2UpOwogICAgfQogIH07CgogIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAgKiBoZWxwZXIgbWV0aG9kcyBjYWxsZWQgYnkgU0RLCiAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKICAgIC8vIHNldHRlcnMgdG8gY2hhbmdlIHN0YXRlCiAgbXJhaWQuc2V0Q3VycmVudFBvc2l0aW9uID0gZnVuY3Rpb24oeCwgeSwgd2lkdGgsIGhlaWdodCkgewogICAgbG9nLmkoIm1yYWlkLnNldEN1cnJlbnRQb3NpdGlvbiAiICsgeCArICIsIiArIHkgKyAiLCIgKyB3aWR0aCArICIsIgkrIGhlaWdodCk7CgogICAgdmFyIHByZXZpb3VzU2l6ZSA9IHt9OwogICAgcHJldmlvdXNTaXplLndpZHRoID0gY3VycmVudFBvc2l0aW9uLndpZHRoOwogICAgcHJldmlvdXNTaXplLmhlaWdodCA9IGN1cnJlbnRQb3NpdGlvbi5oZWlnaHQ7CiAgICBsb2cuaSgicHJldmlvdXNTaXplICIgKyBwcmV2aW91c1NpemUud2lkdGggKyAiLCIgKyBwcmV2aW91c1NpemUuaGVpZ2h0KTsKCiAgICBjdXJyZW50UG9zaXRpb24ueCA9IHg7CiAgICBjdXJyZW50UG9zaXRpb24ueSA9IHk7CiAgICBjdXJyZW50UG9zaXRpb24ud2lkdGggPSB3aWR0aDsKICAgIGN1cnJlbnRQb3NpdGlvbi5oZWlnaHQgPSBoZWlnaHQ7CgogICAgaWYgKHdpZHRoICE9PSBwcmV2aW91c1NpemUud2lkdGggfHwgaGVpZ2h0ICE9PSBwcmV2aW91c1NpemUuaGVpZ2h0KSB7CiAgICAgIG1yYWlkLmZpcmVTaXplQ2hhbmdlRXZlbnQod2lkdGgsIGhlaWdodCk7CiAgICB9CiAgfTsKCiAgbXJhaWQuc2V0RGVmYXVsdFBvc2l0aW9uID0gZnVuY3Rpb24oeCwgeSwgd2lkdGgsIGhlaWdodCkgewogICAgbG9nLmkoIm1yYWlkLnNldERlZmF1bHRQb3NpdGlvbiAiICsgeCArICIsIiArIHkgKyAiLCIgKyB3aWR0aCArICIsIgkrIGhlaWdodCk7CiAgICBkZWZhdWx0UG9zaXRpb24ueCA9IHg7CiAgICBkZWZhdWx0UG9zaXRpb24ueSA9IHk7CiAgICBkZWZhdWx0UG9zaXRpb24ud2lkdGggPSB3aWR0aDsKICAgIGRlZmF1bHRQb3NpdGlvbi5oZWlnaHQgPSBoZWlnaHQ7CiAgfTsKCiAgbXJhaWQuc2V0RXhwYW5kU2l6ZSA9IGZ1bmN0aW9uKHdpZHRoLCBoZWlnaHQpIHsKICAgIGxvZy5pKCJtcmFpZC5zZXRFeHBhbmRTaXplICIgKyB3aWR0aCArICJ4IiArIGhlaWdodCk7CiAgICBleHBhbmRQcm9wZXJ0aWVzLndpZHRoID0gd2lkdGg7CiAgICBleHBhbmRQcm9wZXJ0aWVzLmhlaWdodCA9IGhlaWdodDsKICB9OwoKICBtcmFpZC5zZXRNYXhTaXplID0gZnVuY3Rpb24od2lkdGgsIGhlaWdodCkgewogICAgbG9nLmkoIm1yYWlkLnNldE1heFNpemUgIiArIHdpZHRoICsgIngiICsgaGVpZ2h0KTsKICAgIG1heFNpemUud2lkdGggPSB3aWR0aDsKICAgIG1heFNpemUuaGVpZ2h0ID0gaGVpZ2h0OwogIH07CgogIG1yYWlkLnNldFBsYWNlbWVudFR5cGUgPSBmdW5jdGlvbihwdCkgewogICAgbG9nLmkoIm1yYWlkLnNldFBsYWNlbWVudFR5cGUgIiArIHB0KTsKICAgIHBsYWNlbWVudFR5cGUgPSBwdDsKICB9OwoKICBtcmFpZC5zZXRTY3JlZW5TaXplID0gZnVuY3Rpb24od2lkdGgsIGhlaWdodCkgewogICAgbG9nLmkoIm1yYWlkLnNldFNjcmVlblNpemUgIiArIHdpZHRoICsgIngiICsgaGVpZ2h0KTsKICAgIHNjcmVlblNpemUud2lkdGggPSB3aWR0aDsKICAgIHNjcmVlblNpemUuaGVpZ2h0ID0gaGVpZ2h0OwogICAgaWYgKCFpc0V4cGFuZFByb3BlcnRpZXNTZXQpIHsKICAgICAgZXhwYW5kUHJvcGVydGllcy53aWR0aCA9IHdpZHRoOwogICAgICBleHBhbmRQcm9wZXJ0aWVzLmhlaWdodCA9IGhlaWdodDs7CiAgICB9CiAgfTsKCiAgbXJhaWQuc2V0U3VwcG9ydHMgPSBmdW5jdGlvbihmZWF0dXJlLCBzdXBwb3J0ZWQpIHsKICAgIGxvZy5pKCJtcmFpZC5zZXRTdXBwb3J0cyAiICsgZmVhdHVyZSArICIgIiArIHN1cHBvcnRlZCk7CiAgICBzdXBwb3J0ZWRGZWF0dXJlc1tmZWF0dXJlXSA9IHN1cHBvcnRlZDsKICB9OwoKICAvLyBtZXRob2RzIHRvIGZpcmUgZXZlbnRzCgogIG1yYWlkLmZpcmVFcnJvckV2ZW50ID0gZnVuY3Rpb24obWVzc2FnZSwgYWN0aW9uKSB7CiAgICBsb2cuaSgibXJhaWQuZmlyZUVycm9yRXZlbnQgIiArIG1lc3NhZ2UgKyAiICIgKyBhY3Rpb24pOwogICAgZmlyZUV2ZW50KG1yYWlkLkVWRU5UUy5FUlJPUiwgbWVzc2FnZSwgYWN0aW9uKTsKICB9OwoKICBtcmFpZC5maXJlUmVhZHlFdmVudCA9IGZ1bmN0aW9uKCkgewogICAgbG9nLmkoIm1yYWlkLmZpcmVSZWFkeUV2ZW50Iik7CiAgICBmaXJlRXZlbnQobXJhaWQuRVZFTlRTLlJFQURZKTsKICB9OwoKICBtcmFpZC5maXJlU2l6ZUNoYW5nZUV2ZW50ID0gZnVuY3Rpb24od2lkdGgsIGhlaWdodCkgewogICAgbG9nLmkoIm1yYWlkLmZpcmVTaXplQ2hhbmdlRXZlbnQgIiArIHdpZHRoICsgIngiICsgaGVpZ2h0KTsKICAgIGlmIChzdGF0ZSAhPT0gbXJhaWQuU1RBVEVTLkxPQURJTkcpIHsKICAgICAgZmlyZUV2ZW50KG1yYWlkLkVWRU5UUy5TSVpFQ0hBTkdFLCB3aWR0aCwgaGVpZ2h0KTsKICAgIH0KICB9OwoKICBtcmFpZC5maXJlU3RhdGVDaGFuZ2VFdmVudCA9IGZ1bmN0aW9uKG5ld1N0YXRlKSB7CiAgICBsb2cuaSgibXJhaWQuZmlyZVN0YXRlQ2hhbmdlRXZlbnQgIiArIG5ld1N0YXRlKTsKICAgIGlmIChzdGF0ZSAhPT0gbmV3U3RhdGUpIHsKICAgICAgc3RhdGUgPSBuZXdTdGF0ZTsKICAgICAgZmlyZUV2ZW50KG1yYWlkLkVWRU5UUy5TVEFURUNIQU5HRSwgc3RhdGUpOwogICAgfQogIH07CgogIG1yYWlkLmZpcmVWaWV3YWJsZUNoYW5nZUV2ZW50ID0gZnVuY3Rpb24obmV3SXNWaWV3YWJsZSkgewogICAgbG9nLmkoIm1yYWlkLmZpcmVWaWV3YWJsZUNoYW5nZUV2ZW50ICIgKyBuZXdJc1ZpZXdhYmxlKTsKICAgIGlmIChpc1ZpZXdhYmxlICE9PSBuZXdJc1ZpZXdhYmxlKSB7CiAgICAgIGlzVmlld2FibGUgPSBuZXdJc1ZpZXdhYmxlOwogICAgICBmaXJlRXZlbnQobXJhaWQuRVZFTlRTLlZJRVdBQkxFQ0hBTkdFLCBpc1ZpZXdhYmxlKTsKICAgIH0KICB9OwoKICAvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgICogaW50ZXJuYWwgaGVscGVyIG1ldGhvZHMKICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCgogIGZ1bmN0aW9uIGNhbGxOYXRpdmUoY29tbWFuZCkgewogICAgdmFyIGlmcmFtZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoIklGUkFNRSIpOwogICAgaWZyYW1lLnNldEF0dHJpYnV0ZSgic3JjIiwgIm1yYWlkOi8vIiArIGNvbW1hbmQpOwogICAgZG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50LmFwcGVuZENoaWxkKGlmcmFtZSk7CiAgICBpZnJhbWUucGFyZW50Tm9kZS5yZW1vdmVDaGlsZChpZnJhbWUpOwogICAgaWZyYW1lID0gbnVsbDsKICB9OwoKICBmdW5jdGlvbiBmaXJlRXZlbnQoZXZlbnQpIHsKICAgIHZhciBhcmdzID0gQXJyYXkucHJvdG90eXBlLnNsaWNlLmNhbGwoYXJndW1lbnRzKTsKICAgIGFyZ3Muc2hpZnQoKTsKICAgIGxvZy5pKCJmaXJlRXZlbnQgIiArIGV2ZW50ICsgIiBbIiArIGFyZ3MudG9TdHJpbmcoKSArICJdIik7CiAgICB2YXIgZXZlbnRMaXN0ZW5lcnMgPSBsaXN0ZW5lcnNbZXZlbnRdOwogICAgaWYgKGV2ZW50TGlzdGVuZXJzKSB7CiAgICAgIHZhciBsZW4gPSBldmVudExpc3RlbmVycy5sZW5ndGg7CiAgICAgIGxvZy5pKGxlbiArICIgbGlzdGVuZXIocykgZm91bmQiKTsKICAgICAgZm9yICh2YXIgaSA9IDA7IGkgPCBsZW47IGkrKykgewogICAgICAgIGV2ZW50TGlzdGVuZXJzW2ldLmFwcGx5KG51bGwsIGFyZ3MpOwogICAgICB9CiAgICB9IGVsc2UgewogICAgICBsb2cuaSgibm8gbGlzdGVuZXJzIGZvdW5kIGZvciAiICsgZXZlbnQpOwogICAgfQogIH07CgogIGZ1bmN0aW9uIGNvbnRhaW5zKHZhbHVlLCBhcnJheSkgewogICAgZm9yICggdmFyIGkgaW4gYXJyYXkpIHsKICAgICAgaWYgKGFycmF5W2ldID09PSB2YWx1ZSkgewogICAgICAgIHJldHVybiB0cnVlOwogICAgICB9CiAgICB9CiAgICByZXR1cm4gZmFsc2U7CiAgfTsKCiAgLy8gVGhlIGFjdGlvbiBwYXJhbWV0ZXIgaXMgYSBzdHJpbmcgd2hpY2ggaXMgdGhlIG5hbWUgb2YgdGhlIHNldHRlciBmdW5jdGlvbgogIC8vIHdoaWNoIGNhbGxlZCB0aGlzIGZ1bmN0aW9uCiAgLy8gKGluIG90aGVyIHdvcmRzLCBzZXRFeHBhbmRQcm9wZXRpZXMsIHNldE9yaWVudGF0aW9uUHJvcGVydGllcywgb3IKICAvLyBzZXRSZXNpemVQcm9wZXJ0aWVzKS4KICAvLyBJdCBzZXJ2ZXMgYm90aCBhcyB0aGUga2V5IHRvIGdldCB0aGUgdGhlIGFwcHJvcHJpYXRlIHNldCBvZiB2YWxpZGF0aW5nCiAgLy8gZnVuY3Rpb25zIGZyb20gdGhlIGFsbFZhbGlkYXRvcnMgb2JqZWN0CiAgLy8gYXMgd2VsbCBhcyB0aGUgYWN0aW9uIHBhcmFtZXRlciBvZiBhbnkgZXJyb3IgZXZlbnQgdGhhdCBtYXkgYmUgdGhyb3duLgogIGZ1bmN0aW9uIHZhbGlkYXRlKHByb3BlcnRpZXMsIGFjdGlvbikgewogICAgdmFyIHJldHZhbCA9IHRydWU7CiAgICB2YXIgdmFsaWRhdG9ycyA9IGFsbFZhbGlkYXRvcnNbYWN0aW9uXTsKICAgIGZvciAodmFyIHByb3AgaW4gcHJvcGVydGllcykgewogICAgICB2YXIgdmFsaWRhdG9yID0gdmFsaWRhdG9yc1twcm9wXTsKICAgICAgdmFyIHZhbHVlID0gcHJvcGVydGllc1twcm9wXTsKICAgICAgaWYgKHZhbGlkYXRvciAmJiAhdmFsaWRhdG9yKHZhbHVlKSkgewogICAgICAgIG1yYWlkLmZpcmVFcnJvckV2ZW50KCJWYWx1ZSBvZiBwcm9wZXJ0eSAiICsgcHJvcCArICIgKCIgKyB2YWx1ZQkrICIpIGlzIGludmFsaWQiLCAibXJhaWQuIiArIGFjdGlvbik7CiAgICAgICAgcmV0dmFsID0gZmFsc2U7CiAgICAgIH0KICAgIH0KICAgIHJldHVybiByZXR2YWw7CiAgfTsKCiAgdmFyIGFsbFZhbGlkYXRvcnMgPSB7CiAgICAic2V0RXhwYW5kUHJvcGVydGllcyIgOiB7CiAgICAgIC8vIEluIE1SQUlEIDIuMCwgdGhlIG9ubHkgcHJvcGVydHkgaW4gZXhwYW5kUHJvcGVydGllcyB3ZSBhY3R1YWxseSBjYXJlIGFib3V0IGlzIHVzZUN1c3RvbUNsb3NlLgogICAgICAvLyBTdGlsbCwgd2UnbGwgZG8gYSBiYXNpYyBzYW5pdHkgY2hlY2sgb24gdGhlIHdpZHRoIGFuZCBoZWlnaHQgcHJvcGVydGllcywgdG9vLgogICAgICAid2lkdGgiIDogZnVuY3Rpb24od2lkdGgpIHsKICAgICAgICByZXR1cm4gIWlzTmFOKHdpZHRoKTsKICAgICAgfSwKICAgICAgImhlaWdodCIgOiBmdW5jdGlvbihoZWlnaHQpIHsKICAgICAgICByZXR1cm4gIWlzTmFOKGhlaWdodCk7CiAgICAgIH0sCiAgICAgICJ1c2VDdXN0b21DbG9zZSIgOiBmdW5jdGlvbih1c2VDdXN0b21DbG9zZSkgewogICAgICAgIHJldHVybiAodHlwZW9mIHVzZUN1c3RvbUNsb3NlID09PSAiYm9vbGVhbiIpOwogICAgICB9CiAgICB9LAogICAgInNldE9yaWVudGF0aW9uUHJvcGVydGllcyIgOiB7CiAgICAgICJhbGxvd09yaWVudGF0aW9uQ2hhbmdlIiA6IGZ1bmN0aW9uKGFsbG93T3JpZW50YXRpb25DaGFuZ2UpIHsKICAgICAgICByZXR1cm4gKHR5cGVvZiBhbGxvd09yaWVudGF0aW9uQ2hhbmdlID09PSAiYm9vbGVhbiIpOwogICAgICB9LAogICAgICAiZm9yY2VPcmllbnRhdGlvbiIgOiBmdW5jdGlvbihmb3JjZU9yaWVudGF0aW9uKSB7CiAgICAgICAgdmFyIHZhbGlkVmFsdWVzID0gWyAicG9ydHJhaXQiLCAibGFuZHNjYXBlIiwgIm5vbmUiIF07CiAgICAgICAgcmV0dXJuICh0eXBlb2YgZm9yY2VPcmllbnRhdGlvbiA9PT0gInN0cmluZyIgJiYgdmFsaWRWYWx1ZXMuaW5kZXhPZihmb3JjZU9yaWVudGF0aW9uKSAhPT0gLTEpOwogICAgICB9CiAgICB9LAogICAgInNldFJlc2l6ZVByb3BlcnRpZXMiIDogewogICAgICAid2lkdGgiIDogZnVuY3Rpb24od2lkdGgpIHsKICAgICAgICByZXR1cm4gIWlzTmFOKHdpZHRoKSAmJiA1MCA8PSB3aWR0aDsKICAgICAgfSwKICAgICAgImhlaWdodCIgOiBmdW5jdGlvbihoZWlnaHQpIHsKICAgICAgICByZXR1cm4gIWlzTmFOKGhlaWdodCkgJiYgNTAgPD0gaGVpZ2h0OwogICAgICB9LAogICAgICAib2Zmc2V0WCIgOiBmdW5jdGlvbihvZmZzZXRYKSB7CiAgICAgICAgcmV0dXJuICFpc05hTihvZmZzZXRYKTsKICAgICAgfSwKICAgICAgIm9mZnNldFkiIDogZnVuY3Rpb24ob2Zmc2V0WSkgewogICAgICAgIHJldHVybiAhaXNOYU4ob2Zmc2V0WSk7CiAgICAgIH0sCiAgICAgICJjdXN0b21DbG9zZVBvc2l0aW9uIiA6IGZ1bmN0aW9uKGN1c3RvbUNsb3NlUG9zaXRpb24pIHsKICAgICAgICB2YXIgdmFsaWRQb3NpdGlvbnMgPSBbICJ0b3AtbGVmdCIsICJ0b3AtY2VudGVyIiwgInRvcC1yaWdodCIsCiAgICAgICAgICAiY2VudGVyIiwKICAgICAgICAgICJib3R0b20tbGVmdCIsICJib3R0b20tY2VudGVyIiwJImJvdHRvbS1yaWdodCIgXTsKICAgICAgICByZXR1cm4gKHR5cGVvZiBjdXN0b21DbG9zZVBvc2l0aW9uID09PSAic3RyaW5nIiAmJiB2YWxpZFBvc2l0aW9ucy5pbmRleE9mKGN1c3RvbUNsb3NlUG9zaXRpb24pICE9PSAtMSk7CiAgICAgIH0sCiAgICAgICJhbGxvd09mZnNjcmVlbiIgOiBmdW5jdGlvbihhbGxvd09mZnNjcmVlbikgewogICAgICAgIHJldHVybiAodHlwZW9mIGFsbG93T2Zmc2NyZWVuID09PSAiYm9vbGVhbiIpOwogICAgICB9CiAgICB9CiAgfTsKCiAgZnVuY3Rpb24gaXNDbG9zZVJlZ2lvbk9uU2NyZWVuKHByb3BlcnRpZXMpIHsKICAgIGxvZy5kKCJpc0Nsb3NlUmVnaW9uT25TY3JlZW4iKTsKICAgIGxvZy5kKCJkZWZhdWx0UG9zaXRpb24gIiArIGRlZmF1bHRQb3NpdGlvbi54ICsgIiAiICsgZGVmYXVsdFBvc2l0aW9uLnkpOwogICAgbG9nLmQoIm9mZnNldCAiICsgcHJvcGVydGllcy5vZmZzZXRYICsgIiAiICsgcHJvcGVydGllcy5vZmZzZXRZKTsKCiAgICB2YXIgcmVzaXplUmVjdCA9IHt9OwogICAgcmVzaXplUmVjdC54ID0gZGVmYXVsdFBvc2l0aW9uLnggKyBwcm9wZXJ0aWVzLm9mZnNldFg7CiAgICByZXNpemVSZWN0LnkgPSBkZWZhdWx0UG9zaXRpb24ueSArIHByb3BlcnRpZXMub2Zmc2V0WTsKICAgIHJlc2l6ZVJlY3Qud2lkdGggPSBwcm9wZXJ0aWVzLndpZHRoOwogICAgcmVzaXplUmVjdC5oZWlnaHQgPSBwcm9wZXJ0aWVzLmhlaWdodDsKICAgIHByaW50UmVjdCgicmVzaXplUmVjdCIsIHJlc2l6ZVJlY3QpOwoKICAgIHZhciBjdXN0b21DbG9zZVBvc2l0aW9uID0gcHJvcGVydGllcy5oYXNPd25Qcm9wZXJ0eSgiY3VzdG9tQ2xvc2VQb3NpdGlvbiIpID8KICAgICAgICBwcm9wZXJ0aWVzLmN1c3RvbUNsb3NlUG9zaXRpb24gOiByZXNpemVQcm9wZXJ0aWVzLmN1c3RvbUNsb3NlUG9zaXRpb247CiAgICBsb2cuZCgiY3VzdG9tQ2xvc2VQb3NpdGlvbiAiICsgY3VzdG9tQ2xvc2VQb3NpdGlvbik7CgogICAgdmFyIGNsb3NlUmVjdCA9IHsgIndpZHRoIjogNTAsICJoZWlnaHQiOiA1MCB9OwoKICAgIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgibGVmdCIpICE9PSAtMSkgewogICAgICBjbG9zZVJlY3QueCA9IHJlc2l6ZVJlY3QueDsKICAgIH0gZWxzZSBpZiAoY3VzdG9tQ2xvc2VQb3NpdGlvbi5zZWFyY2goImNlbnRlciIpICE9PSAtMSkgewogICAgICBjbG9zZVJlY3QueCA9IHJlc2l6ZVJlY3QueCArIChyZXNpemVSZWN0LndpZHRoIC8gMikgLSAyNTsKICAgIH0gZWxzZSBpZiAoY3VzdG9tQ2xvc2VQb3NpdGlvbi5zZWFyY2goInJpZ2h0IikgIT09IC0xKSB7CiAgICAgIGNsb3NlUmVjdC54ID0gcmVzaXplUmVjdC54ICsgcmVzaXplUmVjdC53aWR0aCAtIDUwOwogICAgfQoKICAgIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgidG9wIikgIT09IC0xKSB7CiAgICAgIGNsb3NlUmVjdC55ID0gcmVzaXplUmVjdC55OwogICAgfSBlbHNlIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uID09PSAiY2VudGVyIikgewogICAgICBjbG9zZVJlY3QueSA9IHJlc2l6ZVJlY3QueSArIChyZXNpemVSZWN0LmhlaWdodCAvIDIpIC0gMjU7CiAgICB9IGVsc2UgaWYgKGN1c3RvbUNsb3NlUG9zaXRpb24uc2VhcmNoKCJib3R0b20iKSAhPT0gLTEpIHsKICAgICAgY2xvc2VSZWN0LnkgPSByZXNpemVSZWN0LnkgKyByZXNpemVSZWN0LmhlaWdodCAtIDUwOwogICAgfQoKICAgIHZhciBtYXhSZWN0ID0geyAieCI6IDAsICJ5IjogMCB9OwogICAgbWF4UmVjdC53aWR0aCA9IG1heFNpemUud2lkdGg7CiAgICBtYXhSZWN0LmhlaWdodCA9IG1heFNpemUuaGVpZ2h0OwoKICAgIHJldHVybiBpc1JlY3RDb250YWluZWQobWF4UmVjdCwgY2xvc2VSZWN0KTsKICB9CgogIGZ1bmN0aW9uIGZpdFJlc2l6ZVZpZXdPblNjcmVlbihwcm9wZXJ0aWVzKSB7CiAgICBsb2cuZCgiZml0UmVzaXplVmlld09uU2NyZWVuIik7CiAgICBsb2cuZCgiZGVmYXVsdFBvc2l0aW9uICIgKyBkZWZhdWx0UG9zaXRpb24ueCArICIgIiArIGRlZmF1bHRQb3NpdGlvbi55KTsKICAgIGxvZy5kKCJvZmZzZXQgIiArIHByb3BlcnRpZXMub2Zmc2V0WCArICIgIiArIHByb3BlcnRpZXMub2Zmc2V0WSk7CgogICAgdmFyIHJlc2l6ZVJlY3QgPSB7fTsKICAgIHJlc2l6ZVJlY3QueCA9IGRlZmF1bHRQb3NpdGlvbi54ICsgcHJvcGVydGllcy5vZmZzZXRYOwogICAgcmVzaXplUmVjdC55ID0gZGVmYXVsdFBvc2l0aW9uLnkgKyBwcm9wZXJ0aWVzLm9mZnNldFk7CiAgICByZXNpemVSZWN0LndpZHRoID0gcHJvcGVydGllcy53aWR0aDsKICAgIHJlc2l6ZVJlY3QuaGVpZ2h0ID0gcHJvcGVydGllcy5oZWlnaHQ7CiAgICBwcmludFJlY3QoInJlc2l6ZVJlY3QiLCByZXNpemVSZWN0KTsKCiAgICB2YXIgbWF4UmVjdCA9IHsgIngiOiAwLCAieSI6IDAgfTsKICAgIG1heFJlY3Qud2lkdGggPSBtYXhTaXplLndpZHRoOwogICAgbWF4UmVjdC5oZWlnaHQgPSBtYXhTaXplLmhlaWdodDsKCiAgICB2YXIgYWRqdXN0bWVudHMgPSB7ICJ4IjogMCwgInkiOiAwIH07CgogICAgaWYgKGlzUmVjdENvbnRhaW5lZChtYXhSZWN0LCByZXNpemVSZWN0KSkgewogICAgICBsb2cuZCgibm8gYWRqdXN0bWVudCBuZWNlc3NhcnkiKTsKICAgICAgcmV0dXJuIGFkanVzdG1lbnRzOwogICAgfQoKICAgIGlmIChyZXNpemVSZWN0LnggPCBtYXhSZWN0LngpIHsKICAgICAgYWRqdXN0bWVudHMueCA9IG1heFJlY3QueCAtIHJlc2l6ZVJlY3QueDsKICAgIH0gZWxzZSBpZiAoKHJlc2l6ZVJlY3QueCArIHJlc2l6ZVJlY3Qud2lkdGgpID4gKG1heFJlY3QueCArIG1heFJlY3Qud2lkdGgpKSB7CiAgICAgIGFkanVzdG1lbnRzLnggPSAobWF4UmVjdC54ICsgbWF4UmVjdC53aWR0aCkgLSAocmVzaXplUmVjdC54ICsgcmVzaXplUmVjdC53aWR0aCk7CiAgICB9CiAgICBsb2cuZCgiYWRqdXN0bWVudHMueCAiICsgYWRqdXN0bWVudHMueCk7CgogICAgaWYgKHJlc2l6ZVJlY3QueSA8IG1heFJlY3QueSkgewogICAgICBhZGp1c3RtZW50cy55ID0gbWF4UmVjdC55IC0gcmVzaXplUmVjdC55OwogICAgfSBlbHNlIGlmICgocmVzaXplUmVjdC55ICsgcmVzaXplUmVjdC5oZWlnaHQpID4gKG1heFJlY3QueSArIG1heFJlY3QuaGVpZ2h0KSkgewogICAgICBhZGp1c3RtZW50cy55ID0gKG1heFJlY3QueSArIG1heFJlY3QuaGVpZ2h0KSAtIChyZXNpemVSZWN0LnkgKyByZXNpemVSZWN0LmhlaWdodCk7CiAgICB9CiAgICBsb2cuZCgiYWRqdXN0bWVudHMueSAiICsgYWRqdXN0bWVudHMueSk7CgogICAgcmVzaXplUmVjdC54ID0gZGVmYXVsdFBvc2l0aW9uLnggKyBwcm9wZXJ0aWVzLm9mZnNldFggKyBhZGp1c3RtZW50cy54OwogICAgcmVzaXplUmVjdC55ID0gZGVmYXVsdFBvc2l0aW9uLnkgKyBwcm9wZXJ0aWVzLm9mZnNldFkgKyBhZGp1c3RtZW50cy55OwogICAgcHJpbnRSZWN0KCJhZGp1c3RlZCByZXNpemVSZWN0IiwgcmVzaXplUmVjdCk7CgogICAgcmV0dXJuIGFkanVzdG1lbnRzOwogIH0KCiAgZnVuY3Rpb24gaXNSZWN0Q29udGFpbmVkKGNvbnRhaW5pbmdSZWN0LCBjb250YWluZWRSZWN0KSB7CiAgICBsb2cuZCgiaXNSZWN0Q29udGFpbmVkIik7CiAgICBwcmludFJlY3QoImNvbnRhaW5pbmdSZWN0IiwgY29udGFpbmluZ1JlY3QpOwogICAgcHJpbnRSZWN0KCJjb250YWluZWRSZWN0IiwgY29udGFpbmVkUmVjdCk7CiAgICByZXR1cm4gKGNvbnRhaW5lZFJlY3QueCA+PSBjb250YWluaW5nUmVjdC54ICYmCiAgICAoY29udGFpbmVkUmVjdC54ICsgY29udGFpbmVkUmVjdC53aWR0aCkgPD0gKGNvbnRhaW5pbmdSZWN0LnggKyBjb250YWluaW5nUmVjdC53aWR0aCkgJiYKICAgIGNvbnRhaW5lZFJlY3QueSA+PSBjb250YWluaW5nUmVjdC55ICYmCiAgICAoY29udGFpbmVkUmVjdC55ICsgY29udGFpbmVkUmVjdC5oZWlnaHQpIDw9IChjb250YWluaW5nUmVjdC55ICsgY29udGFpbmluZ1JlY3QuaGVpZ2h0KSk7CiAgfQoKICBmdW5jdGlvbiBwcmludFJlY3QobGFiZWwsIHJlY3QpIHsKICAgIGxvZy5kKGxhYmVsICsKICAgICAgICAiIFsiICsgcmVjdC54ICsgIiwiICsgcmVjdC55ICsgIl0iICsKICAgICAgICAiLFsiICsgKHJlY3QueCArIHJlY3Qud2lkdGgpICsgIiwiICsgKHJlY3QueSArIHJlY3QuaGVpZ2h0KSArICJdIiArCiAgICAgICAgIiAoIiArIHJlY3Qud2lkdGggKyAieCIgKyByZWN0LmhlaWdodCArICIpIik7CiAgfQoKICBtcmFpZC5kdW1wTGlzdGVuZXJzID0gZnVuY3Rpb24oKSB7CiAgICB2YXIgbkV2ZW50cyA9IE9iamVjdC5rZXlzKGxpc3RlbmVycykubGVuZ3RoOwogICAgbG9nLmkoImR1bXBpbmcgbGlzdGVuZXJzICgiICsgbkV2ZW50cyArICIgZXZlbnRzKSIpOwogICAgZm9yICggdmFyIGV2ZW50IGluIGxpc3RlbmVycykgewogICAgICB2YXIgZXZlbnRMaXN0ZW5lcnMgPSBsaXN0ZW5lcnNbZXZlbnRdOwogICAgICBsb2cuaSgiICAiICsgZXZlbnQgKyAiIGNvbnRhaW5zICIgKyBldmVudExpc3RlbmVycy5sZW5ndGggKyAiIGxpc3RlbmVycyIpOwogICAgICBmb3IgKHZhciBpID0gMDsgaSA8IGV2ZW50TGlzdGVuZXJzLmxlbmd0aDsgaSsrKSB7CiAgICAgICAgbG9nLmkoIiAgICAiICsgZXZlbnRMaXN0ZW5lcnNbaV0pOwogICAgICB9CiAgICB9CiAgfTsKCiAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICAqIE1SQUlEIFZpZGVvIEFkZGVuZHVtCiAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKICB2YXIgdnBhaWQgPSB3aW5kb3cudnBhaWQgPSB7fTsKCiAgbXJhaWQuc2V0U3VwcG9ydHMoInZwYWlkIiwgdHJ1ZSk7CgogIHZwYWlkLmZpcmVFdmVudCA9IGZ1bmN0aW9uKGV2ZW50KSB7CiAgICBsb2cuaSgidnBhaWQgZXZlbnQ6ICIgKyBldmVudCk7CiAgICBjYWxsTmF0aXZlKGV2ZW50KTsKICB9OwoKICB2cGFpZC5BZENsaWNrVGhydSA9IGZ1bmN0aW9uKHVybCwgaWQsIHBsYXllckhhbmRsZXMpIHsKICAgIGxvZy5pKCJ2cGFpZCBldmVudDogQWRDbGlja1RocnUgKCIgKyB1cmwgKyAiKSIpOwogICAgY2FsbE5hdGl2ZSgiQWRDbGlja1RocnU/dXJsPSIgKyBlbmNvZGVVUklDb21wb25lbnQodXJsKSk7CiAgfTsKCiAgdnBhaWQuQWRMb2cgPSBmdW5jdGlvbihzdHIpIHsKICAgIGxvZy5pKCJ2cGFpZCBldmVudDogQWRMb2cgKCIgKyBzdHIgKyAiKSIpOwogICAgY2FsbE5hdGl2ZSgiQWRMb2c/bXNnPSIgKyBzdHIpOwogIH07CgogIHZwYWlkLkFkRXJyb3IgPSBmdW5jdGlvbihzdHIpIHsKICAgIGxvZy5pKCJ2cGFpZCBldmVudDogQWRMb2cgKCIgKyBzdHIgKyAiKSIpOwogICAgY2FsbE5hdGl2ZSgiQWRFcnJvcj9tc2c9IiArIHN0cik7CiAgfTsKCiAgdnBhaWQuQWRTa2lwcGFibGVTdGF0ZUNoYW5nZSA9IGZ1bmN0aW9uKCkgewogICAgdmFyIHN0YXRlID0gdnBhaWQuY3JlYXRpdmUuZ2V0QWRTa2lwcGFibGVTdGF0ZSgpOwogICAgbG9nLmkoInZwYWlkIGV2ZW50OiBBZFNraXBwYWJsZVN0YXRlQ2hhbmdlICgiICsgc3RhdGUgKyAiKSIpOwogICAgY2FsbE5hdGl2ZSgiQWRTa2lwcGFibGVTdGF0ZUNoYW5nZT9zdGF0ZT0iICsgc3RhdGUpOwogIH07CgogIHZhciB2cGFpZENhbGxiYWNrcyA9IHsKICAgIEFkU3RhcnRlZCA6IHZwYWlkLmZpcmVFdmVudCwKICAgIEFkU3RvcHBlZCA6IHZwYWlkLmZpcmVFdmVudCwKICAgIEFkU2tpcHBlZCA6IHZwYWlkLmZpcmVFdmVudCwKICAgIEFkTG9hZGVkIDogdnBhaWQuZmlyZUV2ZW50LAogICAgQWRMaW5lYXJDaGFuZ2UgOiB2cGFpZC5maXJlRXZlbnQsCiAgICBBZFNpemVDaGFuZ2UgOiB2cGFpZC5maXJlRXZlbnQsCiAgICBBZEV4cGFuZGVkQ2hhbmdlIDogdnBhaWQuZmlyZUV2ZW50LAogICAgQWRTa2lwcGFibGVTdGF0ZUNoYW5nZSA6IHZwYWlkLkFkU2tpcHBhYmxlU3RhdGVDaGFuZ2UsCiAgICBBZER1cmF0aW9uQ2hhbmdlIDogdnBhaWQuZmlyZUV2ZW50LAogICAgQWRWb2x1bWVDaGFuZ2UgOiB2cGFpZC5maXJlRXZlbnQsCiAgICBBZEltcHJlc3Npb24gOiB2cGFpZC5maXJlRXZlbnQsCiAgICBBZENsaWNrVGhydSA6IHZwYWlkLkFkQ2xpY2tUaHJ1LAogICAgQWRJbnRlcmFjdGlvbiA6IHZwYWlkLmZpcmVFdmVudCwKICAgIEFkVmlkZW9TdGFydCA6IHZwYWlkLmZpcmVFdmVudCwKICAgIEFkVmlkZW9GaXJzdFF1YXJ0aWxlIDogdnBhaWQuZmlyZUV2ZW50LAogICAgQWRWaWRlb01pZHBvaW50IDogdnBhaWQuZmlyZUV2ZW50LAogICAgQWRWaWRlb1RoaXJkUXVhcnRpbGUgOiB2cGFpZC5maXJlRXZlbnQsCiAgICBBZFZpZGVvQ29tcGxldGUgOiB2cGFpZC5maXJlRXZlbnQsCiAgICBBZFVzZXJBY2NlcHRJbnZpdGF0aW9uIDogdnBhaWQuZmlyZUV2ZW50LAogICAgQWRVc2VyTWluaW1pemUgOiB2cGFpZC5maXJlRXZlbnQsCiAgICBBZFVzZXJDbG9zZSA6IHZwYWlkLmZpcmVFdmVudCwKICAgIEFkUGF1c2VkIDogdnBhaWQuZmlyZUV2ZW50LAogICAgQWRQbGF5aW5nIDogdnBhaWQuZmlyZUV2ZW50LAogICAgQWRFcnJvciA6IHZwYWlkLkFkRXJyb3IsCiAgICBBZExvZyA6IHZwYWlkLkFkTG9nCiAgfTsKCiAgbXJhaWQuaW5pdFZwYWlkID0gZnVuY3Rpb24odnBhaWRPYmplY3QpIHsKICAgIGlmKHR5cGVvZiB2cGFpZE9iamVjdCAhPT0gJ3VuZGVmaW5lZCcpIHsKICAgICAgdnBhaWQuY3JlYXRpdmUgPSB2cGFpZE9iamVjdDsKICAgICAgbG9nLmkoInZwYWlkIGluaXRWcGFpZCIpOwogICAgICBmb3IgKHZhciBldmVudE5hbWUgaW4gdnBhaWRDYWxsYmFja3MpIHsKICAgICAgICB2cGFpZE9iamVjdC5zdWJzY3JpYmUodnBhaWRDYWxsYmFja3NbZXZlbnROYW1lXSwgZXZlbnROYW1lKTsKICAgICAgfQogICAgICB2cGFpZE9iamVjdC5zdGFydEFkKCk7CiAgICB9CiAgfTsKCiAgbXJhaWQuRGVmYXVsdFZQQUlEQ3JlYXRpdmUgPSBmdW5jdGlvbiAoKSB7CiAgICB2YXIgX3RoaXMgPSB0aGlzOwogICAgdmFyIHNraXBwYWJsZVN0YXRlID0gdHJ1ZTsKICAgIF90aGlzLnN1YnNjcmliZXMgPSB7fTsKCiAgICBfdGhpcy5nZXRBZFNraXBwYWJsZVN0YXRlID0gZnVuY3Rpb24oKSB7CiAgICAgIHJldHVybiBza2lwcGFibGVTdGF0ZTsKICAgIH07CgogICAgX3RoaXMuc2V0QWRTa2lwcGFibGVTdGF0ZSA9IGZ1bmN0aW9uKHN0YXRlKSB7CiAgICAgIHNraXBwYWJsZVN0YXRlID0gc3RhdGU7CiAgICB9OwoKICAgIF90aGlzLnN1YnNjcmliZSA9IGZ1bmN0aW9uKGNhbGxiYWNrLCBldmVudE5hbWUpIHsKICAgICAgaWYgKCFfdGhpcy5zdWJzY3JpYmVzW2V2ZW50TmFtZV0pIHsKICAgICAgICBfdGhpcy5zdWJzY3JpYmVzW2V2ZW50TmFtZV0gPSBjYWxsYmFjazsKICAgICAgfSBlbHNlIHsKICAgICAgICBjb25zb2xlLmxvZygiU3Vic2NyaXB0aW9uIGFscmVhZHkgc2V0Iik7CiAgICAgIH0KICAgIH07CgogICAgX3RoaXMudW5zdWJzY3JpYmUgPSBmdW5jdGlvbihldmVudE5hbWUpIHsKICAgICAgaWYgKF90aGlzLnN1YnNjcmliZXNbZXZlbnROYW1lXSkgewogICAgICAgIF90aGlzLnN1YnNjcmliZXNbZXZlbnROYW1lXSA9IG51bGw7CiAgICAgICAgZGVsZXRlIF90aGlzLnN1YnNjcmliZXNbZXZlbnROYW1lXTsKICAgICAgfSBlbHNlIHsKICAgICAgICBsb2cuaSgic3Vic2NyaXB0aW9uIG5vdCBzZXQiKTsKICAgICAgfQogICAgfTsKCiAgICBfdGhpcy5maXJlRXZlbnQgPSBmdW5jdGlvbihldmVudE5hbWUpIHsKICAgICAgaWYgKF90aGlzLnN1YnNjcmliZXNbZXZlbnROYW1lXSkgewogICAgICAgIHZhciBldmVudExpc3RlbmVyID0gX3RoaXMuc3Vic2NyaWJlc1tldmVudE5hbWVdOwogICAgICAgIGlmIChldmVudExpc3RlbmVyKSB7CiAgICAgICAgICB2YXIgYXJncyA9IFtldmVudE5hbWVdOwogICAgICAgICAgZXZlbnRMaXN0ZW5lci5hcHBseShudWxsLCBhcmdzKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgbG9nLmkoIm5vIGxpc3RlbmVycyBmb3VuZCBmb3IgIiArIGV2ZW50TmFtZSk7CiAgICAgICAgfQogICAgICB9CiAgICB9OwoKICAgIF90aGlzLnNlbmRMb2cgPSBmdW5jdGlvbihzdHIpIHsKICAgICAgZXZlbnROYW1lID0gIkFkTG9nIjsKICAgICAgaWYgKF90aGlzLnN1YnNjcmliZXNbZXZlbnROYW1lXSkgewogICAgICAgIHZhciBldmVudExpc3RlbmVyID0gX3RoaXMuc3Vic2NyaWJlc1tldmVudE5hbWVdOwogICAgICAgIGlmIChldmVudExpc3RlbmVyKSB7CiAgICAgICAgICB2YXIgYXJncyA9IFtzdHJdOwogICAgICAgICAgZXZlbnRMaXN0ZW5lci5hcHBseShudWxsLCBhcmdzKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgbG9nLmkoIm5vIGxpc3RlbmVycyBmb3VuZCBmb3Igc2VuZExvZyIpOwogICAgICAgIH0KICAgICAgfQogICAgfTsKCiAgICBfdGhpcy5zZW5kRXJyb3IgPSBmdW5jdGlvbihzdHIpIHsKICAgICAgZXZlbnROYW1lID0gIkFkRXJyb3IiOwogICAgICBpZiAoX3RoaXMuc3Vic2NyaWJlc1tldmVudE5hbWVdKSB7CiAgICAgICAgdmFyIGV2ZW50TGlzdGVuZXIgPSBfdGhpcy5zdWJzY3JpYmVzW2V2ZW50TmFtZV07CiAgICAgICAgaWYgKGV2ZW50TGlzdGVuZXIpIHsKICAgICAgICAgIHZhciBhcmdzID0gW3N0cl07CiAgICAgICAgICBldmVudExpc3RlbmVyLmFwcGx5KG51bGwsIGFyZ3MpOwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICBsb2cuaSgibm8gbGlzdGVuZXJzIGZvdW5kIGZvciBBZEVycm9yIik7CiAgICAgICAgfQogICAgICB9CiAgICB9OwoKICAgIF90aGlzLnNlbmRDbGljayA9IGZ1bmN0aW9uKHVybCkgewogICAgICBldmVudE5hbWUgPSAiQWRDbGlja1RocnUiOwogICAgICBpZiAoX3RoaXMuc3Vic2NyaWJlc1tldmVudE5hbWVdKSB7CiAgICAgICAgdmFyIGV2ZW50TGlzdGVuZXIgPSBfdGhpcy5zdWJzY3JpYmVzW2V2ZW50TmFtZV07CiAgICAgICAgaWYgKGV2ZW50TGlzdGVuZXIgJiYgdXJsKSB7CiAgICAgICAgICB2YXIgYXJncyA9IFt1cmxdOwogICAgICAgICAgZXZlbnRMaXN0ZW5lci5hcHBseShudWxsLCBhcmdzKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgbG9nLmkoIm5vIGxpc3RlbmVycyBmb3VuZCBmb3IgQWRDbGlja1RocnUiKTsKICAgICAgICB9CiAgICAgIH0KICAgIH0KICB9OwoKICBjb25zb2xlLmxvZygiTVJBSUQgb2JqZWN0IGxvYWRlZCIpOwoKfSkoKTs="

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidJs:Ljava/lang/String;

    :cond_0
    const-string v0, "MRAIDVideoAddendumView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectMraidJs ok "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidJs:Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getContext()Landroid/content/Context;

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
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidJs:Ljava/lang/String;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$16;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$16;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

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

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidJs:Ljava/lang/String;

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

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mraidJs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private noFill()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "noFill"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewNoFill(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method

.method private onLayoutWebView(Landroid/webkit/WebView;ZIIII)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentWebView:Landroid/webkit/WebView;

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_0
    const-string v4, "MRAIDVideoAddendumView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLayoutWebView "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

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

    iget v5, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

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

    const-string v0, "MRAIDVideoAddendumView"

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
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isForcingFullScreen:Z

    if-eqz v0, :cond_4

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "onLayoutWebView ignored, isForcingFullScreen"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isForcingFullScreen:Z

    goto :goto_2

    :cond_4
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->calculateScreenSize()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->calculateMaxSize()V

    :cond_6
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isClosing:Z

    if-nez v0, :cond_7

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->calculatePosition(Z)V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setDefaultPosition()V

    :cond_7
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isExpandingFromDefault:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isExpandingFromDefault:Z

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-eqz v0, :cond_8

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isLaidOut:Z

    :cond_8
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isExpandingPart2:Z

    if-nez v0, :cond_9

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "calling fireStateChangeEvent 1"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireStateChangeEvent()V

    :cond_9
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireReadyEvent()V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isViewable:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireViewableChangeEvent()V

    :cond_a
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewExpand(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    goto :goto_2
.end method

.method private open(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->open(Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void
.end method

.method private open(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 3

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isTouched:Z

    if-eqz v0, :cond_3

    const-string v0, "MRAIDVideoAddendumView-JS callback"

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

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    if-eqz v0, :cond_0

    const-string v0, "sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureSendSms(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCallTel(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1, p2}, Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureOpenBrowser(Ljava/lang/String;Landroid/webkit/WebView;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    invoke-interface {v0, p0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewClickThru(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "mraid view not touched"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseCommandUrl(Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "MRAIDVideoAddendumView"

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

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "close"

    aput-object v3, v2, v8

    const-string v3, "resize"

    aput-object v3, v2, v9

    const-string v3, "noFill"

    aput-object v3, v2, v10

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "createCalendarEvent"

    aput-object v4, v3, v8

    const-string v4, "expand"

    aput-object v4, v3, v9

    const-string v4, "open"

    aput-object v4, v3, v10

    const-string v4, "playVideo"

    aput-object v4, v3, v11

    const-string v4, "storePicture"

    aput-object v4, v3, v12

    const/4 v4, 0x5

    const-string v5, "useCustomClose"

    aput-object v5, v3, v4

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "setOrientationProperties"

    aput-object v5, v4, v8

    const-string v5, "setResizeProperties"

    aput-object v5, v4, v9

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "AdStarted"

    aput-object v6, v5, v8

    const-string v6, "AdStopped"

    aput-object v6, v5, v9

    const-string v6, "AdSkipped"

    aput-object v6, v5, v10

    const-string v6, "AdVideoStart"

    aput-object v6, v5, v11

    const-string v6, "AdVideoFirstQuartile"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "AdVideoMidpoint"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "AdVideoThirdQuartile"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "AdVideoComplete"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "AdUserClose"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "AdPaused"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "AdPlaying"

    aput-object v7, v5, v6

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "AdSkippableStateChange"

    aput-object v7, v6, v8

    const-string v7, "AdClickThru"

    aput-object v7, v6, v9

    const-string v7, "AdLog"

    aput-object v7, v6, v10

    const-string v7, "AdError"

    aput-object v7, v6, v11

    :try_start_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
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

    if-eqz v3, :cond_4

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

    :cond_4
    :try_start_1
    const-string v3, "useCustomClose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "useCustomClose"

    goto :goto_1

    :cond_5
    const-string v3, "AdLog"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "AdError"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const-string v0, "msg"

    goto :goto_1

    :cond_7
    const-string v3, "AdSkippableStateChange"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "state"

    goto :goto_1

    :cond_8
    const-string v0, "url"

    goto :goto_1

    :cond_9
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

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

    goto/16 :goto_0
.end method

.method private pauseWebView(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "MRAIDVideoAddendumView"

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

    const-string v1, "MRAIDVideoAddendumView-JS callback"

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

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

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

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v0, v1

    return v0
.end method

.method private removeDefaultCloseButton()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setVisibility(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setClickable(Z)V

    const v0, 0x186a0

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeTimerPosition:I

    :cond_0
    return-void
.end method

.method private removeResizeView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    return-void
.end method

.method private resize()V
    .locals 6

    const-string v0, "MRAIDVideoAddendumView-JS callback"

    const-string v1, "resize"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->listener:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v2, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v3, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->height:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v4, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetX:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v5, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetY:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewResize(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->removeAllViews()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->addCloseRegion(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setCloseRegionPosition(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setResizedViewSize()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setResizedViewPosition()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$8;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$8;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private restoreOriginalOrientation()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "restoreOriginalOrientation"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->interstitialActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->interstitialActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iget v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->originalRequestedOrientation:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->interstitialActivity:Landroid/app/Activity;

    iget v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->originalRequestedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private restoreOriginalScreenState()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isFullScreen:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isForceNotFullScreen:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isActionBarShowing:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->titleBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->titleBar:Landroid/view/View;

    iget v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->origTitleBarVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private resumeWebView(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "MRAIDVideoAddendumView"

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

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expandedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

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

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const-string v4, "MRAIDVideoAddendumView"

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

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setDefaultPosition()V
    .locals 7

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const-string v4, "MRAIDVideoAddendumView"

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

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setMaxSize()V
    .locals 5

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "setMaxSize"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->width:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->maxSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iget v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->height:I

    const-string v2, "MRAIDVideoAddendumView"

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

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

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

    const-string v2, "MRAIDVideoAddendumView-JS callback"

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

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v2, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientationFromString(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    iput-boolean v1, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->orientationProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientationFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->applyOrientationProperties()V

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

    const-string v6, "MRAIDVideoAddendumView-JS callback"

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

    iget-object v6, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iput v2, v6, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iput v3, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->height:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iput v4, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetX:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iput v5, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetY:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->customClosePositionFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iput-boolean v1, v0, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->allowOffscreen:Z

    return-void
.end method

.method private setResizedViewPosition()V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "setResizedViewPosition"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v1, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->height:I

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v2, v2, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetX:I

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v3, v3, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->offsetY:I

    int-to-float v0, v0

    iget-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v4, v0

    int-to-float v0, v1

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v1, v0

    int-to-float v0, v2

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v3

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v1, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setCurrentPosition()V

    goto :goto_0
.end method

.method private setResizedViewSize()V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "setResizedViewSize"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizeProperties:Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;

    iget v1, v1, Lorg/nexage/sourcekit/mraid/properties/MRAIDResizeProperties;->height:I

    const-string v2, "MRAIDVideoAddendumView"

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

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v1

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setScreenSize()V
    .locals 5

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "setScreenSize"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iget v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->width:I

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->screenSize:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;

    iget v1, v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$Size;->height:I

    const-string v2, "MRAIDVideoAddendumView"

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

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setSupportedServices()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "setSupportedServices"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;->isCalendarSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;->isInlineVideoSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;->isSmsSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;->isStorePictureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureManager:Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDNativeFeatureManager;->isTelSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setViewable(I)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isViewable:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isViewable:Z

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isPageFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isLaidOut:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireViewableChangeEvent()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDefaultCloseButton()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeRegion:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isCloseClickable:Z

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeTime:I

    if-nez v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    iput v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeTimerPosition:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$15;

    invoke-direct {v2, p0, v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$15;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;ILandroid/os/Handler;)V

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeTime:I

    goto :goto_0
.end method

.method private storePicture(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDVideoAddendumView-JS callback"

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

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->nativeFeatureListener:Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;

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

    const-string v0, "MRAIDVideoAddendumView-JS callback"

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

    iget-boolean v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->useCustomClose:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->useCustomClose:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->removeDefaultCloseButton()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->showDefaultCloseButton()V

    goto :goto_0
.end method


# virtual methods
.method public clearView()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$5;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$5;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentWebView:Landroid/webkit/WebView;

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

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v1, "MRAIDVideoAddendumView"

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

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void

    :cond_0
    const-string v0, "landscape"

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "MRAIDVideoAddendumView"

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

    const-string v0, "MRAIDVideoAddendumView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

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

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isForcingFullScreen:Z

    if-eqz v0, :cond_1

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "onLayout ignored"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    if-ne v0, v5, :cond_3

    :cond_2
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->calculateScreenSize()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->calculateMaxSize()V

    :cond_3
    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isClosing:Z

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isClosing:Z

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->defaultPosition:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->currentPosition:Landroid/graphics/Rect;

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setCurrentPosition()V

    :goto_1
    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    if-ne v0, v5, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$18;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$18;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput-boolean v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isLaidOut:Z

    iget v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isPageFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isInterstitial:Z

    if-nez v0, :cond_0

    iput v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->state:I

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireStateChangeEvent()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireReadyEvent()V

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isViewable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->fireViewableChangeEvent()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v3}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->calculatePosition(Z)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->gestureDetector:Landroid/view/GestureDetector;

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

    const-string v0, "MRAIDVideoAddendumView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setViewable(I)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getVisibility()I

    move-result v0

    const-string v1, "MRAIDVideoAddendumView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowVisibilityChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->setViewable(I)V

    return-void
.end method

.method public setComplained()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isComplained:Z

    return-void
.end method

.method public show()V
    .locals 6

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->preload:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isShown:Z

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->mData:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected showAsInterstitial(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->interstitialActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expand(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public wasComplained()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->isComplained:Z

    return-void
.end method
