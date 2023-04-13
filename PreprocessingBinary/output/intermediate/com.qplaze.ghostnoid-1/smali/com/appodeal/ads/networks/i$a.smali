.class public Lcom/appodeal/ads/networks/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmcm/adsdk/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/networks/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "url is null"

    invoke-interface {p2, v0}, Lcom/cmcm/adsdk/BitmapListener;->onFailed(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/appodeal/ads/utils/j;

    new-instance v1, Lcom/appodeal/ads/networks/i$a$1;

    invoke-direct {v1, p0, p2}, Lcom/appodeal/ads/networks/i$a$1;-><init>(Lcom/appodeal/ads/networks/i$a;Lcom/cmcm/adsdk/BitmapListener;)V

    invoke-direct {v0, v1, p1, v3}, Lcom/appodeal/ads/utils/j;-><init>(Lcom/appodeal/ads/utils/j$a;Ljava/lang/String;Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Lcom/appodeal/ads/utils/j$a;

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/utils/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    new-array v1, v3, [Lcom/appodeal/ads/utils/j$a;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/utils/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
