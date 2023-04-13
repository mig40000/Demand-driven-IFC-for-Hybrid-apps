.class Lcom/appodeal/ads/g/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/ads2/IUnityAdsListener;


# instance fields
.field private final a:Lcom/appodeal/ads/ap;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/g/x;->a:Lcom/appodeal/ads/ap;

    iput p2, p0, Lcom/appodeal/ads/g/x;->b:I

    return-void
.end method


# virtual methods
.method public onUnityAdsError(Lcom/unity3d/ads2/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads2/UnityAds$FinishState;)V
    .locals 2

    sget-object v0, Lcom/unity3d/ads2/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads2/UnityAds$FinishState;

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/appodeal/ads/g/x;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/x;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->b(ILcom/appodeal/ads/ap;)V

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/g/x;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/x;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->d(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ao$a;->a:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/g/w;->b:Lcom/appodeal/ads/ao$a;

    return-void
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/g/x;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/g/x;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/aj;->a(ILcom/appodeal/ads/ap;)V

    return-void
.end method
