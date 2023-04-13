.class public Lcom/yandex/metrica/impl/ob/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ce$c;,
        Lcom/yandex/metrica/impl/ob/ce$a;,
        Lcom/yandex/metrica/impl/ob/ce$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/yandex/metrica/impl/ob/ce$a;

.field private final c:Lcom/yandex/metrica/impl/ob/cg;

.field private d:Lcom/yandex/metrica/impl/ob/cd;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->a:Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/yandex/metrica/impl/ob/ce$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/ce$a;-><init>(Lcom/yandex/metrica/impl/ob/ce;B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->b:Lcom/yandex/metrica/impl/ob/ce$a;

    .line 70
    new-instance v0, Lcom/yandex/metrica/impl/ob/cg;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/cg;-><init>(Lcom/yandex/metrica/impl/ob/ce;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->c:Lcom/yandex/metrica/impl/ob/cg;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ce;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/yandex/metrica/impl/ob/cd;
    .locals 3

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1166
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ce;->h(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/ce;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ce$b;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ce;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    .line 3211
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4022
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p1, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 3212
    const-string v1, "saving_empty_device_id"

    new-instance v2, Lcom/yandex/metrica/impl/ob/ce$c;

    invoke-direct {v2, p1, p2}, Lcom/yandex/metrica/impl/ob/ce$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3213
    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    .line 3215
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ce;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 2064
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ce$b;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ce;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v1}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-static {p0}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 292
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/PackageItemInfo;)I

    move-result v0

    .line 294
    if-lez v0, :cond_0

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_0

    .line 2305
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2306
    const-string v3, "DEVICE_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    invoke-static {v1}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2310
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "content://%s.MetricaContentProvider/DEVICE_ID"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 299
    :cond_1
    return-object v1
.end method

.method private h(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 149
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ce;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :try_start_1
    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/r;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 153
    monitor-exit v3

    .line 154
    if-nez v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 160
    :catch_0
    move-exception v1

    goto :goto_0

    .line 154
    :cond_1
    new-instance v1, Lcom/yandex/metrica/impl/ob/cd;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v1, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lorg/json/JSONObject;J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ce;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce;->c()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    if-nez v0, :cond_4

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ce;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/yandex/metrica/impl/ob/ce;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v2

    .line 230
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/cd;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cd;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->d:Lcom/yandex/metrica/impl/ob/cd;

    .line 232
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cd;->c()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 248
    :goto_0
    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce;->b()Lcom/yandex/metrica/impl/ob/ce$a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/yandex/metrica/impl/ob/ce$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 237
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->d:Lcom/yandex/metrica/impl/ob/cd;

    .line 239
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->c()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce;->b()Lcom/yandex/metrica/impl/ob/ce$a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/yandex/metrica/impl/ob/ce$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce;->b()Lcom/yandex/metrica/impl/ob/ce$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ce$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce;->c()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->c()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;
    .locals 1

    .prologue
    .line 119
    const-string v0, "credentials.dat"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/ce;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ce;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/io/File;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "credentials.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/ce;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/yandex/metrica/impl/ob/ce$a;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->b:Lcom/yandex/metrica/impl/ob/ce$a;

    return-object v0
.end method

.method c()Lcom/yandex/metrica/impl/ob/cd;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->d:Lcom/yandex/metrica/impl/ob/cd;

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ce;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce;->c()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ce;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :try_start_1
    new-instance v0, Lcom/yandex/metrica/impl/ob/cd;

    new-instance v2, Lcom/yandex/metrica/impl/ob/cf;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/cf;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, p2, v2, v4, v5}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cf;J)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->d:Lcom/yandex/metrica/impl/ob/cd;

    .line 191
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->d:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->a()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ce;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    :cond_0
    const-string v2, "credentials.dat"

    .line 1172
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ce;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1173
    :try_start_2
    invoke-static {p1, v2, v0}, Lcom/yandex/metrica/impl/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    :goto_0
    return-void

    .line 1174
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 196
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ce;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    const-string v0, "credentials.dat"

    invoke-static {p1, v0, p2}, Lcom/yandex/metrica/impl/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(I)Z

    move-result v0

    return v0
.end method

.method f()Lcom/yandex/metrica/impl/ob/cg;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->c:Lcom/yandex/metrica/impl/ob/cg;

    return-object v0
.end method

.method f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".MetricaContentProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v6

    .line 278
    :goto_0
    return-object v0

    .line 262
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "content://%s.MetricaContentProvider/DEVICE_ID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 267
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 268
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    const-string v0, "DEVICE_ID"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 276
    :goto_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 276
    :goto_2
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    move-object v0, v6

    .line 277
    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 274
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto :goto_1
.end method
