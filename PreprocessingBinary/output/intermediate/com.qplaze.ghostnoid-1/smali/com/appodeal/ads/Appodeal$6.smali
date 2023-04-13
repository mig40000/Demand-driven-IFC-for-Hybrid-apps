.class final Lcom/appodeal/ads/Appodeal$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/Appodeal;->cache(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/l;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/l;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/Appodeal$6;->a:Lcom/appodeal/ads/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/appodeal/ads/g;->d:Lcom/appodeal/ads/BannerCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/g;->d:Lcom/appodeal/ads/BannerCallbacks;

    iget-object v1, p0, Lcom/appodeal/ads/Appodeal$6;->a:Lcom/appodeal/ads/l;

    iget-object v1, v1, Lcom/appodeal/ads/l;->q:Lcom/appodeal/ads/h;

    invoke-virtual {v1}, Lcom/appodeal/ads/h;->f()Lcom/appodeal/ads/k;

    move-result-object v1

    iget v1, v1, Lcom/appodeal/ads/k;->b:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appodeal/ads/BannerCallbacks;->onBannerLoaded(IZ)V

    :cond_0
    return-void
.end method
