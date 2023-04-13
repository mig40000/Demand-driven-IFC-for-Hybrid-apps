.class Lcom/appodeal/ads/g/t;
.super Lcom/revmob/RevMobAdsListener;


# instance fields
.field private final a:Lcom/appodeal/ads/ap;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ap;II)V
    .locals 0

    invoke-direct {p0}, Lcom/revmob/RevMobAdsListener;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/g/t;->a:Lcom/appodeal/ads/ap;

    iput p2, p0, Lcom/appodeal/ads/g/t;->b:I

    iput p3, p0, Lcom/appodeal/ads/g/t;->c:I

    return-void
.end method


# virtual methods
.method public onRevMobAdClicked()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/g/t;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/t;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->c(ILcom/appodeal/ads/ap;)V

    iget v0, p0, Lcom/appodeal/ads/g/t;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/t;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->d(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onRevMobAdDismissed()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/g/t;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/t;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->d(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onRevMobAdNotReceived(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/g/t;->b:I

    iget v1, p0, Lcom/appodeal/ads/g/t;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/g/t;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onRevMobVideoFinished()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/g/t;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/t;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->b(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onRevMobVideoLoaded()V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/g/t;->b:I

    iget v1, p0, Lcom/appodeal/ads/g/t;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/g/t;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/aj;->a(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onRevMobVideoStarted()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/g/t;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/t;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->a(ILcom/appodeal/ads/ap;)V

    return-void
.end method
