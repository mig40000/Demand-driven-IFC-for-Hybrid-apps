.class Lcom/appodeal/ads/a/x$1;
.super Lcom/revmob/RevMobAdsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/a/x;->a(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/appodeal/ads/a/x;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/a/x;IILandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/x$1;->d:Lcom/appodeal/ads/a/x;

    iput p2, p0, Lcom/appodeal/ads/a/x$1;->a:I

    iput p3, p0, Lcom/appodeal/ads/a/x$1;->b:I

    iput-object p4, p0, Lcom/appodeal/ads/a/x$1;->c:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/revmob/RevMobAdsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevMobSessionNotStarted(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/a/x$1;->a:I

    iget v1, p0, Lcom/appodeal/ads/a/x$1;->b:I

    invoke-static {}, Lcom/appodeal/ads/a/x;->h()Lcom/appodeal/ads/h;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    return-void
.end method

.method public onRevMobSessionStarted()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/a/x$1;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/revmob/RevMob;->session()Lcom/revmob/RevMob;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/s;->a(Landroid/app/Activity;Lcom/revmob/RevMob;)V

    iget-object v0, p0, Lcom/appodeal/ads/a/x$1;->d:Lcom/appodeal/ads/a/x;

    iget-object v1, p0, Lcom/appodeal/ads/a/x$1;->c:Landroid/app/Activity;

    iget v2, p0, Lcom/appodeal/ads/a/x$1;->a:I

    iget v3, p0, Lcom/appodeal/ads/a/x$1;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/a/x;->a(Lcom/appodeal/ads/a/x;Landroid/app/Activity;II)V

    return-void
.end method
