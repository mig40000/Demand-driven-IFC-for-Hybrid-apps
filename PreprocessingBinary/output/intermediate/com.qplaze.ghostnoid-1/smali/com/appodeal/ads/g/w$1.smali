.class Lcom/appodeal/ads/g/w$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/g/w;->a(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/appodeal/ads/g/x;

.field final synthetic e:Landroid/os/HandlerThread;

.field final synthetic f:Landroid/os/Handler;

.field final synthetic g:Lcom/appodeal/ads/g/w;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/g/w;IILcom/appodeal/ads/g/x;Landroid/os/HandlerThread;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/g/w$1;->g:Lcom/appodeal/ads/g/w;

    iput p2, p0, Lcom/appodeal/ads/g/w$1;->b:I

    iput p3, p0, Lcom/appodeal/ads/g/w$1;->c:I

    iput-object p4, p0, Lcom/appodeal/ads/g/w$1;->d:Lcom/appodeal/ads/g/x;

    iput-object p5, p0, Lcom/appodeal/ads/g/w$1;->e:Landroid/os/HandlerThread;

    iput-object p6, p0, Lcom/appodeal/ads/g/w$1;->f:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appodeal/ads/g/w$1;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/g/w;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads2/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appodeal/ads/g/w$1;->b:I

    iget v1, p0, Lcom/appodeal/ads/g/w$1;->c:I

    invoke-static {}, Lcom/appodeal/ads/g/w;->h()Lcom/appodeal/ads/ap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/aj;->a(IILcom/appodeal/ads/ap;)V

    iget-object v0, p0, Lcom/appodeal/ads/g/w$1;->d:Lcom/appodeal/ads/g/x;

    invoke-static {v0}, Lcom/unity3d/ads2/UnityAds;->setListener(Lcom/unity3d/ads2/IUnityAdsListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/g/w$1;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/appodeal/ads/g/w$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/g/w$1;->a:I

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/appodeal/ads/g/w$1;->a:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/g/w$1;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/appodeal/ads/ao$a;->c:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/g/w;->b:Lcom/appodeal/ads/ao$a;

    iget v0, p0, Lcom/appodeal/ads/g/w$1;->b:I

    iget v1, p0, Lcom/appodeal/ads/g/w$1;->c:I

    invoke-static {}, Lcom/appodeal/ads/g/w;->h()Lcom/appodeal/ads/ap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    iget-object v0, p0, Lcom/appodeal/ads/g/w$1;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
