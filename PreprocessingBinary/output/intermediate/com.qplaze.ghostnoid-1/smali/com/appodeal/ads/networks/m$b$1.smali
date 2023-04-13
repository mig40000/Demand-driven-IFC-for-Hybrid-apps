.class Lcom/appodeal/ads/networks/m$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/m$b;->loadHTML(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/appodeal/ads/networks/m$b;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/m$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/m$b$1;->b:Lcom/appodeal/ads/networks/m$b;

    iput-object p2, p0, Lcom/appodeal/ads/networks/m$b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/m$b$1;->b:Lcom/appodeal/ads/networks/m$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/m$b;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->e(Lcom/appodeal/ads/networks/m;)Lcom/appodeal/ads/networks/m$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/m$b$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/m$b$1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/m$b$1;->b:Lcom/appodeal/ads/networks/m$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/m$b;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->e(Lcom/appodeal/ads/networks/m;)Lcom/appodeal/ads/networks/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/networks/m$b$1;->b:Lcom/appodeal/ads/networks/m$b;

    iget-object v1, v1, Lcom/appodeal/ads/networks/m$b;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v1}, Lcom/appodeal/ads/networks/m;->f(Lcom/appodeal/ads/networks/m;)I

    move-result v1

    iget-object v2, p0, Lcom/appodeal/ads/networks/m$b$1;->b:Lcom/appodeal/ads/networks/m$b;

    iget-object v2, v2, Lcom/appodeal/ads/networks/m$b;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v2}, Lcom/appodeal/ads/networks/m;->g(Lcom/appodeal/ads/networks/m;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/appodeal/ads/networks/m$a;->a(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/networks/m$b$1;->b:Lcom/appodeal/ads/networks/m$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/m$b;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->e(Lcom/appodeal/ads/networks/m;)Lcom/appodeal/ads/networks/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/networks/m$b$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/appodeal/ads/networks/m$b$1;->b:Lcom/appodeal/ads/networks/m$b;

    iget-object v2, v2, Lcom/appodeal/ads/networks/m$b;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v2}, Lcom/appodeal/ads/networks/m;->f(Lcom/appodeal/ads/networks/m;)I

    move-result v2

    iget-object v3, p0, Lcom/appodeal/ads/networks/m$b$1;->b:Lcom/appodeal/ads/networks/m$b;

    iget-object v3, v3, Lcom/appodeal/ads/networks/m$b;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v3}, Lcom/appodeal/ads/networks/m;->g(Lcom/appodeal/ads/networks/m;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/appodeal/ads/networks/m$a;->a(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
