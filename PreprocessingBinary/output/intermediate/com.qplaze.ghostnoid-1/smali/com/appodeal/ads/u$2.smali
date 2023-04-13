.class Lcom/appodeal/ads/u$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/u;->a()V
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

    iput-object p1, p0, Lcom/appodeal/ads/u$2;->a:Lcom/appodeal/ads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "Video clicked"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/u$2;->a:Lcom/appodeal/ads/u;

    sput-object v0, Lcom/appodeal/ads/u;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    iget-object v0, p0, Lcom/appodeal/ads/u$2;->a:Lcom/appodeal/ads/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;Z)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appodeal/ads/u$2;->a:Lcom/appodeal/ads/u;

    invoke-static {v1}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/u$2;->a:Lcom/appodeal/ads/u;

    invoke-static {v1}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/u$2;->a:Lcom/appodeal/ads/u;

    invoke-static {v0}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/u;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/u$2;->a:Lcom/appodeal/ads/u;

    invoke-static {v1}, Lcom/appodeal/ads/u;->c(Lcom/appodeal/ads/u;)V

    iget-object v1, p0, Lcom/appodeal/ads/u$2;->a:Lcom/appodeal/ads/u;

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/u$2;->a:Lcom/appodeal/ads/u;

    iget-object v2, v2, Lcom/appodeal/ads/u;->a:Lcom/appodeal/ads/ab;

    invoke-virtual {v2}, Lcom/appodeal/ads/ab;->j()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/appodeal/ads/VideoPlayerActivity;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/u$2;->a:Lcom/appodeal/ads/u;

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
