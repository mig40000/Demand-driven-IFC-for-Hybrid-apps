.class public Lcom/yandex/metrica/impl/ob/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/yandex/metrica/impl/ob/bm;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/bl;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/bn;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private e:Lcom/yandex/metrica/impl/ob/bl;

.field private f:Lcom/yandex/metrica/impl/ob/bn;

.field private g:Lcom/yandex/metrica/impl/ob/bn;

.field private h:Lcom/yandex/metrica/impl/ob/bn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->b:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->c:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/yandex/metrica/impl/ob/bm;->a:Lcom/yandex/metrica/impl/ob/bm;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/yandex/metrica/impl/ob/bm;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/bm;->a:Lcom/yandex/metrica/impl/ob/bm;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/bm;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/bm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bm;->a:Lcom/yandex/metrica/impl/ob/bm;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/bm;->a:Lcom/yandex/metrica/impl/ob/bm;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_0
    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 142
    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 145
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 149
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 153
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/yandex/metrica/impl/ob/bl;
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->e:Lcom/yandex/metrica/impl/ob/bl;

    if-nez v0, :cond_0

    .line 80
    const-string v0, "metrica_data.db"

    invoke-static {}, Lcom/yandex/metrica/impl/ob/bj;->b()Lcom/yandex/metrica/impl/ob/bo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bm;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bo;)Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->e:Lcom/yandex/metrica/impl/ob/bl;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->e:Lcom/yandex/metrica/impl/ob/bl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/r;)Lcom/yandex/metrica/impl/ob/bl;
    .locals 3

    .prologue
    .line 64
    monitor-enter p0

    .line 1157
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "db_metrica_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bl;

    .line 67
    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/yandex/metrica/impl/ob/bj;->a()Lcom/yandex/metrica/impl/ob/bo;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/ob/bm;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bo;)Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bm;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bo;)Lcom/yandex/metrica/impl/ob/bl;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lcom/yandex/metrica/impl/ob/bl;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/yandex/metrica/impl/ob/bl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bo;)V

    return-object v0
.end method

.method public declared-synchronized b()Lcom/yandex/metrica/impl/ob/bn;
    .locals 3

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->f:Lcom/yandex/metrica/impl/ob/bn;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bm;->a()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v1

    const-string v2, "preferences"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Lcom/yandex/metrica/impl/ob/bl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->f:Lcom/yandex/metrica/impl/ob/bn;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->f:Lcom/yandex/metrica/impl/ob/bn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/ob/r;)Lcom/yandex/metrica/impl/ob/bn;
    .locals 4

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bn;

    .line 88
    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/bm;->a(Lcom/yandex/metrica/impl/ob/r;)Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v2

    .line 90
    new-instance v0, Lcom/yandex/metrica/impl/ob/bn;

    const-string v3, "preferences"

    invoke-direct {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Lcom/yandex/metrica/impl/ob/bl;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bm;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lcom/yandex/metrica/impl/ob/bn;
    .locals 3

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->g:Lcom/yandex/metrica/impl/ob/bn;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bm;->a()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v1

    const-string v2, "startup"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Lcom/yandex/metrica/impl/ob/bl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->g:Lcom/yandex/metrica/impl/ob/bn;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->g:Lcom/yandex/metrica/impl/ob/bn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lcom/yandex/metrica/impl/ob/bn;
    .locals 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->h:Lcom/yandex/metrica/impl/ob/bn;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "metrica_client_data.db"

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/yandex/metrica/impl/ob/bs;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bm;->d:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/yandex/metrica/impl/ob/bs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/yandex/metrica/impl/ob/bn;

    const-string v2, "preferences"

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/br;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->h:Lcom/yandex/metrica/impl/ob/bn;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bm;->h:Lcom/yandex/metrica/impl/ob/bn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
