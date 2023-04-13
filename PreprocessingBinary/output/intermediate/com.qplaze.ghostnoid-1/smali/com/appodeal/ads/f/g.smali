.class public Lcom/appodeal/ads/f/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/appodeal/ads/f/f;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lorg/json/JSONArray;

.field private static d:I

.field private static e:I

.field private static k:D

.field private static l:D

.field private static m:Z


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Lorg/json/JSONObject;

.field private final h:Ljava/lang/Double;

.field private final i:Ljava/lang/Double;

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/appodeal/ads/f/g;->d:I

    const/4 v0, 0x0

    sput v0, Lcom/appodeal/ads/f/g;->e:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;DDZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appodeal/ads/UserSettings;->userData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/UserSettings;->userData:Lorg/json/JSONObject;

    const-string v1, "user_settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    :goto_0
    iput-object p1, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/g;->h:Ljava/lang/Double;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/g;->i:Ljava/lang/Double;

    iput-boolean p6, p0, Lcom/appodeal/ads/f/g;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appodeal/ads/UserSettings;->userData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/UserSettings;->userData:Lorg/json/JSONObject;

    const-string v1, "user_settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    :goto_0
    iput-object p1, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    const-string v0, "inapp_sum"

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/g;->h:Ljava/lang/Double;

    const-string v0, "inapp_sum_all_apps"

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/g;->i:Ljava/lang/Double;

    const-string v0, "inapp_sum"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->h:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/appodeal/ads/f/g;->j:Z

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->i:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v0, Lcom/appodeal/ads/f/g;->k:D

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->i:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v0, Lcom/appodeal/ads/f/g;->l:D

    iget-boolean v0, p0, Lcom/appodeal/ads/f/g;->j:Z

    sput-boolean v0, Lcom/appodeal/ads/f/g;->m:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a()Lcom/appodeal/ads/f/f;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/f/g;->a:Lcom/appodeal/ads/f/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/f/f;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/appodeal/ads/f/f;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/appodeal/ads/f/g;->a:Lcom/appodeal/ads/f/f;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/f/g;->a:Lcom/appodeal/ads/f/f;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v1, "country"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/appodeal/ads/UserSettings;->userData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/appodeal/ads/UserSettings;->userData:Lorg/json/JSONObject;

    const-string v2, "country_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "app_version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/appodeal/ads/f/h;

    iget-object v2, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/appodeal/ads/f/h;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v1, "app"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    const-string v2, "appodeal"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "appKey"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "sdk_version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/appodeal/ads/f/h;

    const-string v2, "1.15.9"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/f/h;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    const-string v1, "android_version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/appodeal/ads/f/h;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/appodeal/ads/f/h;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    const-string v1, "has_app_installed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->r()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v1, "session_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    const-string v2, "appodeal"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/utils/d;->a(Landroid/content/SharedPreferences;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v1, "average_session_length"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->q()Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v1, "device_model"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v1, "connection_type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->j()Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v1, "gender"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->m()Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-string v1, "age"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->h()Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v1, "occupation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->k()Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v1, "relation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->l()Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v1, "interests"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->g()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v1, "bought_inapps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->p()Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const-string v1, "inapp_sum"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->n()Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v1, "inapp_sum_all_apps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->o()Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const-string v1, "last_session_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0}, Lcom/appodeal/ads/f/g;->i()Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    const-string v1, "platform"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "android"

    goto/16 :goto_0

    :cond_15
    const-string v1, "device_type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/appodeal/ads/an;->n(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "tablet"

    goto/16 :goto_0

    :cond_16
    const-string v0, "phone"

    goto/16 :goto_0

    :cond_17
    sget-object v1, Lcom/appodeal/ads/f/g;->b:Ljava/util/Map;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/appodeal/ads/f/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/appodeal/ads/f/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    const-string v1, "day"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/appodeal/ads/f/g;->c()I

    move-result v1

    sput v1, Lcom/appodeal/ads/f/g;->e:I

    sget v1, Lcom/appodeal/ads/f/g;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    const-string v1, "hour"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/appodeal/ads/f/g;->b()I

    move-result v1

    sput v1, Lcom/appodeal/ads/f/g;->d:I

    sget v1, Lcom/appodeal/ads/f/g;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/appodeal/ads/f/f;)V
    .locals 6
    .param p0    # Lcom/appodeal/ads/f/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/appodeal/ads/f/g;->a:Lcom/appodeal/ads/f/f;

    const-string v0, "Matched segment #%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/appodeal/ads/f/f;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/f/g;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appodeal/ads/f/g;->b:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/f/g;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/appodeal/ads/f/g;->e()V

    return-void
.end method

.method private a(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v2, Lcom/appodeal/ads/f/e$a;->h:Lcom/appodeal/ads/f/e$a;

    if-ne v1, v2, :cond_2

    invoke-static {p2}, Lcom/appodeal/ads/f/e;->a(Ljava/lang/Object;)Lcom/appodeal/ads/f/e$a;

    move-result-object v1

    iput-object v1, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    invoke-virtual {p1}, Lcom/appodeal/ads/f/e;->a()V

    :cond_2
    iget-object v1, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v2, Lcom/appodeal/ads/f/e$a;->h:Lcom/appodeal/ads/f/e$a;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/appodeal/ads/f/g$1;->b:[I

    iget-object v2, p1, Lcom/appodeal/ads/f/e;->b:Lcom/appodeal/ads/f/b;

    invoke-virtual {v2}, Lcom/appodeal/ads/f/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->g(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->f(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->f(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->d(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->e(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->c(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->b(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a([Lcom/appodeal/ads/f/e;)Z
    .locals 5

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    iget-object v4, v3, Lcom/appodeal/ads/f/e;->a:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/appodeal/ads/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/appodeal/ads/f/g;->a(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private a([Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {v3, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static b()I
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "o"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->f(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->e(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/appodeal/ads/f/f;)Z
    .locals 2

    sget-object v0, Lcom/appodeal/ads/f/g$1;->a:[I

    iget-object v1, p1, Lcom/appodeal/ads/f/f;->a:Lcom/appodeal/ads/f/a;

    invoke-virtual {v1}, Lcom/appodeal/ads/f/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Lcom/appodeal/ads/f/f;->b:[Lcom/appodeal/ads/f/e;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/f/g;->a([Lcom/appodeal/ads/f/e;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/appodeal/ads/f/f;->b:[Lcom/appodeal/ads/f/e;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/f/g;->b([Lcom/appodeal/ads/f/e;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b([Lcom/appodeal/ads/f/e;)Z
    .locals 5

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    iget-object v4, v3, Lcom/appodeal/ads/f/e;->a:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/appodeal/ads/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/appodeal/ads/f/g;->a(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static c()I
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private c(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->f(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/f/g;->d(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/f/g;->c:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/f/g;->c()I

    move-result v0

    sget v1, Lcom/appodeal/ads/f/g;->e:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/appodeal/ads/f/g;->b()I

    move-result v0

    sget v1, Lcom/appodeal/ads/f/g;->d:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/f/g;->e()V

    :cond_1
    return-void
.end method

.method private d(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v3, Lcom/appodeal/ads/f/e$a;->f:Lcom/appodeal/ads/f/e$a;

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v3, Lcom/appodeal/ads/f/e$a;->d:Lcom/appodeal/ads/f/e$a;

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v3, Lcom/appodeal/ads/f/e$a;->a:Lcom/appodeal/ads/f/e$a;

    if-ne v0, v3, :cond_4

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/appodeal/ads/f/h;

    invoke-virtual {v0, p2}, Lcom/appodeal/ads/f/h;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private static e()V
    .locals 7

    new-instance v0, Lcom/appodeal/ads/f/g;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    sget-wide v2, Lcom/appodeal/ads/f/g;->k:D

    sget-wide v4, Lcom/appodeal/ads/f/g;->l:D

    sget-boolean v6, Lcom/appodeal/ads/f/g;->m:Z

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/f/g;-><init>(Landroid/content/Context;DDZ)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/appodeal/ads/f/g;->c:Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    sget-object v1, Lcom/appodeal/ads/f/g;->c:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f/g;->a(Lorg/json/JSONArray;)Lcom/appodeal/ads/f/f;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->c()J

    move-result-wide v2

    sget-object v1, Lcom/appodeal/ads/f/g;->a:Lcom/appodeal/ads/f/f;

    invoke-virtual {v1}, Lcom/appodeal/ads/f/f;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->a()V

    invoke-static {v0}, Lcom/appodeal/ads/f/g;->a(Lcom/appodeal/ads/f/f;)V

    invoke-static {}, Lcom/appodeal/ads/f/g;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private e(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v3, Lcom/appodeal/ads/f/e$a;->f:Lcom/appodeal/ads/f/e$a;

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v3, Lcom/appodeal/ads/f/e$a;->d:Lcom/appodeal/ads/f/e$a;

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v3, Lcom/appodeal/ads/f/e$a;->a:Lcom/appodeal/ads/f/e$a;

    if-ne v0, v3, :cond_4

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/appodeal/ads/f/h;

    invoke-virtual {v0, p2}, Lcom/appodeal/ads/f/h;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private static f()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/v;->k:Z

    sput-boolean v0, Lcom/appodeal/ads/n;->l:Z

    sput-boolean v0, Lcom/appodeal/ads/ah;->j:Z

    sput-boolean v0, Lcom/appodeal/ads/Native;->i:Z

    sput-boolean v0, Lcom/appodeal/ads/g;->k:Z

    sput-boolean v0, Lcom/appodeal/ads/ak;->j:Z

    return-void
.end method

.method private f(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/appodeal/ads/f/g$1;->c:[I

    iget-object v3, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    invoke-virtual {v3}, Lcom/appodeal/ads/f/e$a;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/appodeal/ads/f/h;

    invoke-virtual {v0, p2}, Lcom/appodeal/ads/f/h;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_3

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    const-string v1, "interests"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    const-string v1, "interests"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->getUserSettings(Landroid/content/Context;)Lcom/appodeal/ads/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/UserSettings;->getInterests()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Lcom/appodeal/ads/f/e;Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Lcom/appodeal/ads/f/g$1;->c:[I

    iget-object v1, p1, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    invoke-virtual {v1}, Lcom/appodeal/ads/f/e$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/appodeal/ads/f/g;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Integer;

    check-cast v0, [Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {p0, v0, p2}, Lcom/appodeal/ads/f/g;->a([Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private h()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    const-string v1, "age"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    const-string v1, "age"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->getUserSettings(Landroid/content/Context;)Lcom/appodeal/ads/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/UserSettings;->getAge()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private i()Ljava/lang/Integer;
    .locals 4

    invoke-static {}, Lcom/appodeal/ads/utils/d;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private j()Ljava/lang/Integer;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/an;->b(Landroid/content/Context;)Lcom/appodeal/ads/an$a;

    move-result-object v0

    iget-object v0, v0, Lcom/appodeal/ads/an$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private k()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    const-string v1, "occupation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    const-string v1, "occupation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->getUserSettings(Landroid/content/Context;)Lcom/appodeal/ads/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/UserSettings;->getOccupation()Lcom/appodeal/ads/UserSettings$Occupation;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/appodeal/ads/UserSettings$Occupation;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private l()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    const-string v1, "relation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    const-string v1, "relation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->getUserSettings(Landroid/content/Context;)Lcom/appodeal/ads/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/UserSettings;->getRelation()Lcom/appodeal/ads/UserSettings$Relation;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/appodeal/ads/UserSettings$Relation;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private m()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->g:Lorg/json/JSONObject;

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/f/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->getUserSettings(Landroid/content/Context;)Lcom/appodeal/ads/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/UserSettings;->getGender()Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/appodeal/ads/UserSettings$Gender;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private n()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->h:Ljava/lang/Double;

    return-object v0
.end method

.method private o()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->i:Ljava/lang/Double;

    return-object v0
.end method

.method private p()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/f/g;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private q()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    const-string v1, "appodeal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/d;->a(Landroid/content/SharedPreferences;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/appodeal/ads/utils/d;->b(Landroid/content/SharedPreferences;)J

    move-result-wide v0

    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private r()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/appodeal/ads/f/g;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    const-string v2, "^?(?:com\\.android|com\\.google|com\\.sec|com\\.samsung|com\\.sonyericsson|com\\.sonymobile|com\\.motorola|com\\.htc).*$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)Lcom/appodeal/ads/f/f;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    new-instance v1, Lcom/appodeal/ads/f/f;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/appodeal/ads/f/f;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p0, v1}, Lcom/appodeal/ads/f/g;->b(Lcom/appodeal/ads/f/f;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Lorg/json/JSONArray;)Z
    .locals 3
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    sget-object v1, Lcom/appodeal/ads/f/g;->c:Lorg/json/JSONArray;

    if-nez v1, :cond_0

    sput-object p1, Lcom/appodeal/ads/f/g;->c:Lorg/json/JSONArray;

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/appodeal/ads/f/g;->c:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sput-object p1, Lcom/appodeal/ads/f/g;->c:Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
