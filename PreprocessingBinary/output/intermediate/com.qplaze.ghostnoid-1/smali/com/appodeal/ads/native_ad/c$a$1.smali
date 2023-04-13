.class Lcom/appodeal/ads/native_ad/c$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/c$a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/native_ad/c$a;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/c$a$1;->a:Lcom/appodeal/ads/native_ad/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a$1;->a:Lcom/appodeal/ads/native_ad/c$a;

    invoke-static {v0}, Lcom/appodeal/ads/native_ad/c$a;->a(Lcom/appodeal/ads/native_ad/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a$1;->a:Lcom/appodeal/ads/native_ad/c$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appodeal/ads/native_ad/c$a;->a(Lcom/appodeal/ads/native_ad/c$a;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
