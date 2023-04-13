.class Lcom/appodeal/ads/g/z$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/g/z;->vastClick(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/appodeal/ads/g/z;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/g/z;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/g/z$1;->b:Lcom/appodeal/ads/g/z;

    iput-object p2, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    instance-of v1, v1, Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    check-cast v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->hideProgressBar()V

    iget-object v0, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    check-cast v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->restartVideo()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    instance-of v3, v3, Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    check-cast v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->hideProgressBar()V

    :cond_0
    :try_start_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ok"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_1
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/g/z$1;->b:Lcom/appodeal/ads/g/z;

    iget-object v2, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appodeal/ads/g/z;->a(Lcom/appodeal/ads/g/z;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    if-eqz v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    instance-of v0, v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/g/z$1;->a:Landroid/app/Activity;

    check-cast v0, Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->restartVideo()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method
