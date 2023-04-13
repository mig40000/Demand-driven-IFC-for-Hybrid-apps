.class Lcom/appodeal/ads/b/ab$1;
.super Lcom/revmob/RevMobAdsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/b/ab;->a(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/appodeal/ads/b/ab;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/b/ab;IILandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b/ab$1;->d:Lcom/appodeal/ads/b/ab;

    iput p2, p0, Lcom/appodeal/ads/b/ab$1;->a:I

    iput p3, p0, Lcom/appodeal/ads/b/ab$1;->b:I

    iput-object p4, p0, Lcom/appodeal/ads/b/ab$1;->c:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/revmob/RevMobAdsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevMobSessionNotStarted(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/b/ab$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/b/ab$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/b/ab;->f()Lcom/appodeal/ads/o;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    return-void
.end method

.method public onRevMobSessionStarted()V
    .locals 7

    iget-object v0, p0, Lcom/appodeal/ads/b/ab$1;->d:Lcom/appodeal/ads/b/ab;

    iget-object v1, p0, Lcom/appodeal/ads/b/ab$1;->d:Lcom/appodeal/ads/b/ab;

    invoke-static {v1}, Lcom/appodeal/ads/b/ab;->a(Lcom/appodeal/ads/b/ab;)Lcom/revmob/RevMob;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/b/ab$1;->c:Landroid/app/Activity;

    new-instance v3, Lcom/appodeal/ads/b/ac;

    invoke-static {}, Lcom/appodeal/ads/b/ab;->f()Lcom/appodeal/ads/o;

    move-result-object v4

    iget v5, p0, Lcom/appodeal/ads/b/ab$1;->a:I

    iget v6, p0, Lcom/appodeal/ads/b/ab$1;->b:I

    invoke-direct {v3, v4, v5, v6}, Lcom/appodeal/ads/b/ac;-><init>(Lcom/appodeal/ads/o;II)V

    invoke-virtual {v1, v2, v3}, Lcom/revmob/RevMob;->createFullscreen(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/b/ab;->a(Lcom/appodeal/ads/b/ab;Lcom/revmob/ads/interstitial/RevMobFullscreen;)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    return-void
.end method
