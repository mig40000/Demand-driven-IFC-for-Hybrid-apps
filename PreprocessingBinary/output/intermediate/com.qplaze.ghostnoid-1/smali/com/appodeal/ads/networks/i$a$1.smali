.class Lcom/appodeal/ads/networks/i$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/utils/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/i$a;->getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/adsdk/BitmapListener;

.field final synthetic b:Lcom/appodeal/ads/networks/i$a;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/i$a;Lcom/cmcm/adsdk/BitmapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/i$a$1;->b:Lcom/appodeal/ads/networks/i$a;

    iput-object p2, p0, Lcom/appodeal/ads/networks/i$a$1;->a:Lcom/cmcm/adsdk/BitmapListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/networks/i$a$1;->a:Lcom/cmcm/adsdk/BitmapListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/i$a$1;->a:Lcom/cmcm/adsdk/BitmapListener;

    invoke-interface {v0, p1}, Lcom/cmcm/adsdk/BitmapListener;->onSuccessed(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/networks/i$a$1;->a:Lcom/cmcm/adsdk/BitmapListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/BitmapListener;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
