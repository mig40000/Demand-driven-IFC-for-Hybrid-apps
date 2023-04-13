.class public Lcom/yandex/metrica/impl/ob/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/ce;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ce;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/ob/ce;

    .line 48
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 148
    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v3

    move-object v4, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cb;

    .line 152
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->d()Ljava/util/List;

    move-result-object v1

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ca;->c()Lcom/yandex/metrica/impl/ba$a;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/metrica/impl/ba$a;->e:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v0

    .line 153
    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    if-nez v2, :cond_2

    .line 166
    :goto_1
    return-object v3

    .line 161
    :cond_2
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/cb;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/cb;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 163
    :cond_3
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cb;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/cb;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cb;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 92
    const-string v0, "method_carriers_count"

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/cg;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 94
    const/4 v4, 0x0

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cb;

    .line 99
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->b()I

    move-result v3

    .line 100
    if-le v3, v1, :cond_1

    .line 101
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 102
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    if-ne v3, v1, :cond_0

    .line 105
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 110
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->c()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_3
    :goto_1
    return-object v0

    .line 114
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->b()I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 115
    invoke-static {p1, v5}, Lcom/yandex/metrica/impl/ob/cg;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_2
    if-nez v0, :cond_3

    .line 118
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/cg;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 119
    if-nez v0, :cond_5

    .line 120
    invoke-virtual {p0, p1, v5}, Lcom/yandex/metrica/impl/ob/cg;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/cg;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v4

    goto :goto_2
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cb;

    .line 132
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 246
    .line 6022
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p0, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 246
    const-string v1, "multiple_device_ids"

    new-instance v2, Lcom/yandex/metrica/impl/ob/cg$3;

    invoke-direct {v2, p1, p2}, Lcom/yandex/metrica/impl/ob/cg$3;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 256
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 201
    const-string v0, "method_device_id_comparing"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/cg;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 203
    const-string v1, ""

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cb;

    .line 205
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->c()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 208
    goto :goto_0

    .line 209
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/ca;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ca;

    .line 215
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ca;->c()Lcom/yandex/metrica/impl/ba$a;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/metrica/impl/ba$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ca;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5022
    :cond_0
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p0, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 221
    const-string v2, "multiple_device_ids"

    new-instance v3, Lcom/yandex/metrica/impl/ob/cg$1;

    invoke-direct {v3, v1}, Lcom/yandex/metrica/impl/ob/cg$1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v0, v2, v3}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 174
    const-string v0, "method_first_installed"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/cg;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 179
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cb;

    .line 180
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->e()Ljava/lang/Long;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v5

    .line 182
    if-gez v5, :cond_1

    .line 183
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 184
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 185
    goto :goto_0

    .line 186
    :cond_1
    if-nez v5, :cond_0

    .line 187
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 191
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->c()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_1
    return-object v0

    .line 193
    :cond_3
    invoke-static {p1, v3}, Lcom/yandex/metrica/impl/ob/cg;->b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method b(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v3, Lcom/yandex/metrica/impl/ob/cf;

    invoke-direct {v3, p1}, Lcom/yandex/metrica/impl/ob/cf;-><init>(Landroid/content/Context;)V

    .line 1290
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cg;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1292
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1294
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1296
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ba$a;

    .line 1297
    iget-object v2, v0, Lcom/yandex/metrica/impl/ba$a;->d:Landroid/content/pm/ServiceInfo;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/pm/PackageItemInfo;)I

    move-result v2

    .line 1298
    const/16 v7, 0x1d

    if-ge v2, v7, :cond_1

    .line 1299
    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1301
    :cond_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/ob/ce;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ce;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2263
    iget-object v2, v0, Lcom/yandex/metrica/impl/ba$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2264
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/ob/ce;

    invoke-virtual {v7, p1, v2}, Lcom/yandex/metrica/impl/ob/ce;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v7

    .line 2265
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/ob/ce;

    invoke-virtual {v8, p1, v2}, Lcom/yandex/metrica/impl/ob/ce;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v8

    .line 2266
    if-nez v7, :cond_2

    if-nez v8, :cond_2

    move-object v0, v1

    .line 1302
    :goto_1
    if-eqz v0, :cond_0

    .line 1303
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2269
    :cond_2
    new-instance v2, Lcom/yandex/metrica/impl/ob/cc;

    invoke-direct {v2, v0, v8, v7}, Lcom/yandex/metrica/impl/ob/cc;-><init>(Lcom/yandex/metrica/impl/ba$a;Lcom/yandex/metrica/impl/ob/cd;Lcom/yandex/metrica/impl/ob/cd;)V

    move-object v0, v2

    .line 1301
    goto :goto_1

    .line 2274
    :cond_3
    iget-object v2, v0, Lcom/yandex/metrica/impl/ba$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2275
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/ob/ce;

    invoke-virtual {v7, p1, v2}, Lcom/yandex/metrica/impl/ob/ce;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v7

    .line 2276
    if-eqz v7, :cond_5

    .line 2277
    invoke-virtual {v7}, Lcom/yandex/metrica/impl/ob/cd;->c()Ljava/lang/String;

    move-result-object v2

    .line 2278
    invoke-static {v2}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2279
    new-instance v2, Lcom/yandex/metrica/impl/ob/ca;

    invoke-direct {v2, v0, v7}, Lcom/yandex/metrica/impl/ob/ca;-><init>(Lcom/yandex/metrica/impl/ba$a;Lcom/yandex/metrica/impl/ob/cd;)V

    move-object v0, v2

    .line 2280
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 2282
    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 2285
    goto :goto_1

    .line 1308
    :cond_6
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ba$a;

    .line 1309
    iget-object v5, v0, Lcom/yandex/metrica/impl/ba$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1310
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/ob/ce;

    invoke-virtual {v6, p1, v5}, Lcom/yandex/metrica/impl/ob/ce;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1311
    invoke-static {v5}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1313
    new-instance v6, Lcom/yandex/metrica/impl/ob/ca;

    new-instance v7, Lcom/yandex/metrica/impl/ob/cd;

    const-wide/16 v8, -0x1

    invoke-direct {v7, v5, v1, v8, v9}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cf;J)V

    invoke-direct {v6, v0, v7}, Lcom/yandex/metrica/impl/ob/ca;-><init>(Lcom/yandex/metrica/impl/ba$a;Lcom/yandex/metrica/impl/ob/cd;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    :cond_8
    const-string v2, ""

    .line 60
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 61
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ca;

    .line 64
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ca;->a()Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/cb;

    .line 66
    if-nez v1, :cond_9

    .line 68
    new-instance v1, Lcom/yandex/metrica/impl/ob/cb;

    invoke-direct {v1, v7, v3}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cf;)V

    .line 69
    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_9
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/cb;->a(Lcom/yandex/metrica/impl/ob/ca;)V

    goto :goto_3

    .line 74
    :cond_a
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 75
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->c()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_4
    return-object v0

    .line 80
    :cond_b
    const-string v0, "Smth wrong when iterate through initial candidates list"

    .line 3231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3233
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4022
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p1, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 3238
    const-string v3, "multiple_device_ids"

    new-instance v4, Lcom/yandex/metrica/impl/ob/cg$2;

    invoke-direct {v4, v1}, Lcom/yandex/metrica/impl/ob/cg$2;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v0, v3, v4}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v2

    .line 82
    goto :goto_4

    .line 83
    :cond_c
    invoke-static {p1, v4}, Lcom/yandex/metrica/impl/ob/cg;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 84
    invoke-direct {p0, p1, v5}, Lcom/yandex/metrica/impl/ob/cg;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_d
    move-object v0, v2

    goto :goto_4
.end method

.method c(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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
    .line 321
    invoke-static {p1}, Lcom/yandex/metrica/impl/ba;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
