.class final Lcom/yandex/metrica/impl/al;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/al$f;,
        Lcom/yandex/metrica/impl/al$g;,
        Lcom/yandex/metrica/impl/al$c;,
        Lcom/yandex/metrica/impl/al$d;,
        Lcom/yandex/metrica/impl/al$b;,
        Lcom/yandex/metrica/impl/al$e;,
        Lcom/yandex/metrica/impl/al$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yandex/metrica/impl/ob/bi;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/ob/bi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    sget-object v1, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/bi;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/yandex/metrica/impl/ob/bi;->b:Lcom/yandex/metrica/impl/ob/bi;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/al;->a:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 67
    sget-object v1, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/bi;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v1, Lcom/yandex/metrica/impl/ob/bi;->b:Lcom/yandex/metrica/impl/ob/bi;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sput-object v0, Lcom/yandex/metrica/impl/al;->b:Landroid/util/SparseArray;

    .line 70
    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/bi;)I
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/yandex/metrica/impl/al;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/c$a$e;
    .locals 3

    .prologue
    .line 305
    new-instance v1, Lcom/yandex/metrica/c$a$e;

    invoke-direct {v1}, Lcom/yandex/metrica/c$a$e;-><init>()V

    .line 307
    iput p0, v1, Lcom/yandex/metrica/c$a$e;->d:I

    .line 309
    if-eqz p1, :cond_0

    .line 310
    iput-object p1, v1, Lcom/yandex/metrica/c$a$e;->e:Ljava/lang/String;

    .line 313
    :cond_0
    invoke-static {p3}, Lcom/yandex/metrica/impl/al;->c(Ljava/lang/String;)[Lcom/yandex/metrica/c$a$b;

    move-result-object v0

    .line 314
    invoke-static {p2}, Lcom/yandex/metrica/impl/al;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 316
    if-eqz v0, :cond_1

    .line 317
    iput-object v0, v1, Lcom/yandex/metrica/c$a$e;->b:[Lcom/yandex/metrica/c$a$b;

    .line 319
    :cond_1
    if-eqz v2, :cond_2

    .line 321
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$j;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/c$a$j;

    iput-object v0, v1, Lcom/yandex/metrica/c$a$e;->c:[Lcom/yandex/metrica/c$a$j;

    .line 323
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 324
    invoke-static {p4}, Lcom/yandex/metrica/impl/al;->b(Ljava/lang/String;)Lcom/yandex/metrica/c$a$i;

    move-result-object v0

    iput-object v0, v1, Lcom/yandex/metrica/c$a$e;->f:Lcom/yandex/metrica/c$a$i;

    .line 327
    :cond_3
    return-object v1
.end method

.method public static a(Ljava/lang/String;ILcom/yandex/metrica/c$b;)Lcom/yandex/metrica/c$a$g$b;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/yandex/metrica/c$a$g$b;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$g$b;-><init>()V

    .line 183
    iput-object p2, v0, Lcom/yandex/metrica/c$a$g$b;->b:Lcom/yandex/metrica/c$b;

    .line 184
    iput-object p0, v0, Lcom/yandex/metrica/c$a$g$b;->c:Ljava/lang/String;

    .line 185
    iput p1, v0, Lcom/yandex/metrica/c$a$g$b;->d:I

    .line 187
    return-object v0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/dt;)Lcom/yandex/metrica/c$a$h;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/yandex/metrica/c$a$h;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$h;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dt;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dt;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$h;->b:I

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dt;->b()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dt;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$h;->c:I

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dt;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dt;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$h;->d:Ljava/lang/String;

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dt;->c()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yandex/metrica/c$a$h;->e:Z

    .line 91
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dt;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dt;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$h;->f:Ljava/lang/String;

    .line 94
    :cond_3
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/c$a$j;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$j;-><init>()V

    .line 125
    const-string v1, "mac"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$j;->b:Ljava/lang/String;

    .line 126
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$j;->c:I

    .line 127
    const-string v1, "ssid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$j;->d:Ljava/lang/String;

    .line 128
    const-string v1, "is_connected"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/yandex/metrica/c$a$j;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    new-instance v0, Lcom/yandex/metrica/c$a$j;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$j;-><init>()V

    .line 132
    const-string v1, "mac"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$j;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentValues;)Lcom/yandex/metrica/c$b;
    .locals 2

    .prologue
    .line 73
    const-string v0, "start_time"

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "server_time_offset"

    .line 75
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/al;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$b;
    .locals 6

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1164
    new-instance v1, Lcom/yandex/metrica/c$b;

    invoke-direct {v1}, Lcom/yandex/metrica/c$b;-><init>()V

    .line 1165
    iput-wide v2, v1, Lcom/yandex/metrica/c$b;->b:J

    .line 2044
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 2045
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 2047
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 1166
    iput v0, v1, Lcom/yandex/metrica/c$b;->c:I

    .line 172
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/yandex/metrica/c$b;->d:J

    .line 175
    :cond_0
    return-object v1
.end method

.method public static a(I)Lcom/yandex/metrica/impl/ob/bi;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/yandex/metrica/impl/al;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bi;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/c$a$j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ge v1, v3, :cond_0

    .line 108
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/al;->a(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$j;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public static a(Landroid/content/Context;)[Lcom/yandex/metrica/c$a$f;
    .locals 6

    .prologue
    .line 369
    invoke-static {p0}, Lcom/yandex/metrica/impl/bi;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bi;->b()Ljava/util/List;

    move-result-object v3

    .line 370
    invoke-static {v3}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/yandex/metrica/c$a$f;

    .line 373
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 374
    new-instance v4, Lcom/yandex/metrica/c$a$f;

    invoke-direct {v4}, Lcom/yandex/metrica/c$a$f;-><init>()V

    .line 375
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/bi$a;

    .line 376
    iget-object v5, v0, Lcom/yandex/metrica/impl/bi$a;->a:Ljava/lang/String;

    iput-object v5, v4, Lcom/yandex/metrica/c$a$f;->b:Ljava/lang/String;

    .line 377
    iget-object v0, v0, Lcom/yandex/metrica/impl/bi$a;->b:Ljava/lang/String;

    iput-object v0, v4, Lcom/yandex/metrica/c$a$f;->c:Ljava/lang/String;

    .line 378
    aput-object v4, v2, v1

    .line 373
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 382
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static b(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$b;
    .locals 3

    .prologue
    .line 222
    new-instance v0, Lcom/yandex/metrica/c$a$b;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$b;-><init>()V

    .line 224
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 226
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 227
    iput v1, v0, Lcom/yandex/metrica/c$a$b;->c:I

    .line 230
    :cond_0
    const-string v1, "cell_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    const-string v1, "cell_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$b;->b:I

    .line 233
    :cond_1
    const-string v1, "lac"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    const-string v1, "lac"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$b;->d:I

    .line 236
    :cond_2
    const-string v1, "country_code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    const-string v1, "country_code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$b;->e:I

    .line 239
    :cond_3
    const-string v1, "operator_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    const-string v1, "operator_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$b;->f:I

    .line 242
    :cond_4
    const-string v1, "operator_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    const-string v1, "operator_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$b;->g:Ljava/lang/String;

    .line 245
    :cond_5
    const-string v1, "is_connected"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 246
    const-string v1, "is_connected"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/yandex/metrica/c$a$b;->h:Z

    .line 248
    :cond_6
    const-string v1, "cell_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$b;->i:I

    .line 249
    const-string v1, "pci"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 250
    const-string v1, "pci"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$b;->j:I

    .line 252
    :cond_7
    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/yandex/metrica/c$a$i;
    .locals 4

    .prologue
    .line 139
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/yandex/metrica/c$a$i;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$i;-><init>()V

    .line 142
    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/metrica/c$a$i;->b:Ljava/lang/String;

    .line 143
    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 144
    packed-switch v1, :pswitch_data_0

    .line 160
    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/yandex/metrica/c$a$i;->c:I

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Lcom/yandex/metrica/c$a$i;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)[Lcom/yandex/metrica/c$a$b;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 197
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$b;

    .line 200
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 201
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 202
    if-eqz v3, :cond_0

    .line 203
    invoke-static {v3}, Lcom/yandex/metrica/impl/al;->b(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$b;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yandex/metrica/c$a$b;

    const/4 v2, 0x0

    invoke-static {v1}, Lcom/yandex/metrica/impl/al;->b(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$b;

    move-result-object v1

    aput-object v1, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :cond_1
    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;)Lcom/yandex/metrica/c$a$d;
    .locals 6

    .prologue
    .line 257
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 258
    new-instance v1, Lcom/yandex/metrica/impl/utils/f$a;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/utils/f$a;-><init>(Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/yandex/metrica/c$a$d;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$d;-><init>()V

    .line 264
    const-string v2, "lon"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/metrica/c$a$d;->c:D

    .line 265
    const-string v2, "lat"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/metrica/c$a$d;->b:D

    .line 268
    const-string v2, "altitude"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const-string v2, "altitude"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yandex/metrica/c$a$d;->h:I

    .line 271
    :cond_0
    const-string v2, "direction"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    const-string v2, "direction"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yandex/metrica/c$a$d;->f:I

    .line 274
    :cond_1
    const-string v2, "precision"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    const-string v2, "precision"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yandex/metrica/c$a$d;->e:I

    .line 277
    :cond_2
    const-string v2, "speed"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    const-string v2, "speed"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yandex/metrica/c$a$d;->g:I

    .line 280
    :cond_3
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/yandex/metrica/c$a$d;->d:J

    .line 283
    :cond_4
    const-string v2, "provider"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 284
    const-string v2, "provider"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    const-string v2, "gps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 286
    const/4 v1, 0x1

    iput v1, v0, Lcom/yandex/metrica/c$a$d;->i:I

    .line 297
    :cond_5
    :goto_0
    return-object v0

    .line 287
    :cond_6
    const-string v2, "network"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    const/4 v1, 0x2

    iput v1, v0, Lcom/yandex/metrica/c$a$d;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Lcom/yandex/metrica/c$a$a;
    .locals 3

    .prologue
    .line 332
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    invoke-static {p0}, Lcom/yandex/metrica/impl/utils/m;->a(Ljava/lang/String;)Lcom/yandex/metrica/d;

    move-result-object v1

    .line 335
    new-instance v0, Lcom/yandex/metrica/c$a$a;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$a;-><init>()V

    .line 337
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/metrica/c$a$a;->b:Ljava/lang/String;

    .line 338
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/metrica/c$a$a;->c:Ljava/lang/String;

    .line 341
    :cond_0
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->c()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
