.class public final Lcom/yandex/metrica/impl/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ba$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/pm/PackageItemInfo;)I
    .locals 3

    .prologue
    .line 218
    const/4 v0, -0x1

    .line 219
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 221
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "metrica:api:level"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 227
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 147
    .line 151
    const/16 v0, 0x8

    :try_start_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 153
    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 162
    :goto_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 163
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 164
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 174
    :cond_0
    :goto_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 156
    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    .line 171
    :catch_1
    move-exception v4

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "metrica://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yandex/metrica/IMetricaService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1242
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 214
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ba$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 109
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-static {p0}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 113
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2135
    iget-boolean v0, v11, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-nez v0, :cond_1

    move v0, v6

    .line 2136
    :goto_1
    iget-boolean v2, v11, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v2, :cond_2

    move v2, v6

    :goto_2
    or-int/2addr v2, v0

    .line 2137
    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    :goto_3
    or-int/2addr v0, v2

    .line 116
    if-nez v0, :cond_0

    .line 120
    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 121
    invoke-static {v8, v0}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)J

    move-result-wide v4

    .line 123
    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2190
    const-string v2, "android.permission.INTERNET"

    invoke-static {v8, v0, v2}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-static {v11}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/PackageItemInfo;)I

    move-result v3

    .line 3179
    shl-int/lit8 v2, v3, 0x5

    .line 3180
    iget-object v0, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3194
    const-string v12, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v8, v0, v12}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3180
    if-eqz v0, :cond_4

    move v0, v6

    :goto_4
    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v2, v0

    .line 3181
    iget-object v0, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3198
    const-string v12, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v8, v0, v12}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3181
    if-eqz v0, :cond_5

    move v0, v6

    :goto_5
    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    .line 3182
    iget-object v0, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3210
    const-string v12, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v8, v0, v12}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3182
    if-eqz v0, :cond_6

    move v0, v6

    :goto_6
    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    .line 3183
    iget-object v0, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 4202
    const-string v12, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v8, v0, v12}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3183
    if-eqz v0, :cond_7

    move v0, v6

    :goto_7
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 3184
    iget-object v0, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 4206
    const-string v11, "android.permission.READ_PHONE_STATE"

    invoke-static {v8, v0, v11}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3184
    if-eqz v0, :cond_8

    move v0, v6

    :goto_8
    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 127
    new-instance v0, Lcom/yandex/metrica/impl/ba$a;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ba$a;-><init>(Landroid/content/pm/ServiceInfo;IIJ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    move v0, v7

    .line 2135
    goto :goto_1

    :cond_2
    move v2, v7

    .line 2136
    goto :goto_2

    :cond_3
    move v0, v7

    .line 2137
    goto :goto_3

    :cond_4
    move v0, v7

    .line 3180
    goto :goto_4

    :cond_5
    move v0, v7

    .line 3181
    goto :goto_5

    :cond_6
    move v0, v7

    .line 3182
    goto :goto_6

    :cond_7
    move v0, v7

    .line 3183
    goto :goto_7

    :cond_8
    move v0, v7

    .line 3184
    goto :goto_8

    .line 130
    :cond_9
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 131
    return-object v9
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 231
    invoke-static {p0}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/metrica/impl/ba;->e(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    .line 5102
    invoke-static {p0}, Lcom/yandex/metrica/impl/ba;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 5103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ba$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ba$a;->d:Landroid/content/pm/ServiceInfo;

    .line 5104
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 251
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 252
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 253
    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method
