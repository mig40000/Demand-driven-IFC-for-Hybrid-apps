.class Lcom/appodeal/ads/af$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/utils/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/af;->c(Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/ab;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/appodeal/ads/ac;

.field final synthetic e:Lcom/appodeal/ads/af;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/af;Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/af$3;->e:Lcom/appodeal/ads/af;

    iput-object p2, p0, Lcom/appodeal/ads/af$3;->a:Lcom/appodeal/ads/ab;

    iput p3, p0, Lcom/appodeal/ads/af$3;->b:I

    iput p4, p0, Lcom/appodeal/ads/af$3;->c:I

    iput-object p5, p0, Lcom/appodeal/ads/af$3;->d:Lcom/appodeal/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/af$3;->e:Lcom/appodeal/ads/af;

    invoke-static {v0}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/af;)I

    iget-object v0, p0, Lcom/appodeal/ads/af$3;->e:Lcom/appodeal/ads/af;

    iget v1, p0, Lcom/appodeal/ads/af$3;->b:I

    iget v2, p0, Lcom/appodeal/ads/af$3;->c:I

    iget-object v3, p0, Lcom/appodeal/ads/af$3;->d:Lcom/appodeal/ads/ac;

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/af;IILcom/appodeal/ads/ac;)V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/af$3;->a:Lcom/appodeal/ads/ab;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/ab;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/appodeal/ads/af$3;->a:Lcom/appodeal/ads/ab;

    invoke-virtual {v0}, Lcom/appodeal/ads/ab;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/af$3;->a:Lcom/appodeal/ads/ab;

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/ab;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/af$3;->e:Lcom/appodeal/ads/af;

    invoke-static {v0}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/af;)I

    iget-object v0, p0, Lcom/appodeal/ads/af$3;->e:Lcom/appodeal/ads/af;

    iget v1, p0, Lcom/appodeal/ads/af$3;->b:I

    iget v2, p0, Lcom/appodeal/ads/af$3;->c:I

    iget-object v3, p0, Lcom/appodeal/ads/af$3;->d:Lcom/appodeal/ads/ac;

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/af;IILcom/appodeal/ads/ac;)V

    return-void
.end method
