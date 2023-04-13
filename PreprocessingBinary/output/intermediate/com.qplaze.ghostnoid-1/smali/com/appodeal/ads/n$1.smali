.class final Lcom/appodeal/ads/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/n;->a(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/n$1;->a:Ljava/lang/String;

    iput p2, p0, Lcom/appodeal/ads/n$1;->b:I

    iput p3, p0, Lcom/appodeal/ads/n$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/4 v1, 0x1

    invoke-static {}, Lcom/appodeal/ads/b/c;->f()Lcom/appodeal/ads/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/o;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appodeal/ads/n$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/b/c;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/appodeal/ads/n$1;->b:I

    iget v3, p0, Lcom/appodeal/ads/n$1;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/appodeal/ads/r;->a(Landroid/app/Activity;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appodeal/ads/n$1$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/n$1$1;-><init>(Lcom/appodeal/ads/n$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    iget v0, p0, Lcom/appodeal/ads/n$1;->b:I

    iget v1, p0, Lcom/appodeal/ads/n$1;->c:I

    invoke-static {}, Lcom/appodeal/ads/b/c;->f()Lcom/appodeal/ads/o;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;Z)V

    goto :goto_0
.end method
