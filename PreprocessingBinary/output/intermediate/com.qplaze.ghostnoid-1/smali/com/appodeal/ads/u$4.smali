.class Lcom/appodeal/ads/u$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/utils/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/u;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/u;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/u;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/u$4;->a:Lcom/appodeal/ads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/u$4;->a:Lcom/appodeal/ads/u;

    sget-object v1, Lcom/appodeal/ads/u$a;->a:Lcom/appodeal/ads/u$a;

    invoke-static {v0, v1}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/u;Lcom/appodeal/ads/u$a;)Lcom/appodeal/ads/u$a;

    iget-object v0, p0, Lcom/appodeal/ads/u$4;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->e(Lcom/appodeal/ads/u;)V

    iget-object v0, p0, Lcom/appodeal/ads/u$4;->a:Lcom/appodeal/ads/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appodeal/ads/u;->c(Lcom/appodeal/ads/u;Z)Z

    return-void
.end method

.method public a(Landroid/net/Uri;Lorg/nexage/sourcekit/vast/model/VASTModel;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/u$4;->a:Lcom/appodeal/ads/u;

    invoke-static {v0, p2}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/u;Lorg/nexage/sourcekit/vast/model/VASTModel;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    iget-object v0, p0, Lcom/appodeal/ads/u$4;->a:Lcom/appodeal/ads/u;

    iget-object v0, v0, Lcom/appodeal/ads/u;->a:Lcom/appodeal/ads/ab;

    invoke-virtual {v0, p2}, Lcom/appodeal/ads/ab;->a(Lorg/nexage/sourcekit/vast/model/VASTModel;)V

    iget-object v0, p0, Lcom/appodeal/ads/u$4;->a:Lcom/appodeal/ads/u;

    iget-object v0, v0, Lcom/appodeal/ads/u;->a:Lcom/appodeal/ads/ab;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/ab;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/appodeal/ads/u$4;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->d(Lcom/appodeal/ads/u;)V

    return-void
.end method
