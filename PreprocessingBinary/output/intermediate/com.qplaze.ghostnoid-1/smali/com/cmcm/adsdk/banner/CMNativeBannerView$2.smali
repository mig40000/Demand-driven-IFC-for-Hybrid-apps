.class Lcom/cmcm/adsdk/banner/CMNativeBannerView$2;
.super Ljava/lang/Object;
.source "CMNativeBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/banner/CMNativeBannerView;->renderBannerData(Lcom/cmcm/baseapi/ads/INativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/banner/CMNativeBannerView;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$2;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    :try_start_0
    sget-object v0, Lcom/cmcm/adsdk/Const;->CM_AD_DETAIL_URL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$2;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-static {v1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->access$200(Lcom/cmcm/adsdk/banner/CMNativeBannerView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
