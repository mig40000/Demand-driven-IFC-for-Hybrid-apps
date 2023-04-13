.class Lcom/appodeal/ads/g/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/g/j;->mraidNativeFeatureOpenBrowser(Ljava/lang/String;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/g/j;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/g/j;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/g/j$1;->a:Lcom/appodeal/ads/g/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/g/j$1;->a:Lcom/appodeal/ads/g/j;

    invoke-static {v0}, Lcom/appodeal/ads/g/j;->a(Lcom/appodeal/ads/g/j;)Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/appodeal/ads/VideoActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g/j$1;->a:Lcom/appodeal/ads/g/j;

    invoke-static {v0}, Lcom/appodeal/ads/g/j;->a(Lcom/appodeal/ads/g/j;)Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    iget-object v0, p0, Lcom/appodeal/ads/g/j$1;->a:Lcom/appodeal/ads/g/j;

    invoke-static {v0}, Lcom/appodeal/ads/g/j;->a(Lcom/appodeal/ads/g/j;)Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/g/j$1;->a:Lcom/appodeal/ads/g/j;

    invoke-static {v0}, Lcom/appodeal/ads/g/j;->a(Lcom/appodeal/ads/g/j;)Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/appodeal/ads/VideoActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :try_start_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_0
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    iget-object v1, p0, Lcom/appodeal/ads/g/j$1;->a:Lcom/appodeal/ads/g/j;

    invoke-static {v1}, Lcom/appodeal/ads/g/j;->a(Lcom/appodeal/ads/g/j;)Lcom/appodeal/ads/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/g/j$1;->a:Lcom/appodeal/ads/g/j;

    invoke-static {v0}, Lcom/appodeal/ads/g/j;->a(Lcom/appodeal/ads/g/j;)Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/appodeal/ads/VideoActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g/j$1;->a:Lcom/appodeal/ads/g/j;

    invoke-static {v0}, Lcom/appodeal/ads/g/j;->a(Lcom/appodeal/ads/g/j;)Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    iget-object v0, p0, Lcom/appodeal/ads/g/j$1;->a:Lcom/appodeal/ads/g/j;

    invoke-static {v0}, Lcom/appodeal/ads/g/j;->a(Lcom/appodeal/ads/g/j;)Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->c()Lcom/appodeal/ads/VideoActivity;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
