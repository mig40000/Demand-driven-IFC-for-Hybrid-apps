.class Lcom/amazon/device/ads/AdLocation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdLocation$LocationAwareness;
    }
.end annotation


# static fields
.field private static final ARCMINUTE_PRECISION:I = 0x6

.field private static final LOGTAG:Ljava/lang/String;

.field private static final MAX_DISTANCE_IN_KILOMETERS:F = 3.0f


# instance fields
.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazon/device/ads/AdLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdLocation;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdLocation;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/Configuration;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/Configuration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdLocation;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    iput-object p1, p0, Lcom/amazon/device/ads/AdLocation;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/device/ads/AdLocation;->configuration:Lcom/amazon/device/ads/Configuration;

    return-void
.end method

.method private getLocationAwareness()Lcom/amazon/device/ads/AdLocation$LocationAwareness;
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Configuration;->getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    goto :goto_0
.end method

.method private static roundToArcminutes(D)D
    .locals 4

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 12

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLocation;->getLocationAwareness()Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    move-result-object v5

    sget-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    invoke-virtual {v0, v5}, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    :try_start_1
    const-string v4, "network"

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    :goto_2
    if-nez v1, :cond_2

    if-eqz v4, :cond_0

    :cond_2
    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v1, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_7

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    :goto_3
    invoke-virtual {v4}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    :cond_3
    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Setting lat/long using GPS determined by distance"

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    :goto_4
    sget-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    invoke-virtual {v0, v5}, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazon/device/ads/AdLocation;->roundToArcminutes(D)D

    move-result-wide v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazon/device/ads/AdLocation;->roundToArcminutes(D)D

    move-result-wide v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    :cond_4
    move-object v2, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Failed to retrieve GPS location: No permissions to access GPS"

    invoke-virtual {v1, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_1

    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Failed to retrieve GPS location: No GPS found"

    invoke-virtual {v1, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Failed to retrieve network location: No permissions to access network location"

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    move-object v4, v2

    goto/16 :goto_2

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Failed to retrieve network location: No network provider found"

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    move-object v4, v2

    goto/16 :goto_2

    :cond_5
    move v0, v3

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Setting lat/long using network determined by distance"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Setting lat/long using GPS"

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Setting lat/long using network"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_4

    :cond_9
    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Setting lat/long using GPS, not network"

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Setting lat/long using network location, not GPS"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_4
.end method
