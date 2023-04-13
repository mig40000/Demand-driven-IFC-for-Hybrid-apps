.class Lcom/appodeal/ads/g/y$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/g/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/g/y;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/g/y;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/g/y;Lcom/appodeal/ads/g/y$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/g/y$a;-><init>(Lcom/appodeal/ads/g/y;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/g/y;->g()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    new-instance v1, Lorg/nexage/sourcekit/vast/VASTPlayer;

    sget-object v2, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/g/y;->a(Lcom/appodeal/ads/g/y;Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v0, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-static {v0}, Lcom/appodeal/ads/g/y;->a(Lcom/appodeal/ads/g/y;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setPrecache(Z)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-static {v0}, Lcom/appodeal/ads/g/y;->a(Lcom/appodeal/ads/g/y;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setXmlUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-static {v0, p1}, Lcom/appodeal/ads/g/y;->a(Lcom/appodeal/ads/g/y;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-static {}, Lcom/appodeal/ads/g/y;->g()Lcom/appodeal/ads/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/g/y;->a(Ljava/lang/String;IZ)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-static {v1}, Lcom/appodeal/ads/g/y;->a(Lcom/appodeal/ads/g/y;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setRtbInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    iget-object v0, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-static {v0}, Lcom/appodeal/ads/g/y;->a(Lcom/appodeal/ads/g/y;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    move-result-object v0

    sget v1, Lcom/appodeal/ads/ah;->v:I

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setMaxDuration(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-static {v0}, Lcom/appodeal/ads/g/y;->a(Lcom/appodeal/ads/g/y;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    move-result-object v0

    sget-boolean v1, Lcom/appodeal/ads/ah;->w:Z

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setDisableLongVideo(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-static {v0}, Lcom/appodeal/ads/g/y;->a(Lcom/appodeal/ads/g/y;)Lorg/nexage/sourcekit/vast/VASTPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-static {v1}, Lcom/appodeal/ads/g/y;->b(Lcom/appodeal/ads/g/y;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/g/y$a;->a:Lcom/appodeal/ads/g/y;

    invoke-static {v2}, Lcom/appodeal/ads/g/y;->c(Lcom/appodeal/ads/g/y;)Lcom/appodeal/ads/g/z;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->loadVideoWithData(Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/g/y;->g()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0
.end method
