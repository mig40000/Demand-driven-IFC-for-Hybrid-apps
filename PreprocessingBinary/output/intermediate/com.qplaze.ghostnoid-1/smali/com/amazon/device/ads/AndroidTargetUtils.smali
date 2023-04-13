.class Lcom/amazon/device/ads/AndroidTargetUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanMR1TargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;
    }
.end annotation


# static fields
.field public static final defaultAndroidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    new-instance v1, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v1}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;-><init>(Lcom/amazon/device/ads/AndroidBuildInfo;)V

    sput-object v0, Lcom/amazon/device/ads/AndroidTargetUtils;->defaultAndroidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disableHardwareAcceleration(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->disableHardwareAcceleration(Landroid/view/View;)V

    return-void
.end method

.method public static enableHardwareAcceleration(Lcom/amazon/device/ads/AndroidBuildInfo;Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->enableHardwareAcceleration(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public static enableWebViewDebugging(Z)V
    .locals 1

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;->enableWebViewDebugging(Z)V

    :cond_0
    return-void
.end method

.method public static varargs executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->executeAsyncTaskWithThreadPooling(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getDefaultAndroidClassAdapter()Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;
    .locals 1

    sget-object v0, Lcom/amazon/device/ads/AndroidTargetUtils;->defaultAndroidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    return-object v0
.end method

.method public static hideActionAndStatusBars(Lcom/amazon/device/ads/AndroidBuildInfo;Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->hideActionBar(Landroid/app/Activity;)V

    :cond_0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->hideStatusBar(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static isAdTransparent(Landroid/view/View;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAndroidAPI(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AndroidBuildInfo;->getSDKInt()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtLeastAndroidAPI(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AndroidBuildInfo;->getSDKInt()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtOrBelowAndroidAPI(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtOrBelowAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AndroidBuildInfo;->getSDKInt()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBetweenAndroidAPIs(Lcom/amazon/device/ads/AndroidBuildInfo;II)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtOrBelowAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->setBackgroundForLinerLayout(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setImageButtonAlpha(Landroid/widget/ImageButton;I)V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_0
.end method
