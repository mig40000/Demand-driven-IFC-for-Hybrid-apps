.class public Lcom/cmcm/adsdk/nativead/RequestResultLogger;
.super Ljava/lang/Object;
.source "RequestResultLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;
    }
.end annotation


# instance fields
.field mLastResult:Ljava/lang/String;

.field private mRequestResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mRequestResultMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFinishedItem(Ljava/lang/Object;)Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mRequestResultMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;

    .line 64
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mFinished:Z

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mLastResult:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestErrorInfo()Ljava/lang/String;
    .locals 10

    .prologue
    .line 110
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mRequestResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 112
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mRequestResultMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;

    .line 116
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 117
    const-string v5, "Adtype"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget-boolean v0, v1, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mFinished:Z

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "IsSuccess"

    invoke-virtual {v1}, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->isSuccess()Z

    move-result v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 120
    const-string v0, "ErrorInfo"

    invoke-virtual {v1}, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->getFailReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v0, "time"

    iget-wide v6, v1, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mRequestEnd:J

    iget-wide v8, v1, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mRequestBegin:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    :cond_1
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestBegin(Ljava/lang/String;)Z
    .locals 4
    .param p1, "adTypeName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mRequestResultMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const-string v1, "CMCMADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has begin load"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to result map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mRequestResultMap:Ljava/util/Map;

    new-instance v1, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;

    invoke-direct {v1}, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestEnd(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4
    .param p1, "adTypeName"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z
    .param p3, "errorString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mRequestResultMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    const-string v1, "CMCMADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "not-begin-yet, fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to result map ,is scuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mRequestResultMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;

    .line 96
    invoke-virtual {v0, p2, p3}, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->update(ZLjava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mLastResult:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mRequestResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    return-void
.end method

.method public setRequestResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger;->mLastResult:Ljava/lang/String;

    .line 103
    return-void
.end method
