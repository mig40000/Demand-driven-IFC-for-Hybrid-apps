.class Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$2;
.super Ljava/lang/Object;
.source "NewsFlowAdsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->notifyAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$2;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$2;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->access$300(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)Lcom/cmcm/adsdk/nativead/NativeAdListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdListManager;->getAdList()Ljava/util/List;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$2;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->access$400(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;Ljava/util/List;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$2;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->access$500(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$2;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->access$500(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;->onAdLoaded()V

    .line 94
    :cond_1
    return-void
.end method
