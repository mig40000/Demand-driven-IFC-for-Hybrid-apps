.class Lcom/appodeal/ads/b/b;
.super Lcom/google/android/gms/ads/AdListener;


# instance fields
.field private final a:Lcom/appodeal/ads/o;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/o;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/b/b;->a:Lcom/appodeal/ads/o;

    iput p2, p0, Lcom/appodeal/ads/b/b;->b:I

    iput p3, p0, Lcom/appodeal/ads/b/b;->c:I

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/b/b;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/b/b;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1}, Lcom/appodeal/ads/q;->c(ILcom/appodeal/ads/o;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/b/b;->b:I

    iget v1, p0, Lcom/appodeal/ads/b/b;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/b/b;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/b/b;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/b/b;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1}, Lcom/appodeal/ads/q;->b(ILcom/appodeal/ads/o;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/b/b;->b:I

    iget v1, p0, Lcom/appodeal/ads/b/b;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/b/b;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/q;->a(IILcom/appodeal/ads/o;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/b/b;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/b/b;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1}, Lcom/appodeal/ads/q;->a(ILcom/appodeal/ads/o;)V

    return-void
.end method
