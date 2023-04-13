.class Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;-><init>(Landroid/content/Context;Landroid/util/Pair;Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    iput-object p2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    iget-object v2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v2}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->a(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->a(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->a(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;Z)Z

    invoke-static {}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File uploaded :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v2}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->b(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    iget-object v1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->b(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$1;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;->b()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
