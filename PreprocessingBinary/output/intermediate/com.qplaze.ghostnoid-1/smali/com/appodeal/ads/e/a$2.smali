.class Lcom/appodeal/ads/e/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/e/a;->b(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/os/HandlerThread;

.field final synthetic e:Landroid/os/Handler;

.field final synthetic f:Lcom/appodeal/ads/e/a;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/e/a;IILandroid/os/HandlerThread;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/e/a$2;->f:Lcom/appodeal/ads/e/a;

    iput p2, p0, Lcom/appodeal/ads/e/a$2;->b:I

    iput p3, p0, Lcom/appodeal/ads/e/a$2;->c:I

    iput-object p4, p0, Lcom/appodeal/ads/e/a$2;->d:Landroid/os/HandlerThread;

    iput-object p5, p0, Lcom/appodeal/ads/e/a$2;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appodeal/ads/e/a$2;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/e/a$2;->f:Lcom/appodeal/ads/e/a;

    invoke-static {v0}, Lcom/appodeal/ads/e/a;->a(Lcom/appodeal/ads/e/a;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appodeal/ads/e/a$2;->b:I

    iget v1, p0, Lcom/appodeal/ads/e/a$2;->c:I

    invoke-static {}, Lcom/appodeal/ads/e/a;->g()Lcom/appodeal/ads/ap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->a(IILcom/appodeal/ads/ap;)V

    iget-object v0, p0, Lcom/appodeal/ads/e/a$2;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/appodeal/ads/e/a$2;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/e/a$2;->a:I

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/appodeal/ads/e/a$2;->a:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/e/a$2;->e:Landroid/os/Handler;

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

    sput-object v0, Lcom/appodeal/ads/e/a;->b:Lcom/appodeal/ads/ao$a;

    iget v0, p0, Lcom/appodeal/ads/e/a$2;->b:I

    iget v1, p0, Lcom/appodeal/ads/e/a$2;->c:I

    invoke-static {}, Lcom/appodeal/ads/e/a;->g()Lcom/appodeal/ads/ap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    iget-object v0, p0, Lcom/appodeal/ads/e/a$2;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
