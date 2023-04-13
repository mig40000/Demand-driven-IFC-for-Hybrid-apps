.class Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$3;
.super Ljava/lang/Object;
.source "NewsFlowAdsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->adFailedToLoad(I)V
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
    .line 144
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$3;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$3;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->access$500(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$3;->this$0:Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;->access$500(Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader;)Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/adsdk/nativead/NewsFlowAdsLoader$NewsFlowAdListener;->onAdLoadFailed()V

    .line 150
    :cond_0
    return-void
.end method
