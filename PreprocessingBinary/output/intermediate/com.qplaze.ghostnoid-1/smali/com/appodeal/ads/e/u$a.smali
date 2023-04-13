.class Lcom/appodeal/ads/e/u$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/spotx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/e/u;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/e/u;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/u$a;->a:Lcom/appodeal/ads/e/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/e/u;Lcom/appodeal/ads/e/u$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/e/u$a;-><init>(Lcom/appodeal/ads/e/u;)V

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

.method public a(Ljava/lang/String;II)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/e/u$a;->a:Lcom/appodeal/ads/e/u;

    invoke-static {v0, p1}, Lcom/appodeal/ads/e/u;->a(Lcom/appodeal/ads/e/u;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/e/u;->h()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/appodeal/ads/e/u$a;->a:Lcom/appodeal/ads/e/u;

    new-instance v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v3, Lcom/appodeal/ads/e/v;

    invoke-static {}, Lcom/appodeal/ads/e/u;->h()Lcom/appodeal/ads/ap;

    move-result-object v4

    invoke-direct {v3, v4, p2, p3}, Lcom/appodeal/ads/e/v;-><init>(Lcom/appodeal/ads/ap;II)V

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/appodeal/ads/e/u$a;->a:Lcom/appodeal/ads/e/u;

    invoke-static {v5}, Lcom/appodeal/ads/e/u;->a(Lcom/appodeal/ads/e/u;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;-><init>(Landroid/content/Context;Landroid/util/Pair;Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;ZZ)V

    invoke-static {v6, v0}, Lcom/appodeal/ads/e/u;->a(Lcom/appodeal/ads/e/u;Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/e/u;->h()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0
.end method
