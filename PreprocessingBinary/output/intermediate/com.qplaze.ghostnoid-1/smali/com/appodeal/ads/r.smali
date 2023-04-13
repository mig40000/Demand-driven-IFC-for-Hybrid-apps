.class public abstract Lcom/appodeal/ads/r;
.super Lcom/appodeal/ads/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    iget-object v1, p0, Lcom/appodeal/ads/r;->a:Ljava/lang/String;

    sget-object v2, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/s;

    iget-object v2, v2, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/s;

    iget-object v3, v3, Lcom/appodeal/ads/s;->n:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_0
.end method

.method public abstract a(Landroid/app/Activity;I)V
.end method

.method public abstract a(Landroid/app/Activity;II)V
.end method

.method public a(Lcom/appodeal/ads/InterstitialActivity;I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method public c()Lcom/appodeal/ads/InterstitialActivity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
