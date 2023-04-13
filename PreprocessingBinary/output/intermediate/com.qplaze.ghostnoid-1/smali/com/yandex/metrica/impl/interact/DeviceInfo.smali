.class public Lcom/yandex/metrica/impl/interact/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/yandex/metrica/impl/interact/DeviceInfo;


# instance fields
.field public final appPlatform:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field public final deviceRootStatus:Ljava/lang/String;

.field public final deviceRootStatusMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceType:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public final manufacturer:Ljava/lang/String;

.field public final model:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;

.field public final platform:Ljava/lang/String;

.field public final platformDeviceId:Ljava/lang/String;

.field public final scaleFactor:F

.field public final screenDpi:I

.field public final screenHeight:I

.field public final screenWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 47
    const-string v0, "android"

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->platform:Ljava/lang/String;

    .line 48
    const-string v0, "android"

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->appPlatform:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 1198
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->platformDeviceId:Ljava/lang/String;

    .line 2190
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 2194
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->model:Ljava/lang/String;

    .line 52
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 2215
    invoke-static {v0}, Lcom/yandex/metrica/impl/aj;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 53
    iput v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenWidth:I

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 2219
    invoke-static {v0}, Lcom/yandex/metrica/impl/aj;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 54
    iput v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenHeight:I

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 3182
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 55
    iput v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenDpi:I

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 3186
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 56
    iput v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->scaleFactor:F

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/aj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->locale:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 4110
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4112
    invoke-static {v0}, Lcom/yandex/metrica/impl/aj;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 4114
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 4115
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 4117
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 4118
    int-to-float v4, v3

    div-float/2addr v4, v1

    .line 4119
    int-to-float v5, v2

    div-float/2addr v5, v1

    .line 4120
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 4122
    const/high16 v5, 0x43200000    # 160.0f

    mul-float/2addr v1, v5

    .line 4123
    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 4124
    int-to-float v2, v2

    div-float v1, v2, v1

    .line 4125
    mul-float v2, v3, v3

    mul-float/2addr v1, v1

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 4141
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpl-double v1, v2, v6

    if-ltz v1, :cond_0

    .line 4142
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4127
    :goto_0
    if-eqz v0, :cond_1

    .line 4128
    sget-object v0, Lcom/yandex/metrica/a;->c:Lcom/yandex/metrica/a;

    .line 58
    :goto_1
    invoke-virtual {v0}, Lcom/yandex/metrica/a;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceType:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/yandex/metrica/impl/aj$a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceRootStatus:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/interact/DeviceInfo$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/interact/DeviceInfo$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceRootStatusMarkers:Ljava/util/List;

    .line 70
    return-void

    .line 4142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4131
    :cond_1
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    cmpl-double v0, v2, v0

    if-gez v0, :cond_2

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_3

    .line 4132
    :cond_2
    sget-object v0, Lcom/yandex/metrica/a;->b:Lcom/yandex/metrica/a;

    goto :goto_1

    .line 4135
    :cond_3
    sget-object v0, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Lcom/yandex/metrica/impl/interact/DeviceInfo;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/yandex/metrica/impl/interact/DeviceInfo;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Lcom/yandex/metrica/impl/interact/DeviceInfo;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/interact/DeviceInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/interact/DeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Lcom/yandex/metrica/impl/interact/DeviceInfo;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Lcom/yandex/metrica/impl/interact/DeviceInfo;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/aj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->locale:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->locale:Ljava/lang/String;

    return-object v0
.end method
