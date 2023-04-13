.class Lcom/appodeal/ads/u$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/u;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/u;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/u;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/u$5;->a:Lcom/appodeal/ads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/u$5;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/u$5;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->f(Lcom/appodeal/ads/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/u$5;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/appodeal/ads/u$5;->a:Lcom/appodeal/ads/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appodeal/ads/u;->d(Lcom/appodeal/ads/u;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/u$5;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->g(Lcom/appodeal/ads/u;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/u$5;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/appodeal/ads/u$5;->a:Lcom/appodeal/ads/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appodeal/ads/u;->d(Lcom/appodeal/ads/u;Z)Z

    goto :goto_0
.end method
