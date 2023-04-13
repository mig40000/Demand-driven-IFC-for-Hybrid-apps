.class Lcom/cmcm/adsdk/config/RequestConfig$2;
.super Ljava/lang/Object;
.source "RequestConfig.java"

# interfaces
.implements Lcom/cmcm/adsdk/config/RequestAction$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/config/RequestConfig;->loadFromNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/config/RequestConfig;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/config/RequestConfig;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cmcm/adsdk/config/RequestConfig$2;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reson"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v0, "RequestConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request failed..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig$2;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/config/RequestConfig;->access$100(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p1}, Lcom/cmcm/adsdk/config/ConfigResponse;->isValidResponse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig$2;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    invoke-static {v0, p1}, Lcom/cmcm/adsdk/config/RequestConfig;->access$100(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "RequestConfig"

    const-string v1, "request config failed...response is invalid"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig$2;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/config/RequestConfig;->access$100(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;)V

    goto :goto_0
.end method
