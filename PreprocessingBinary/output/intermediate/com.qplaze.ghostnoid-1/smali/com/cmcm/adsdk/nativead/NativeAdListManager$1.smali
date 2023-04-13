.class Lcom/cmcm/adsdk/nativead/NativeAdListManager$1;
.super Ljava/lang/Object;
.source "NativeAdListManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NativeAdListManager;->getAdList()Ljava/util/List;
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
        "Ljava/util/List",
        "<",
        "Lcom/cmcm/baseapi/ads/INativeAd;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/NativeAdListManager;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/NativeAdListManager;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdListManager$1;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->access$000(Lcom/cmcm/adsdk/nativead/NativeAdListManager;)Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdListManager$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->access$000(Lcom/cmcm/adsdk/nativead/NativeAdListManager;)Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->getAdList()Ljava/util/List;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
