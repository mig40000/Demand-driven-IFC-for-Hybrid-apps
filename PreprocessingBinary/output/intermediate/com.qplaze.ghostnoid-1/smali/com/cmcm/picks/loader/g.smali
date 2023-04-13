.class public Lcom/cmcm/picks/loader/g;
.super Ljava/lang/Object;
.source "MarketConfig.java"


# static fields
.field private static a:Landroid/content/SharedPreferences;

.field private static b:I

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/picks/loader/g;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .locals 3

    .prologue
    const/16 v2, 0x708

    .line 35
    sget v0, Lcom/cmcm/picks/loader/g;->b:I

    if-ge v0, v2, :cond_0

    .line 36
    const-string v0, "cache_time"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/cmcm/picks/loader/g;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cmcm/picks/loader/g;->b:I

    .line 38
    sget v0, Lcom/cmcm/picks/loader/g;->b:I

    if-ge v0, v2, :cond_0

    .line 39
    const/16 v0, 0xe10

    sput v0, Lcom/cmcm/picks/loader/g;->b:I

    .line 42
    :cond_0
    sget v0, Lcom/cmcm/picks/loader/g;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static a(Ljava/lang/Long;)J
    .locals 6

    .prologue
    .line 121
    sget-object v0, Lcom/cmcm/picks/loader/g;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/cmcm/picks/loader/g;->a()I

    move-result v0

    int-to-long v0, v0

    .line 129
    :goto_0
    return-wide v0

    .line 124
    :cond_0
    sget-object v0, Lcom/cmcm/picks/loader/g;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 125
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 126
    :cond_1
    invoke-static {}, Lcom/cmcm/picks/loader/g;->a()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 164
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 188
    invoke-static {}, Lcom/cmcm/picks/loader/g;->f()V

    .line 189
    sget-object v0, Lcom/cmcm/picks/loader/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-static {v0}, Lcom/cmcm/picks/loader/g;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 192
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/cmcm/picks/loader/g;->f()V

    .line 182
    sget-object v0, Lcom/cmcm/picks/loader/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-static {v0}, Lcom/cmcm/picks/loader/g;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 185
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    :goto_0
    return v0

    .line 60
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v2, "cm_softer_cache_time"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v2}, Lcom/cmcm/picks/loader/g;->c(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/cmcm/picks/loader/g;->b:I

    .line 63
    const-string v3, "cache_time"

    invoke-static {v3, v2}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "request_url"

    const-string v3, "request_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "req_timeout_ms"

    const-string v3, "req_timeout_ms"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "https_request_url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 68
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 72
    const-string v5, "scheme"

    invoke-static {v5, v4}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 75
    const-string v4, "host"

    invoke-static {v4, v3}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2
    const-string v3, "https_request_url"

    invoke-static {v3, v2}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_3
    const-string v2, "https_report_url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 82
    const-string v3, "https_report_url"

    invoke-static {v3, v2}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_4
    const-string v2, "pos_cache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 86
    sget-object v1, Lcom/cmcm/picks/loader/g;->c:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/cmcm/picks/loader/g;->c:Ljava/util/Map;

    :cond_5
    move v1, v0

    .line 89
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 90
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 91
    const-string v4, "posid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 92
    const-string v6, "cache_time"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 93
    sget-object v3, Lcom/cmcm/picks/loader/g;->c:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_posid_expire_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 99
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 5

    .prologue
    .line 153
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cmcm/picks/loader/g;->b(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_posid_expire_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->b(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 139
    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 140
    invoke-static {}, Lcom/cmcm/picks/loader/g;->a()I

    move-result v0

    int-to-long v0, v0

    .line 142
    :cond_0
    return-wide v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lcom/cmcm/picks/loader/g;->f()V

    .line 213
    sget-object v0, Lcom/cmcm/picks/loader/g;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const-string v0, "scheme"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/cmcm/picks/loader/g;->f()V

    .line 208
    sget-object v0, Lcom/cmcm/picks/loader/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    const/4 v0, -0x1

    .line 50
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    const-string v0, "https_report_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/cmcm/picks/loader/g;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 226
    :try_start_0
    const-string v0, "uer_agent"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/picks/loader/g;->d:Ljava/lang/String;

    .line 227
    sget-object v0, Lcom/cmcm/picks/loader/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/picks/loader/g;->d:Ljava/lang/String;

    .line 229
    const-string v0, "uer_agent"

    sget-object v1, Lcom/cmcm/picks/loader/g;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const-string v0, "ssdk.adkmob.com"

    return-object v0
.end method

.method private static f()V
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcom/cmcm/picks/loader/g;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 218
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "market_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/picks/loader/g;->a:Landroid/content/SharedPreferences;

    .line 220
    :cond_0
    return-void
.end method
