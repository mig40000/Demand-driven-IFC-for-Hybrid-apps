.class public Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;
.super Ljava/lang/Object;
.source "UnifiedReporter.java"


# static fields
.field private static final AC_CLICK:I = 0x2

.field private static final AC_SHOW:I = 0x1

.field private static sSelf:Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;


# instance fields
.field private mConstantParam:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private volatile mIsInit:Z

.field private mReportUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mReportUrl:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mConstantParam:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mContext:Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mIsInit:Z

    .line 43
    iget-boolean v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mIsInit:Z

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->getReportUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mReportUrl:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->getConstantParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mConstantParam:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mIsInit:Z

    .line 49
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getConstantParam()Ljava/lang/String;
    .locals 5

    .prologue
    .line 100
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    :try_start_0
    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&intl=2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/cmcm/utils/Commons;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&resolution="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cmcm/utils/Commons;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&brand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&vercode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmcm/utils/Commons;->getAppVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmcm/utils/Commons;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&os="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->sSelf:Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->sSelf:Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;

    invoke-direct {v0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;-><init>()V

    sput-object v0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->sSelf:Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->sSelf:Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNetType()I
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcm/utils/i;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const/4 v0, 0x1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcm/utils/i;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getReportUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "http://ud.adkmob.com/r/?"

    return-object v0
.end method

.method private getVariabletParam()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&nt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->getNetType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private report(ILjava/lang/String;I)V
    .locals 4
    .param p1, "posid"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mIsInit:Z

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mReportUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&posid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->getVariabletParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->mConstantParam:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :cond_0
    sget-object v1, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sBackgroudHandler:Landroid/os/Handler;

    new-instance v2, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter$1;

    invoke-direct {v2, p0, v0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter$1;-><init>(Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;Ljava/lang/StringBuffer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_1
    return-void
.end method


# virtual methods
.method public reportClick(I)V
    .locals 1
    .param p1, "posid"    # I

    .prologue
    .line 62
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->reportClick(ILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public declared-synchronized reportClick(ILjava/lang/String;)V
    .locals 1
    .param p1, "posid"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 67
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->report(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reportShow(I)V
    .locals 1
    .param p1, "posid"    # I

    .prologue
    .line 52
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->reportShow(ILjava/lang/String;)V

    .line 53
    return-void
.end method

.method public declared-synchronized reportShow(ILjava/lang/String;)V
    .locals 1
    .param p1, "posid"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->report(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
