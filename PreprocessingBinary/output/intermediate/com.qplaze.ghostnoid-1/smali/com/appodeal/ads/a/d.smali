.class Lcom/appodeal/ads/a/d;
.super Lcom/google/android/gms/ads/AdListener;


# instance fields
.field private final a:Lcom/appodeal/ads/h;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/gms/ads/AdSize;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/h;IILcom/google/android/gms/ads/AdSize;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/a/d;->a:Lcom/appodeal/ads/h;

    iput p2, p0, Lcom/appodeal/ads/a/d;->b:I

    iput p3, p0, Lcom/appodeal/ads/a/d;->c:I

    iput-object p4, p0, Lcom/appodeal/ads/a/d;->d:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    iget v0, p0, Lcom/appodeal/ads/a/d;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/d;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/d;->a:Lcom/appodeal/ads/h;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;Z)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/a/d;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/a/d;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1}, Lcom/appodeal/ads/j;->c(ILcom/appodeal/ads/h;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/appodeal/ads/a/d;->d:Lcom/google/android/gms/ads/AdSize;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/appodeal/ads/a/d;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/d;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/d;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1, v2, v4, v4}, Lcom/appodeal/ads/j;->a(IILcom/appodeal/ads/h;ZZ)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/a/d;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/d;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/d;->a:Lcom/appodeal/ads/h;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/j;->a(IILcom/appodeal/ads/h;ZZ)V

    goto :goto_0
.end method

.method public onAdOpened()V
    .locals 0

    return-void
.end method
