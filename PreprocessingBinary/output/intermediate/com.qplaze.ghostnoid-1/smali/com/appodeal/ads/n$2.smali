.class final Lcom/appodeal/ads/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/n;->b(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/appodeal/ads/o;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I


# direct methods
.method constructor <init>(ILcom/appodeal/ads/o;Ljava/lang/String;I)V
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/n$2;->a:I

    iput-object p2, p0, Lcom/appodeal/ads/n$2;->b:Lcom/appodeal/ads/o;

    iput-object p3, p0, Lcom/appodeal/ads/n$2;->c:Ljava/lang/String;

    iput p4, p0, Lcom/appodeal/ads/n$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    iget v2, p0, Lcom/appodeal/ads/n$2;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-boolean v0, v0, Lcom/appodeal/ads/s;->u:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/appodeal/ads/n$2;->b:Lcom/appodeal/ads/o;

    invoke-virtual {v3}, Lcom/appodeal/ads/o;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appodeal/ads/n$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/n$2;->b:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v2

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getLogLevel()Lcom/appodeal/ads/utils/Log$LogLevel;

    move-result-object v0

    sget-object v3, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/appodeal/ads/r;->a(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/n$2;->b:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/appodeal/ads/n$2;->a:I

    iget v3, p0, Lcom/appodeal/ads/n$2;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/appodeal/ads/r;->a(Landroid/app/Activity;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appodeal/ads/n$2$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/n$2$1;-><init>(Lcom/appodeal/ads/n$2;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    iget v0, p0, Lcom/appodeal/ads/n$2;->a:I

    iget v1, p0, Lcom/appodeal/ads/n$2;->d:I

    iget-object v2, p0, Lcom/appodeal/ads/n$2;->b:Lcom/appodeal/ads/o;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    goto :goto_1
.end method
