.class Lcom/appodeal/ads/e/u$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/e/u;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/e/u;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/u$b;->a:Lcom/appodeal/ads/e/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/e/u;Lcom/appodeal/ads/e/u$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/e/u$b;-><init>(Lcom/appodeal/ads/e/u;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/e/u;->h()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/e/u$b;->a:Lcom/appodeal/ads/e/u;

    new-instance v1, Lorg/nexage/sourcekit/vast/VASTPlayer;

    sget-object v2, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/e/u;->a(Lcom/appodeal/ads/e/u;Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v0, p0, Lcom/appodeal/ads/e/u$b;->a:Lcom/appodeal/ads/e/u;

    invoke-static {v0}, Lcom/appodeal/ads/e/u;->b(Lcom/appodeal/ads/e/u;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setPrecache(Z)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/e/u$b;->a:Lcom/appodeal/ads/e/u;

    invoke-static {v0}, Lcom/appodeal/ads/e/u;->b(Lcom/appodeal/ads/e/u;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setXmlUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/e/u$b;->a:Lcom/appodeal/ads/e/u;

    invoke-static {v0}, Lcom/appodeal/ads/e/u;->b(Lcom/appodeal/ads/e/u;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/e/u$b;->a:Lcom/appodeal/ads/e/u;

    invoke-static {v1}, Lcom/appodeal/ads/e/u;->c(Lcom/appodeal/ads/e/u;)Lcom/appodeal/ads/e/ad;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->loadVideoWithData(Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/e/u;->h()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0
.end method
