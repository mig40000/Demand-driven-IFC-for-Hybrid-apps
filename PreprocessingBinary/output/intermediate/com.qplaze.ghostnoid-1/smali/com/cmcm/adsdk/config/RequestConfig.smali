.class public Lcom/cmcm/adsdk/config/RequestConfig;
.super Ljava/lang/Object;
.source "RequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;,
        Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x1c20

.field private static final KEY_CONFIG_LOADED_TIME:Ljava/lang/String; = "config_loaded_time"

.field private static final KEY_DEFAULT_CONFIG:Ljava/lang/String; = "default_config"

.field private static final KEY_SPLASH_FREQUENCY:Ljava/lang/String; = "splash_frequency"

.field private static final TAG:Ljava/lang/String; = "RequestConfig"

.field private static sInstance:Lcom/cmcm/adsdk/config/RequestConfig;


# instance fields
.field private mBackupQueueTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;",
            ">;"
        }
    .end annotation
.end field

.field mConfigLoaded:Z

.field private mConfigMap:Ljava/util/Map;
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

.field private mContext:Landroid/content/Context;

.field private mDefaultConfig:Ljava/lang/String;

.field private mForceDefaultConfig:Z

.field private volatile mIsLoading:Z

.field private mMid:Ljava/lang/String;

.field private final requestAction:Lcom/cmcm/adsdk/config/RequestAction;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mDefaultConfig:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mForceDefaultConfig:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mConfigMap:Ljava/util/Map;

    .line 52
    iput-boolean v1, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mIsLoading:Z

    .line 53
    iput-boolean v1, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mConfigLoaded:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mBackupQueueTask:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/cmcm/adsdk/config/RequestAction;

    invoke-direct {v0}, Lcom/cmcm/adsdk/config/RequestAction;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->requestAction:Lcom/cmcm/adsdk/config/RequestAction;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/config/RequestConfig;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/cmcm/adsdk/config/RequestConfig;->getBeansOnUI(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/config/RequestConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/config/RequestConfig;->updateToLocalAsync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;)Lcom/cmcm/adsdk/config/ConfigResponse;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/config/RequestConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/config/RequestConfig;->updateToLocal(Ljava/lang/String;)Lcom/cmcm/adsdk/config/ConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/cmcm/adsdk/config/RequestConfig;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/config/RequestConfig;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/config/RequestConfig;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mConfigMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$400(Lcom/cmcm/adsdk/config/RequestConfig;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/config/RequestConfig;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cmcm/adsdk/config/RequestConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/config/RequestConfig;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mMid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cmcm/adsdk/config/RequestConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/config/RequestConfig;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestConfig;->notifyLoaded()V

    return-void
.end method

.method public static buildParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mid"    # Ljava/lang/String;

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    const-string v1, "action=pos_config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, "&postype=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, "&posid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&cver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&lan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, "&v=18"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "&sdkv=3.4.7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBeansOnUI(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V
    .locals 2
    .param p1, "placeId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mConfigLoaded:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/cmcm/adsdk/config/RequestConfig;->getBeansSync(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestConfig;->loadfromLocal()V

    .line 112
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mBackupQueueTask:Ljava/util/List;

    new-instance v1, Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;

    invoke-direct {v1, p1, p2}, Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;-><init>(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getBeansSync(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V
    .locals 2
    .param p1, "placeId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

    .prologue
    .line 117
    if-eqz p2, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;

    .line 120
    if-eqz v0, :cond_1

    .line 121
    iget-object v0, v0, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->orders:Ljava/util/List;

    .line 123
    :goto_0
    invoke-interface {p2, p1, v0}, Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;->onConfigLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 125
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/cmcm/adsdk/config/RequestConfig;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/cmcm/adsdk/config/RequestConfig;->sInstance:Lcom/cmcm/adsdk/config/RequestConfig;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/cmcm/adsdk/config/RequestConfig;

    invoke-direct {v0}, Lcom/cmcm/adsdk/config/RequestConfig;-><init>()V

    sput-object v0, Lcom/cmcm/adsdk/config/RequestConfig;->sInstance:Lcom/cmcm/adsdk/config/RequestConfig;

    .line 69
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/config/RequestConfig;->sInstance:Lcom/cmcm/adsdk/config/RequestConfig;

    return-object v0
.end method

.method private issueWaitingQueries()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mBackupQueueTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;

    .line 210
    iget-object v2, v0, Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;->mCallback:Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, v0, Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;->mPosId:Ljava/lang/String;

    iget-object v0, v0, Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;->mCallback:Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

    invoke-direct {p0, v2, v0}, Lcom/cmcm/adsdk/config/RequestConfig;->getBeansSync(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mBackupQueueTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    return-void
.end method

.method private loadFromNetwork()V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->requestAction:Lcom/cmcm/adsdk/config/RequestAction;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mIsLoading:Z

    .line 139
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->requestAction:Lcom/cmcm/adsdk/config/RequestAction;

    const-string v1, "http://unconf.adkmob.com/b/"

    iget-object v2, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mMid:Ljava/lang/String;

    invoke-static {v2}, Lcom/cmcm/adsdk/config/RequestConfig;->buildParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cmcm/adsdk/config/RequestConfig$2;

    invoke-direct {v3, p0}, Lcom/cmcm/adsdk/config/RequestConfig$2;-><init>(Lcom/cmcm/adsdk/config/RequestConfig;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcm/adsdk/config/RequestAction;->requestConfig(Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestAction$RequestListener;)V

    goto :goto_0
.end method

.method private loadfromLocal()V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mIsLoading:Z

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/config/RequestConfig;->updateToLocalAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyLoaded()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mIsLoading:Z

    .line 201
    iput-boolean v1, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mConfigLoaded:Z

    .line 202
    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestConfig;->issueWaitingQueries()V

    .line 205
    invoke-static {v1}, Lcom/cmcm/adsdk/CMAdErrorManager;->setIsCompleteConfig(Z)V

    .line 206
    return-void
.end method

.method private shouldRequstConfig()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 160
    iget-boolean v1, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mForceDefaultConfig:Z

    if-eqz v1, :cond_0

    .line 168
    :goto_0
    return v0

    .line 163
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/cmcm/adsdk/config/RequestConfig;->getConfigLoadedTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 164
    const-wide/16 v4, 0x1c20

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 165
    const-string v1, "RequestConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldTryDefaultConfig()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mDefaultConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcm/adsdk/config/RequestConfig;->getDefaultConfigUsed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateToLocal(Ljava/lang/String;)Lcom/cmcm/adsdk/config/ConfigResponse;
    .locals 4
    .param p1, "obj"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "RequestConfig"

    const-string v1, "request server config failed, use last local config"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, ""

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->getCacheJsonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mForceDefaultConfig:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestConfig;->shouldTryDefaultConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/config/RequestConfig;->setDefaultConfigUsed(Z)V

    .line 224
    const-string v0, "RequestConfig"

    const-string v1, "request server config failed, use default config"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mDefaultConfig:Ljava/lang/String;

    .line 228
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    const-string v0, "RequestConfig"

    const-string v1, "request server config and default config failed, update config failed"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    .line 232
    :cond_3
    const-string v0, "RequestConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save config to shareprefrence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmcm/adsdk/config/RequestConfig;->putConfigLoadedTime(J)V

    .line 234
    invoke-static {p1}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->saveCacheJsonStr(Ljava/lang/String;)V

    .line 235
    invoke-static {p1}, Lcom/cmcm/adsdk/config/ConfigResponse;->createFrom(Ljava/lang/String;)Lcom/cmcm/adsdk/config/ConfigResponse;

    move-result-object v0

    .line 236
    const-string v1, "RequestConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reponse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateToLocalAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "RequestConfig"

    const-string v1, "update config in db"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/cmcm/adsdk/config/RequestConfig$3;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/adsdk/config/RequestConfig$3;-><init>(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 197
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->requestAction:Lcom/cmcm/adsdk/config/RequestAction;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->requestAction:Lcom/cmcm/adsdk/config/RequestAction;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/config/RequestAction;->destory()V

    .line 248
    :cond_0
    return-void
.end method

.method public getBeans(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V
    .locals 1
    .param p1, "placeId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

    .prologue
    .line 95
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/cmcm/adsdk/config/RequestConfig;->getBeansOnUI(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/cmcm/adsdk/config/RequestConfig$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmcm/adsdk/config/RequestConfig$1;-><init>(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getConfigLoadedTime()J
    .locals 4

    .prologue
    .line 255
    const-string v0, "config_loaded_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultConfigUsed()Z
    .locals 2

    .prologue
    .line 259
    const-string v0, "default_config"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publishId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mMid:Ljava/lang/String;

    .line 60
    invoke-static {p1, p2}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->getInstance(Landroid/content/Context;)Lcom/cmcm/adsdk/config/ConfigChangeMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->start(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public putConfigLoadedTime(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 251
    const-string v0, "config_loaded_time"

    invoke-static {v0, p1, p2}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->putLong(Ljava/lang/String;J)V

    .line 252
    return-void
.end method

.method public requestConfig(Z)V
    .locals 4
    .param p1, "forceLoad"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/adsdk/config/RequestConfig;->getConfigLoadedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mConfigLoaded:Z

    if-nez v0, :cond_2

    .line 86
    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestConfig;->loadfromLocal()V

    .line 89
    :cond_2
    iget-boolean v0, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mForceDefaultConfig:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestConfig;->shouldRequstConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :cond_3
    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestConfig;->loadFromNetwork()V

    goto :goto_0
.end method

.method public setDefaultConfig(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "strConfig"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mDefaultConfig:Ljava/lang/String;

    .line 78
    iput-boolean p2, p0, Lcom/cmcm/adsdk/config/RequestConfig;->mForceDefaultConfig:Z

    .line 79
    return-void
.end method

.method public setDefaultConfigUsed(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 263
    const-string v0, "default_config"

    invoke-static {v0, p1}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    return-void
.end method
