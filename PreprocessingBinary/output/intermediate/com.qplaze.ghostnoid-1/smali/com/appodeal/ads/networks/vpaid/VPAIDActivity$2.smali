.class Lcom/appodeal/ads/networks/vpaid/VPAIDActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity$2;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity$2;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
