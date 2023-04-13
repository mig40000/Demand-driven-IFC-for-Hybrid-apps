.class public Lcom/cmcm/adsdk/config/ConfigResponse;
.super Ljava/lang/Object;
.source "ConfigResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;
    }
.end annotation


# static fields
.field private static final KEY_ADTYPE:Ljava/lang/String; = "adtype"

.field private static final KEY_CONFIG_POSLIST:Ljava/lang/String; = "poslist"

.field private static final KEY_INFO:Ljava/lang/String; = "info"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PARAMETER:Ljava/lang/String; = "parameter"

.field private static final KEY_PLACEID:Ljava/lang/String; = "placeid"

.field private static final KEY_WEIGHT:Ljava/lang/String; = "weight"

.field private static final TAG:Ljava/lang/String; = "ConfigResponse"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdPosConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/config/ConfigResponse;->mAdPosConfigMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/config/ConfigResponse;->list:Ljava/util/List;

    return-void
.end method

.method public static convertToPosConfigMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "posBeans":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/adsdk/config/PosBean;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 109
    if-nez p0, :cond_0

    move-object v0, v2

    .line 133
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 113
    iget-object v1, v0, Lcom/cmcm/adsdk/config/PosBean;->weight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    .line 116
    iget-object v1, v0, Lcom/cmcm/adsdk/config/PosBean;->placeid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;

    .line 126
    :goto_2
    iget-object v1, v1, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->orders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_2
    new-instance v1, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;

    invoke-direct {v1}, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;-><init>()V

    .line 123
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 129
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;

    iget-object v0, v0, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->orders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 133
    goto :goto_0
.end method

.method public static createFrom(Ljava/lang/String;)Lcom/cmcm/adsdk/config/ConfigResponse;
    .locals 11
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    :try_start_0
    new-instance v0, Lcom/cmcm/adsdk/config/ConfigResponse;

    invoke-direct {v0}, Lcom/cmcm/adsdk/config/ConfigResponse;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v3, "poslist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 66
    if-eqz v4, :cond_0

    move v3, v2

    .line 67
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 68
    new-instance v5, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;

    invoke-direct {v5}, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;-><init>()V

    .line 69
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    const-string v6, "adtype"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->adType:I

    .line 71
    const-string v6, "placeid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->placementId:Ljava/lang/String;

    .line 72
    const-string v6, "info"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 73
    if-eqz v6, :cond_3

    move v1, v2

    .line 74
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 75
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 76
    new-instance v8, Lcom/cmcm/adsdk/config/PosBean;

    invoke-direct {v8}, Lcom/cmcm/adsdk/config/PosBean;-><init>()V

    .line 77
    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    .line 78
    const-string v9, "parameter"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/cmcm/adsdk/config/PosBean;->parameter:Ljava/lang/String;

    .line 79
    const-string v9, "weight"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v8, Lcom/cmcm/adsdk/config/PosBean;->weight:Ljava/lang/Integer;

    .line 80
    iget v7, v5, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->adType:I

    iput v7, v8, Lcom/cmcm/adsdk/config/PosBean;->adtype:I

    .line 81
    iget-object v7, v5, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->placementId:Ljava/lang/String;

    iput-object v7, v8, Lcom/cmcm/adsdk/config/PosBean;->placeid:Ljava/lang/String;

    .line 82
    iget-object v7, v8, Lcom/cmcm/adsdk/config/PosBean;->weight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_2

    .line 83
    iget-object v7, v5, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->orders:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 87
    :cond_3
    iget-object v1, v5, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->orders:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 88
    iget-object v1, v0, Lcom/cmcm/adsdk/config/ConfigResponse;->mAdPosConfigMap:Ljava/util/Map;

    iget-object v6, v5, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->placementId:Ljava/lang/String;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, v0, Lcom/cmcm/adsdk/config/ConfigResponse;->list:Ljava/util/List;

    iget-object v5, v5, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->orders:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    .line 92
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 93
    :goto_3
    const-string v2, "ConfigResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConfigResponse create error..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static isValidResponse(Ljava/lang/String;)Z
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    if-eqz v0, :cond_0

    .line 50
    const-string v1, "poslist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 54
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findAdPosInfo(Ljava/lang/String;)Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;
    .locals 1
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigResponse;->mAdPosConfigMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigResponse;->mAdPosConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigResponse;->mAdPosConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;

    goto :goto_0
.end method

.method public getPosConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigResponse;->mAdPosConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPostList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigResponse;->list:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    const-string v0, ":poslist{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigResponse;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :cond_0
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
