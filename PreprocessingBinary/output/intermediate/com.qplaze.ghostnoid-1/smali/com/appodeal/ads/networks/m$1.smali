.class Lcom/appodeal/ads/networks/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/m;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/m$a;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/m;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/m;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/m$1;->a:Lcom/appodeal/ads/networks/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/networks/m$1;->a:Lcom/appodeal/ads/networks/m;

    iget-object v1, p0, Lcom/appodeal/ads/networks/m$1;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v1}, Lcom/appodeal/ads/networks/m;->a(Lcom/appodeal/ads/networks/m;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/networks/m$1;->a:Lcom/appodeal/ads/networks/m;

    invoke-static {v2}, Lcom/appodeal/ads/networks/m;->b(Lcom/appodeal/ads/networks/m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/networks/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
