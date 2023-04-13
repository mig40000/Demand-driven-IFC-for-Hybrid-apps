.class Lcom/appodeal/ads/native_ad/c$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/c$a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/appodeal/ads/native_ad/c$a;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/c$a;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/c$a$2;->c:Lcom/appodeal/ads/native_ad/c$a;

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/c$a$2;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/appodeal/ads/native_ad/c$a$2;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a$2;->c:Lcom/appodeal/ads/native_ad/c$a;

    invoke-static {v0}, Lcom/appodeal/ads/native_ad/c$a;->a(Lcom/appodeal/ads/native_ad/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a$2;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a$2;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a$2;->c:Lcom/appodeal/ads/native_ad/c$a;

    invoke-static {v0}, Lcom/appodeal/ads/native_ad/c$a;->a(Lcom/appodeal/ads/native_ad/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a$2;->c:Lcom/appodeal/ads/native_ad/c$a;

    invoke-static {v1}, Lcom/appodeal/ads/native_ad/c$a;->a(Lcom/appodeal/ads/native_ad/c$a;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a$2;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a$2;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a$2;->c:Lcom/appodeal/ads/native_ad/c$a;

    invoke-static {v0}, Lcom/appodeal/ads/native_ad/c$a;->a(Lcom/appodeal/ads/native_ad/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x1

    :cond_0
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a$2;->c:Lcom/appodeal/ads/native_ad/c$a;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2}, Lcom/appodeal/ads/native_ad/c$a;->a(Lcom/appodeal/ads/native_ad/c$a;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    const-string v1, "urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a$2;->c:Lcom/appodeal/ads/native_ad/c$a;

    const-string v2, "urls"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appodeal/ads/native_ad/c$a;->a(Lcom/appodeal/ads/native_ad/c$a;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    :cond_1
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a$2;->c:Lcom/appodeal/ads/native_ad/c$a;

    invoke-static {v1}, Lcom/appodeal/ads/native_ad/c$a;->b(Lcom/appodeal/ads/native_ad/c$a;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a$2;->c:Lcom/appodeal/ads/native_ad/c$a;

    invoke-static {v1}, Lcom/appodeal/ads/native_ad/c$a;->b(Lcom/appodeal/ads/native_ad/c$a;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
