.class Lcom/appodeal/ads/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/f;->a(Lorg/json/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/appodeal/ads/f;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/f;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/f$1;->b:Lcom/appodeal/ads/f;

    iput-object p2, p0, Lcom/appodeal/ads/f$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/f$a;

    iget-object v1, p0, Lcom/appodeal/ads/f$1;->b:Lcom/appodeal/ads/f;

    iget-object v2, p0, Lcom/appodeal/ads/f$1;->a:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/f$a;-><init>(Lcom/appodeal/ads/f;Lorg/json/JSONObject;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/f$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appodeal/ads/f$a;

    iget-object v1, p0, Lcom/appodeal/ads/f$1;->b:Lcom/appodeal/ads/f;

    iget-object v2, p0, Lcom/appodeal/ads/f$1;->a:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/f$a;-><init>(Lcom/appodeal/ads/f;Lorg/json/JSONObject;)V

    new-array v1, v3, [Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
