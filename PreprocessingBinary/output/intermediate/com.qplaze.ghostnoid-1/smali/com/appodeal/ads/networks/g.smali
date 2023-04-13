.class public Lcom/appodeal/ads/networks/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appodeal/ads/networks/g;->a:Z

    sput-boolean v0, Lcom/appodeal/ads/networks/g;->b:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/appodeal/ads/networks/g;->b:Z

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/appodeal/ads/networks/g;->b:Z

    invoke-static {p0, p1, p2}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setActivityCallbacks(Z)V

    :cond_0
    return-void
.end method
