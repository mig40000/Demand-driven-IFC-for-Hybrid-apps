.class Lcom/appodeal/ads/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/t;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/t;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/t;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/t$1;->a:Lcom/appodeal/ads/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/t$b;

    iget-object v1, p0, Lcom/appodeal/ads/t$1;->a:Lcom/appodeal/ads/t;

    invoke-direct {v0, v1, v3}, Lcom/appodeal/ads/t$b;-><init>(Lcom/appodeal/ads/t;Lcom/appodeal/ads/t$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/t$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appodeal/ads/t$b;

    iget-object v1, p0, Lcom/appodeal/ads/t$1;->a:Lcom/appodeal/ads/t;

    invoke-direct {v0, v1, v3}, Lcom/appodeal/ads/t$b;-><init>(Lcom/appodeal/ads/t;Lcom/appodeal/ads/t$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/t$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
