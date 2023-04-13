.class final Lcom/yandex/metrica/impl/ob/dq;
.super Lcom/yandex/metrica/impl/ob/dn;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/dq$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/telephony/TelephonyManager;

.field private c:Landroid/telephony/PhoneStateListener;

.field private d:Z

.field private final e:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a",
            "<",
            "Lcom/yandex/metrica/impl/ob/dv;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a",
            "<[",
            "Lcom/yandex/metrica/impl/ob/do;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/dq$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dq$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dq;->a:Landroid/util/SparseArray;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dn;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dq;->d:Z

    .line 89
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->e:Lcom/yandex/metrica/impl/d$a;

    .line 90
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->f:Lcom/yandex/metrica/impl/d$a;

    .line 96
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dq;->h:Landroid/content/Context;

    .line 97
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TelephonyProviderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/dq;->g:Landroid/os/Handler;

    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->g:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/ob/dq$2;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/dq$2;-><init>(Lcom/yandex/metrica/impl/ob/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/dq;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dq;->c:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method private declared-synchronized a(Landroid/telephony/SignalStrength;)V
    .locals 4

    .prologue
    const/16 v3, -0x78

    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/dv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dv;->b()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v2

    .line 3363
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3378
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 3380
    const/16 v1, 0x63

    if-ne v1, v0, :cond_2

    .line 3381
    const/4 v0, -0x1

    .line 231
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/do;->a(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_1
    monitor-exit p0

    return-void

    .line 3383
    :cond_2
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    goto :goto_0

    .line 3366
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 3367
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    .line 3368
    if-eq v3, v1, :cond_0

    if-ne v3, v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/dq;Landroid/telephony/SignalStrength;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dq;->a(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/dq;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dq;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/dq;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/dq;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/dq;)Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->c:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/dq;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private declared-synchronized g()[Lcom/yandex/metrica/impl/ob/do;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dq;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dq;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1204
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dq;->h:Landroid/content/Context;

    .line 2035
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 1206
    if-eqz v2, :cond_7

    .line 1207
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v5

    .line 1208
    invoke-static {v5}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    move v3, v0

    .line 1209
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 1210
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 3166
    instance-of v2, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_2

    .line 3167
    new-instance v2, Lcom/yandex/metrica/impl/ob/do$c;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/do$c;-><init>()V

    .line 3161
    :goto_1
    if-nez v2, :cond_6

    move-object v0, v1

    .line 1211
    :goto_2
    if-eqz v0, :cond_1

    .line 1212
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3169
    :cond_2
    instance-of v2, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_3

    .line 3170
    new-instance v2, Lcom/yandex/metrica/impl/ob/do$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/do$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3172
    :cond_3
    :try_start_1
    instance-of v2, v0, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_4

    .line 3173
    new-instance v2, Lcom/yandex/metrica/impl/ob/do$d;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/do$d;-><init>()V

    goto :goto_1

    .line 3175
    :cond_4
    const/16 v2, 0x12

    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_5

    .line 3176
    new-instance v2, Lcom/yandex/metrica/impl/ob/do$e;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/do$e;-><init>()V

    goto :goto_1

    :cond_5
    move-object v2, v1

    .line 3178
    goto :goto_1

    .line 3161
    :cond_6
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/do$b;->a(Landroid/telephony/CellInfo;)Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    goto :goto_2

    .line 1217
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    .line 1218
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/do;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dq;->c()Lcom/yandex/metrica/impl/ob/dv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dv;->b()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v2

    aput-object v2, v0, v1

    .line 195
    :goto_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dq;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :goto_4
    monitor-exit p0

    return-object v0

    .line 1220
    :cond_8
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/do;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/do;

    goto :goto_3

    .line 197
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/do;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private h()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private i()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private j()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    :goto_0
    return-object v0

    .line 260
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private k()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    :goto_0
    return-object v0

    .line 268
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private l()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 277
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 277
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    .line 283
    goto :goto_0
.end method

.method private m()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 290
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 290
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    .line 296
    goto :goto_0
.end method

.method private n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    const-string v1, "unknown"

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 311
    sget-object v2, Lcom/yandex/metrica/impl/ob/dq;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dq;->h:Landroid/content/Context;

    .line 4047
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 321
    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 327
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private p()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->h:Landroid/content/Context;

    .line 5047
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 335
    if-eqz v0, :cond_1

    .line 336
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    if-eqz v2, :cond_0

    .line 339
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 346
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private q()Z
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->h:Landroid/content/Context;

    .line 6047
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 350
    if-eqz v0, :cond_0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 355
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Lcom/yandex/metrica/impl/ob/dt;
    .locals 6

    .prologue
    .line 424
    new-instance v0, Lcom/yandex/metrica/impl/ob/dt;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->j()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->k()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->q()Z

    move-result v3

    .line 6304
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 424
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/dt;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private s()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/dt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->h:Landroid/content/Context;

    .line 7047
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 430
    if-eqz v0, :cond_0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 436
    new-instance v3, Lcom/yandex/metrica/impl/ob/dt;

    invoke-direct {v3, v0}, Lcom/yandex/metrica/impl/ob/dt;-><init>(Landroid/telephony/SubscriptionInfo;)V

    .line 437
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 444
    :cond_0
    return-object v1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->g:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/ob/dq$3;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/dq$3;-><init>(Lcom/yandex/metrica/impl/ob/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/dp;)V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->g()[Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/dp;->a([Lcom/yandex/metrica/impl/ob/do;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/dw;)V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dq;->c()Lcom/yandex/metrica/impl/ob/dv;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/dw;->a(Lcom/yandex/metrica/impl/ob/dv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->g:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/ob/dq$4;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/dq$4;-><init>(Lcom/yandex/metrica/impl/ob/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Lcom/yandex/metrica/impl/ob/dv;
    .locals 4

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    :cond_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/dv;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dq;->d()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dq;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dq;->f()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/dv;-><init>(Lcom/yandex/metrica/impl/ob/do;Ljava/util/List;Ljava/util/List;)V

    .line 180
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dv;->b()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->a()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dv;->b()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v2

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/dv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dv;->b()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/do;->a(Ljava/lang/Integer;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 188
    :goto_0
    monitor-exit p0

    return-object v0

    .line 186
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/dv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/do;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 391
    new-instance v0, Lcom/yandex/metrica/impl/ob/do;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->i()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->m()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->l()Ljava/lang/Integer;

    move-result-object v4

    .line 6300
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/dq;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->n()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v10, v7

    invoke-direct/range {v0 .. v10}, Lcom/yandex/metrica/impl/ob/do;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Integer;)V

    .line 394
    return-object v0
.end method

.method e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/dt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 402
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->r()Lcom/yandex/metrica/impl/ob/dt;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->r()Lcom/yandex/metrica/impl/ob/dt;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 420
    :goto_0
    return-object v0

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dq;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
