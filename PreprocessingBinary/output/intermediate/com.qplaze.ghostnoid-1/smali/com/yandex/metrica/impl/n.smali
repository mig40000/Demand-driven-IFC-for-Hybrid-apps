.class public Lcom/yandex/metrica/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ac;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/location/Location;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->h:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/e$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {p0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/e$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method private static b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/e$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {p0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/e;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 152
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/n;->k:Z

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-object p1

    .line 1165
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/e;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    move-result-object v3

    .line 1166
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->j()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/yandex/metrica/e$a;->a(Ljava/util/Map;Ljava/lang/Boolean;)Lcom/yandex/metrica/e$a;

    .line 1167
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->d()Lcom/yandex/metrica/a;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Lcom/yandex/metrica/a;)Lcom/yandex/metrica/e$a;

    .line 1168
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getPreloadInfo()Lcom/yandex/metrica/PreloadInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/e$a;

    .line 1169
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 1170
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;

    .line 1172
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 1338
    if-eqz v0, :cond_15

    move v0, v1

    .line 1172
    :goto_1
    if-eqz v0, :cond_1

    .line 1173
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 1175
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 2338
    if-eqz v0, :cond_16

    move v0, v1

    .line 1175
    :goto_2
    if-eqz v0, :cond_2

    .line 1176
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 1178
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->h()Ljava/lang/Integer;

    move-result-object v0

    .line 3338
    if-eqz v0, :cond_17

    move v0, v1

    .line 1178
    :goto_3
    if-eqz v0, :cond_3

    .line 1179
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->d(I)Lcom/yandex/metrica/e$a;

    .line 1181
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->c()Ljava/lang/Integer;

    move-result-object v0

    .line 4338
    if-eqz v0, :cond_18

    move v0, v1

    .line 1181
    :goto_4
    if-eqz v0, :cond_4

    .line 1182
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->b(I)Lcom/yandex/metrica/e$a;

    .line 1184
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->g()Ljava/lang/Integer;

    move-result-object v0

    .line 5338
    if-eqz v0, :cond_19

    move v0, v1

    .line 1184
    :goto_5
    if-eqz v0, :cond_5

    .line 1185
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->c(I)Lcom/yandex/metrica/e$a;

    .line 1187
    :cond_5
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 6338
    if-eqz v0, :cond_1a

    move v0, v1

    .line 1187
    :goto_6
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1188
    invoke-virtual {v3}, Lcom/yandex/metrica/e$a;->a()Lcom/yandex/metrica/e$a;

    .line 1190
    :cond_6
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v0

    .line 7338
    if-eqz v0, :cond_1b

    move v0, v1

    .line 1190
    :goto_7
    if-eqz v0, :cond_7

    .line 1191
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(I)Lcom/yandex/metrica/e$a;

    .line 1193
    :cond_7
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 8338
    if-eqz v0, :cond_1c

    move v0, v1

    .line 1193
    :goto_8
    if-eqz v0, :cond_8

    .line 1194
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Z)Lcom/yandex/metrica/e$a;

    .line 1196
    :cond_8
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 9338
    if-eqz v0, :cond_1d

    move v0, v1

    .line 1196
    :goto_9
    if-eqz v0, :cond_9

    .line 1197
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->b(Z)Lcom/yandex/metrica/e$a;

    .line 1199
    :cond_9
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 10338
    if-eqz v0, :cond_1e

    move v0, v1

    .line 1199
    :goto_a
    if-eqz v0, :cond_a

    .line 1200
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->c(Z)Lcom/yandex/metrica/e$a;

    .line 1202
    :cond_a
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v0

    .line 11338
    if-eqz v0, :cond_1f

    move v0, v1

    .line 1202
    :goto_b
    if-eqz v0, :cond_b

    .line 1203
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->d(Z)Lcom/yandex/metrica/e$a;

    .line 1205
    :cond_b
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 12338
    if-eqz v0, :cond_20

    move v0, v1

    .line 1205
    :goto_c
    if-eqz v0, :cond_c

    .line 1206
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 1208
    :cond_c
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isFirstActivationAsUpdate()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1209
    invoke-virtual {v3, v1}, Lcom/yandex/metrica/e$a;->e(Z)Lcom/yandex/metrica/e$a;

    .line 1211
    :cond_d
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/n;->a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 1212
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getErrorEnvironment()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/n;->b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 13234
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->a()Ljava/lang/Integer;

    move-result-object v4

    .line 13235
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v0

    .line 13267
    if-nez v0, :cond_21

    move v0, v1

    .line 13235
    :goto_d
    if-eqz v0, :cond_e

    .line 13338
    if-eqz v4, :cond_22

    move v0, v1

    .line 13235
    :goto_e
    if-eqz v0, :cond_e

    .line 13236
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(I)Lcom/yandex/metrica/e$a;

    .line 13238
    :cond_e
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->b()Ljava/lang/Boolean;

    move-result-object v4

    .line 13239
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 14267
    if-nez v0, :cond_23

    move v0, v1

    .line 13239
    :goto_f
    if-eqz v0, :cond_f

    .line 14338
    if-eqz v4, :cond_24

    move v0, v1

    .line 13239
    :goto_10
    if-eqz v0, :cond_f

    .line 13240
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Z)Lcom/yandex/metrica/e$a;

    .line 13242
    :cond_f
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->c()Ljava/lang/Boolean;

    move-result-object v4

    .line 13243
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 15267
    if-nez v0, :cond_25

    move v0, v1

    .line 13243
    :goto_11
    if-eqz v0, :cond_10

    .line 15338
    if-eqz v4, :cond_26

    move v0, v1

    .line 13243
    :goto_12
    if-eqz v0, :cond_10

    .line 13244
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->b(Z)Lcom/yandex/metrica/e$a;

    .line 13246
    :cond_10
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->e()Ljava/lang/Boolean;

    move-result-object v4

    .line 13247
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 16267
    if-nez v0, :cond_27

    move v0, v1

    .line 13247
    :goto_13
    if-eqz v0, :cond_11

    .line 16338
    if-eqz v4, :cond_28

    move v0, v1

    .line 13247
    :goto_14
    if-eqz v0, :cond_11

    .line 13248
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->c(Z)Lcom/yandex/metrica/e$a;

    .line 13250
    :cond_11
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->d()Landroid/location/Location;

    move-result-object v4

    .line 13251
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 17267
    if-nez v0, :cond_29

    move v0, v1

    .line 13251
    :goto_15
    if-eqz v0, :cond_12

    .line 17338
    if-eqz v4, :cond_2a

    move v0, v1

    .line 13251
    :goto_16
    if-eqz v0, :cond_12

    .line 13252
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/e$a;->a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;

    .line 13254
    :cond_12
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->g()Ljava/lang/Boolean;

    move-result-object v4

    .line 13255
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v0

    .line 18267
    if-nez v0, :cond_2b

    move v0, v1

    .line 13255
    :goto_17
    if-eqz v0, :cond_13

    .line 18338
    if-eqz v4, :cond_2c

    move v0, v1

    .line 13255
    :goto_18
    if-eqz v0, :cond_13

    .line 13256
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->d(Z)Lcom/yandex/metrica/e$a;

    .line 13258
    :cond_13
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->f()Ljava/lang/String;

    move-result-object v4

    .line 13259
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 19267
    if-nez v0, :cond_2d

    move v0, v1

    .line 13259
    :goto_19
    if-eqz v0, :cond_14

    .line 19338
    if-eqz v4, :cond_2e

    move v0, v1

    .line 13259
    :goto_1a
    if-eqz v0, :cond_14

    .line 13260
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 13262
    :cond_14
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->h:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/n;->a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 13263
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/n;->b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 158
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/n;->k:Z

    .line 20138
    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->a:Ljava/lang/Integer;

    .line 20139
    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->b:Ljava/lang/Boolean;

    .line 20140
    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->c:Ljava/lang/Boolean;

    .line 20141
    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->d:Landroid/location/Location;

    .line 20142
    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->e:Ljava/lang/Boolean;

    .line 20143
    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->f:Ljava/lang/String;

    .line 20144
    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    .line 20145
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 20146
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 20148
    iput-boolean v2, p0, Lcom/yandex/metrica/impl/n;->j:Z

    .line 160
    invoke-virtual {v3}, Lcom/yandex/metrica/e$a;->b()Lcom/yandex/metrica/e;

    move-result-object p1

    goto/16 :goto_0

    :cond_15
    move v0, v2

    .line 1338
    goto/16 :goto_1

    :cond_16
    move v0, v2

    .line 2338
    goto/16 :goto_2

    :cond_17
    move v0, v2

    .line 3338
    goto/16 :goto_3

    :cond_18
    move v0, v2

    .line 4338
    goto/16 :goto_4

    :cond_19
    move v0, v2

    .line 5338
    goto/16 :goto_5

    :cond_1a
    move v0, v2

    .line 6338
    goto/16 :goto_6

    :cond_1b
    move v0, v2

    .line 7338
    goto/16 :goto_7

    :cond_1c
    move v0, v2

    .line 8338
    goto/16 :goto_8

    :cond_1d
    move v0, v2

    .line 9338
    goto/16 :goto_9

    :cond_1e
    move v0, v2

    .line 10338
    goto/16 :goto_a

    :cond_1f
    move v0, v2

    .line 11338
    goto/16 :goto_b

    :cond_20
    move v0, v2

    .line 12338
    goto/16 :goto_c

    :cond_21
    move v0, v2

    .line 13267
    goto/16 :goto_d

    :cond_22
    move v0, v2

    .line 13338
    goto/16 :goto_e

    :cond_23
    move v0, v2

    .line 14267
    goto/16 :goto_f

    :cond_24
    move v0, v2

    .line 14338
    goto/16 :goto_10

    :cond_25
    move v0, v2

    .line 15267
    goto/16 :goto_11

    :cond_26
    move v0, v2

    .line 15338
    goto/16 :goto_12

    :cond_27
    move v0, v2

    .line 16267
    goto/16 :goto_13

    :cond_28
    move v0, v2

    .line 16338
    goto/16 :goto_14

    :cond_29
    move v0, v2

    .line 17267
    goto/16 :goto_15

    :cond_2a
    move v0, v2

    .line 17338
    goto/16 :goto_16

    :cond_2b
    move v0, v2

    .line 18267
    goto/16 :goto_17

    :cond_2c
    move v0, v2

    .line 18338
    goto/16 :goto_18

    :cond_2d
    move v0, v2

    .line 19267
    goto :goto_19

    :cond_2e
    move v0, v2

    .line 19338
    goto :goto_1a
.end method

.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->d:Landroid/location/Location;

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->f:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    .line 85
    return-void
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 94
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->e:Ljava/lang/Boolean;

    .line 95
    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->b:Ljava/lang/Boolean;

    .line 105
    return-void
.end method

.method public d()Landroid/location/Location;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->d:Landroid/location/Location;

    return-object v0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 114
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->c:Ljava/lang/Boolean;

    .line 115
    return-void
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/n;->j:Z

    return v0
.end method

.method public setSessionTimeout(I)V
    .locals 1
    .param p1, "sessionTimeout"    # I

    .prologue
    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->a:Ljava/lang/Integer;

    .line 100
    return-void
.end method
