.class Lcom/yandex/metrica/impl/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bc$a;
    }
.end annotation


# direct methods
.method public static a([B)Lcom/yandex/metrica/impl/bc$a;
    .locals 6

    .prologue
    .line 239
    new-instance v1, Lcom/yandex/metrica/impl/bc$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/bc$a;-><init>()V

    .line 242
    :try_start_0
    new-instance v2, Lcom/yandex/metrica/impl/utils/f$a;

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/utils/f$a;-><init>(Ljava/lang/String;)V

    .line 245
    const-string v0, "device_id"

    invoke-static {v2, v0}, Lcom/yandex/metrica/impl/bc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bc$a;->e(Ljava/lang/String;)V

    .line 248
    const-string v0, "uuid"

    invoke-static {v2, v0}, Lcom/yandex/metrica/impl/bc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bc$a;->f(Ljava/lang/String;)V

    .line 1330
    const-string v0, "query_hosts"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1331
    const-string v3, "list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1332
    const-string v3, "list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1334
    const-string v3, "get_ad"

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1335
    invoke-static {v3}, Lcom/yandex/metrica/impl/bc;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1336
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/bc$a;->a(Ljava/lang/String;)V

    .line 1339
    :cond_0
    const-string v3, "report"

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1340
    invoke-static {v3}, Lcom/yandex/metrica/impl/bc;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1341
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/bc$a;->b(Ljava/lang/String;)V

    .line 1344
    :cond_1
    const-string v3, "report_ad"

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1345
    invoke-static {v3}, Lcom/yandex/metrica/impl/bc;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1346
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/bc$a;->c(Ljava/lang/String;)V

    .line 1349
    :cond_2
    const-string v3, "ssl_pinning"

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1350
    invoke-static {v3}, Lcom/yandex/metrica/impl/bc;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1351
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/bc$a;->d(Ljava/lang/String;)V

    .line 1354
    :cond_3
    const-string v3, "bind_id"

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-static {v0}, Lcom/yandex/metrica/impl/bc;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1356
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bc$a;->h(Ljava/lang/String;)V

    .line 1366
    :cond_4
    const-string v0, "distribution_customization"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1368
    const-string v3, "clids"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1369
    if-eqz v0, :cond_5

    .line 1370
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Lcom/yandex/metrica/impl/bc$a;Lorg/json/JSONObject;)V

    .line 2268
    :cond_5
    const-string v0, "features"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 2269
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/bc$a;->a(Z)V

    .line 2270
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/bc$a;->b(Z)V

    .line 2271
    const-string v3, "list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2272
    const-string v3, "list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2273
    const-string v3, "easy_collecting"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2274
    const-string v3, "easy_collecting"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2275
    const-string v4, "enabled"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/bc$a;->a(Z)V

    .line 2277
    :cond_6
    const-string v3, "package_info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2278
    const-string v3, "package_info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2279
    const-string v4, "enabled"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/bc$a;->b(Z)V

    .line 2281
    :cond_7
    const-string v3, "socket"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2282
    const-string v3, "socket"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2283
    const-string v3, "enabled"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bc$a;->c(Z)V

    .line 253
    :cond_8
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bc;->a(Lcom/yandex/metrica/impl/bc$a;Lcom/yandex/metrica/impl/utils/f$a;)V

    .line 254
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/bc$a;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 255
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bc;->b(Lcom/yandex/metrica/impl/bc$a;Lcom/yandex/metrica/impl/utils/f$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_9
    sget-object v0, Lcom/yandex/metrica/impl/bc$a$a;->b:Lcom/yandex/metrica/impl/bc$a$a;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bc$a;->a(Lcom/yandex/metrica/impl/bc$a$a;)V

    move-object v0, v1

    .line 264
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    new-instance v0, Lcom/yandex/metrica/impl/bc$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bc$a;-><init>()V

    .line 260
    sget-object v1, Lcom/yandex/metrica/impl/bc$a$a;->a:Lcom/yandex/metrica/impl/bc$a$a;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/bc$a;->a(Lcom/yandex/metrica/impl/bc$a$a;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 392
    invoke-static {p0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const-string v0, "Date"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 395
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "E, d MMM yyyy HH:mm:ss z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 400
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Lcom/yandex/metrica/impl/bc$a;Lcom/yandex/metrica/impl/utils/f$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 289
    const-string v0, "browsers"

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/utils/f$a;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_2

    .line 291
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_2

    .line 293
    new-instance v2, Lcom/yandex/metrica/impl/ob/di;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/di;-><init>()V

    .line 294
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 295
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 296
    const-string v4, "package_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 298
    const-string v5, "min_interval_seconds"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 299
    invoke-virtual {v2, v4, v3}, Lcom/yandex/metrica/impl/ob/di;->a(Ljava/lang/String;I)V

    .line 294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/bc$a;->a(Lcom/yandex/metrica/impl/ob/di;)V

    .line 305
    :cond_2
    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/bc$a;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 377
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 378
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 382
    if-eqz v3, :cond_0

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 383
    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 386
    :cond_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/utils/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bc$a;->g(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 362
    invoke-static {p0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static b(Lcom/yandex/metrica/impl/bc$a;Lcom/yandex/metrica/impl/utils/f$a;)V
    .locals 8

    .prologue
    .line 308
    const-string v0, "socket"

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/utils/f$a;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_2

    .line 310
    const-string v1, "seconds_to_live"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 311
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    const-string v4, "ports"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 313
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    invoke-static {v1}, Lcom/yandex/metrica/impl/bc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 314
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 316
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    .line 317
    if-eqz v6, :cond_0

    .line 318
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    new-instance v0, Lcom/yandex/metrica/impl/ob/dh;

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/yandex/metrica/impl/ob/dh;-><init>(JLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bc$a;->a(Lcom/yandex/metrica/impl/ob/dh;)V

    .line 326
    :cond_2
    return-void
.end method
