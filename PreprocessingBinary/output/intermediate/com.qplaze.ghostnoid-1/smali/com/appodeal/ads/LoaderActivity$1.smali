.class Lcom/appodeal/ads/LoaderActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/LoaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/LoaderActivity;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/LoaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/LoaderActivity$1;->a:Lcom/appodeal/ads/LoaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/n;->a()Lcom/appodeal/ads/s;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appodeal/ads/s;->x:Z

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/ah;->a()Lcom/appodeal/ads/ar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appodeal/ads/ar;->v:Z

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/ak;->a()Lcom/appodeal/ads/ar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appodeal/ads/ar;->v:Z

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/LoaderActivity$1;->a:Lcom/appodeal/ads/LoaderActivity;

    invoke-virtual {v0}, Lcom/appodeal/ads/LoaderActivity;->finish()V

    iget-object v0, p0, Lcom/appodeal/ads/LoaderActivity$1;->a:Lcom/appodeal/ads/LoaderActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/LoaderActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/appodeal/ads/LoaderActivity$1;->a:Lcom/appodeal/ads/LoaderActivity;

    invoke-virtual {v0}, Lcom/appodeal/ads/LoaderActivity;->finish()V

    iget-object v0, p0, Lcom/appodeal/ads/LoaderActivity$1;->a:Lcom/appodeal/ads/LoaderActivity;

    invoke-virtual {v0, v3, v3}, Lcom/appodeal/ads/LoaderActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
