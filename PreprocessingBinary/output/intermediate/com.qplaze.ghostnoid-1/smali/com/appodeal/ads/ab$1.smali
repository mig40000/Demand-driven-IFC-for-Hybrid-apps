.class Lcom/appodeal/ads/ab$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/utils/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/ab;->registerViewForInteraction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/ab;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appodeal/ads/ab;->a(Lcom/appodeal/ads/ab;Z)Z

    iget-object v0, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    iget-object v1, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    iget-object v1, v1, Lcom/appodeal/ads/ab;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/ab;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    invoke-static {v0}, Lcom/appodeal/ads/ab;->a(Lcom/appodeal/ads/ab;)I

    move-result v0

    iget-object v1, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    invoke-static {v1}, Lcom/appodeal/ads/ab;->b(Lcom/appodeal/ads/ab;)Lcom/appodeal/ads/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->a(ILcom/appodeal/ads/ac;Lcom/appodeal/ads/NativeAd;)V

    iget-object v0, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    invoke-virtual {v0}, Lcom/appodeal/ads/ab;->e()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    invoke-static {v0}, Lcom/appodeal/ads/ab;->a(Lcom/appodeal/ads/ab;)I

    move-result v0

    iget-object v1, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    invoke-static {v1}, Lcom/appodeal/ads/ab;->b(Lcom/appodeal/ads/ab;)Lcom/appodeal/ads/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/ab$1;->a:Lcom/appodeal/ads/ab;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/ae;->b(ILcom/appodeal/ads/ac;Lcom/appodeal/ads/NativeAd;)V

    return-void
.end method
