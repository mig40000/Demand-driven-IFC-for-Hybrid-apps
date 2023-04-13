.class public Lcom/cmcm/adsdk/offerreport/OfferReport;
.super Ljava/lang/Object;
.source "OfferReport.java"


# static fields
.field private static final CLICK_AC:I = 0x3c

.field private static final DEFAULT_TIME_OUT:I = 0x3e8

.field private static final NET_RETY_TIMES:I = 0x3

.field private static final PLATFORM:I = 0x2

.field private static final PROTOCOL_VERSION:I = 0xa

.field private static final REPORT_AC:I = 0x32

.field private static final offerReportUrl:Ljava/lang/String; = "https://ms.cmcm.com/c"

.field private static sSelf:Lcom/cmcm/adsdk/offerreport/OfferReport;


# instance fields
.field private DEG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private volatile mIsInit:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "OfferReport"

    iput-object v0, p0, Lcom/cmcm/adsdk/offerreport/OfferReport;->TAG:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/cmcm/adsdk/offerreport/OfferReport;->DEG:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/offerreport/OfferReport;->mContext:Landroid/content/Context;

    .line 33
    iput-boolean v1, p0, Lcom/cmcm/adsdk/offerreport/OfferReport;->mIsInit:Z

    .line 53
    iget-boolean v0, p0, Lcom/cmcm/adsdk/offerreport/OfferReport;->mIsInit:Z

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/offerreport/OfferReport;->mContext:Landroid/content/Context;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/offerreport/OfferReport;->mIsInit:Z

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/offerreport/OfferReport;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/offerreport/OfferReport;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmcm/adsdk/offerreport/OfferReport;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmcm/adsdk/offerreport/OfferReport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/offerreport/OfferReport;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/cmcm/adsdk/offerreport/OfferReport;->getOfferReportUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/cmcm/adsdk/offerreport/OfferReport;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/offerreport/OfferReport;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cmcm/adsdk/offerreport/OfferReport;->getConstantParam(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clickOfferShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConstantParam(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "offerStr"    # Ljava/lang/String;
    .param p2, "logType"    # I
    .param p3, "ac"    # I
    .param p4, "posId"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x32

    .line 92
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 93
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    :try_start_0
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :goto_0
    if-ne p3, v3, :cond_2

    .line 100
    invoke-direct {p0}, Lcom/cmcm/adsdk/offerreport/OfferReport;->reportOfferShow()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    :try_start_1
    const-string v2, "mid"

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v2, "v"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    const-string v2, "lan"

    iget-object v3, p0, Lcom/cmcm/adsdk/offerreport/OfferReport;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmcm/utils/Commons;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v2, "pos"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v2, "pl"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string v2, "aid"

    invoke-static {}, Lcom/cmcm/utils/Commons;->getAndroidId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v2, "logType"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v2, "mcc"

    iget-object v3, p0, Lcom/cmcm/adsdk/offerreport/OfferReport;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmcm/utils/Commons;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v2, "channelid"

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v2, "ac"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "offerInfo"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_2
    const/16 v1, 0x3c

    if-ne p3, v1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/cmcm/adsdk/offerreport/OfferReport;->clickOfferShow()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 96
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/cmcm/adsdk/offerreport/OfferReport;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/cmcm/adsdk/offerreport/OfferReport;->sSelf:Lcom/cmcm/adsdk/offerreport/OfferReport;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/cmcm/adsdk/offerreport/OfferReport;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/cmcm/adsdk/offerreport/OfferReport;->sSelf:Lcom/cmcm/adsdk/offerreport/OfferReport;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/cmcm/adsdk/offerreport/OfferReport;

    invoke-direct {v0}, Lcom/cmcm/adsdk/offerreport/OfferReport;-><init>()V

    sput-object v0, Lcom/cmcm/adsdk/offerreport/OfferReport;->sSelf:Lcom/cmcm/adsdk/offerreport/OfferReport;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/cmcm/adsdk/offerreport/OfferReport;->sSelf:Lcom/cmcm/adsdk/offerreport/OfferReport;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getOfferReportUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "https://ms.cmcm.com/c"

    return-object v0
.end method

.method private reportOfferShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public report(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "offerStr"    # Ljava/lang/String;
    .param p2, "logType"    # I
    .param p3, "ac"    # I
    .param p4, "posId"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v6, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sBackgroudHandler:Landroid/os/Handler;

    new-instance v0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cmcm/adsdk/offerreport/OfferReport$1;-><init>(Lcom/cmcm/adsdk/offerreport/OfferReport;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
