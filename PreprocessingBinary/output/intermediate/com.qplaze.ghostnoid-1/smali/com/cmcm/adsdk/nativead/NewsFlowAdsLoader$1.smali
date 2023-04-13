.class Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$1;
.super Ljava/lang/Object;
.source "NewsFlowAdsLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->getAd()Lcom/cmcm/baseapi/ads/INativeAd;
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
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$1;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$1;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->access$000(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)V

    .line 44
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$1;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-static {v1}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->access$100(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$1;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->access$100(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$1;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-static {v1}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->access$200(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)V

    .line 49
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$1;->call()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    return-object v0
.end method
