.class Lcom/appodeal/ads/e/y$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/e/y;->a(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/appodeal/ads/e/y;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/e/y;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/y$1;->d:Lcom/appodeal/ads/e/y;

    iput p2, p0, Lcom/appodeal/ads/e/y$1;->a:I

    iput p3, p0, Lcom/appodeal/ads/e/y$1;->b:I

    iput-object p4, p0, Lcom/appodeal/ads/e/y$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure()V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/e/y$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/e/y$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/e/y;->g()Lcom/appodeal/ads/ap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onConnectSuccess()V
    .locals 5

    new-instance v0, Lcom/appodeal/ads/e/z;

    invoke-static {}, Lcom/appodeal/ads/e/y;->g()Lcom/appodeal/ads/ap;

    move-result-object v1

    iget v2, p0, Lcom/appodeal/ads/e/y$1;->a:I

    iget v3, p0, Lcom/appodeal/ads/e/y$1;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/appodeal/ads/e/z;-><init>(Lcom/appodeal/ads/ap;II)V

    iget-object v1, p0, Lcom/appodeal/ads/e/y$1;->d:Lcom/appodeal/ads/e/y;

    new-instance v2, Lcom/tapjoy/TJPlacement;

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/appodeal/ads/e/y$1;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    invoke-static {v1, v2}, Lcom/appodeal/ads/e/y;->a(Lcom/appodeal/ads/e/y;Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacement;

    iget-object v1, p0, Lcom/appodeal/ads/e/y$1;->d:Lcom/appodeal/ads/e/y;

    invoke-static {v1}, Lcom/appodeal/ads/e/y;->a(Lcom/appodeal/ads/e/y;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJPlacement;->setVideoListener(Lcom/tapjoy/TJPlacementVideoListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/e/y$1;->d:Lcom/appodeal/ads/e/y;

    invoke-static {v0}, Lcom/appodeal/ads/e/y;->a(Lcom/appodeal/ads/e/y;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    const-string v1, "appodeal"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacement;->setMediationName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/e/y$1;->d:Lcom/appodeal/ads/e/y;

    invoke-static {v0}, Lcom/appodeal/ads/e/y;->a(Lcom/appodeal/ads/e/y;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    const-string v1, "1.0.0"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacement;->setAdapterVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/e/y$1;->d:Lcom/appodeal/ads/e/y;

    invoke-static {v0}, Lcom/appodeal/ads/e/y;->a(Lcom/appodeal/ads/e/y;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    return-void
.end method
