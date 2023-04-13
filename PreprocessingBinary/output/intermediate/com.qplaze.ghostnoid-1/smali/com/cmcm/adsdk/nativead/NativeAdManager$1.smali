.class Lcom/cmcm/adsdk/nativead/NativeAdManager$1;
.super Ljava/lang/Object;
.source "NativeAdManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NativeAdManager;->getAd()Lcom/cmcm/baseapi/ads/INativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/cmcm/baseapi/ads/INativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/NativeAdManager;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/NativeAdManager;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->getAd()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManager$1;->call()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    return-object v0
.end method
