.class Lcom/appodeal/ads/e/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# instance fields
.field private final a:Lcom/appodeal/ads/ap;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/e/ah;->a:Lcom/appodeal/ads/ap;

    iput p2, p0, Lcom/appodeal/ads/e/ah;->b:I

    return-void
.end method


# virtual methods
.method public onAdEnd(Z)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/e/ah;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/ah;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->d(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onAdPlayableChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/appodeal/ads/ao$a;->a:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/e/ag;->b:Lcom/appodeal/ads/ao$a;

    :cond_0
    return-void
.end method

.method public onAdStart()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/e/ah;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/ah;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->a(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ao$a;->c:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/e/ag;->b:Lcom/appodeal/ads/ao$a;

    return-void
.end method

.method public onVideoView(ZII)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appodeal/ads/e/ah;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/ah;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->b(ILcom/appodeal/ads/ap;)V

    :cond_0
    return-void
.end method
