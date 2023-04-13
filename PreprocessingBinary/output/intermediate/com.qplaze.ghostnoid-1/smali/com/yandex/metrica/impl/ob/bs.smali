.class public Lcom/yandex/metrica/impl/ob/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/br;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Lcom/yandex/metrica/impl/ob/bl;

.field private e:Ljava/nio/channels/FileLock;

.field private f:Ljava/io/RandomAccessFile;

.field private g:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bs;->b:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/bs;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->c:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bs;->c:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->f:Ljava/io/RandomAccessFile;

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->g:Ljava/nio/channels/FileChannel;

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->g:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->e:Ljava/nio/channels/FileLock;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/bl;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bs;->b:Ljava/lang/String;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/bj;->c()Lcom/yandex/metrica/impl/ob/bo;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bo;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->d:Lcom/yandex/metrica/impl/ob/bl;

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 47
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    .line 1284
    if-eqz p1, :cond_0

    .line 1285
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->e:Ljava/nio/channels/FileLock;

    invoke-static {v0}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->f:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->g:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->d:Lcom/yandex/metrica/impl/ob/bl;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->f:Ljava/io/RandomAccessFile;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->e:Ljava/nio/channels/FileLock;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->g:Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
