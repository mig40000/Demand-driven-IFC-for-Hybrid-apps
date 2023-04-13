.class Lcom/cmcm/adsdk/config/RequestConfig$3;
.super Landroid/os/AsyncTask;
.source "RequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/config/RequestConfig;->updateToLocalAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cmcm/adsdk/config/ConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/config/RequestConfig;

.field final synthetic val$config:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    iput-object p2, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->val$config:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/cmcm/adsdk/config/ConfigResponse;
    .locals 2
    .param p1, "Object"    # [Ljava/lang/Void;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    iget-object v1, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->val$config:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/config/RequestConfig;->access$200(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;)Lcom/cmcm/adsdk/config/ConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cmcm/adsdk/config/RequestConfig$3;->doInBackground([Ljava/lang/Void;)Lcom/cmcm/adsdk/config/ConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/cmcm/adsdk/config/ConfigResponse;)V
    .locals 3
    .param p1, "configResponse"    # Lcom/cmcm/adsdk/config/ConfigResponse;

    .prologue
    .line 181
    const-string v0, "RequestConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute isSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    invoke-static {v0}, Lcom/cmcm/adsdk/config/RequestConfig;->access$600(Lcom/cmcm/adsdk/config/RequestConfig;)V

    .line 195
    return-void

    .line 186
    :cond_1
    invoke-virtual {p1}, Lcom/cmcm/adsdk/config/ConfigResponse;->getPosConfigMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    invoke-virtual {p1}, Lcom/cmcm/adsdk/config/ConfigResponse;->getPosConfigMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/config/RequestConfig;->access$302(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/util/Map;)Ljava/util/Map;

    .line 188
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    invoke-static {v0}, Lcom/cmcm/adsdk/config/RequestConfig;->access$400(Lcom/cmcm/adsdk/config/RequestConfig;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/adsdk/config/RequestUFS;->getInstance(Landroid/content/Context;)Lcom/cmcm/adsdk/config/RequestUFS;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    invoke-static {v1}, Lcom/cmcm/adsdk/config/RequestConfig;->access$300(Lcom/cmcm/adsdk/config/RequestConfig;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/config/RequestUFS;->isOpenUFSSetting(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    invoke-static {v0}, Lcom/cmcm/adsdk/config/RequestConfig;->access$400(Lcom/cmcm/adsdk/config/RequestConfig;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/adsdk/config/RequestUFS;->getInstance(Landroid/content/Context;)Lcom/cmcm/adsdk/config/RequestUFS;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    invoke-static {v1}, Lcom/cmcm/adsdk/config/RequestConfig;->access$500(Lcom/cmcm/adsdk/config/RequestConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/config/RequestUFS;->setMid(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig$3;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    invoke-static {v0}, Lcom/cmcm/adsdk/config/RequestConfig;->access$400(Lcom/cmcm/adsdk/config/RequestConfig;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/adsdk/config/RequestUFS;->getInstance(Landroid/content/Context;)Lcom/cmcm/adsdk/config/RequestUFS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/adsdk/config/RequestUFS;->requestUFSInfo()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p1, Lcom/cmcm/adsdk/config/ConfigResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cmcm/adsdk/config/RequestConfig$3;->onPostExecute(Lcom/cmcm/adsdk/config/ConfigResponse;)V

    return-void
.end method
