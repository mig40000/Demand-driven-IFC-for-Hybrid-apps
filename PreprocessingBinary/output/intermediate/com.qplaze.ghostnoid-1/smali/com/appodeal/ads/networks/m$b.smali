.class Lcom/appodeal/ads/networks/m$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/networks/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/m;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/m;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/m$b;->a:Lcom/appodeal/ads/networks/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadHTML(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/m$b;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->c(Lcom/appodeal/ads/networks/m;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/networks/m$b$1;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/m$b$1;-><init>(Lcom/appodeal/ads/networks/m$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
