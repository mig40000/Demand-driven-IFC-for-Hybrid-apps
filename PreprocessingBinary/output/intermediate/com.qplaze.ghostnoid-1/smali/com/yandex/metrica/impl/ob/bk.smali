.class public Lcom/yandex/metrica/impl/ob/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bk$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Ljava/util/concurrent/locks/Lock;

.field private final d:Lcom/yandex/metrica/impl/ob/bl;

.field private final e:Lcom/yandex/metrica/impl/ob/bk$a;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/ContentValues;

.field private final i:Landroid/content/Context;

.field private final j:Lcom/yandex/metrica/impl/ob/u;

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/impl/ob/bl;)V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->f:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->g:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    .line 85
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/u;->m()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->i:Landroid/content/Context;

    .line 86
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bk;->j:Lcom/yandex/metrica/impl/ob/u;

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bk;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 90
    new-instance v0, Lcom/yandex/metrica/impl/ob/bk$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/bk$a;-><init>(Lcom/yandex/metrica/impl/ob/bk;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->e:Lcom/yandex/metrica/impl/ob/bk$a;

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->e:Lcom/yandex/metrica/impl/ob/bk$a;

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DatabaseWorker ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/u;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bk$a;->setName(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->e:Lcom/yandex/metrica/impl/ob/bk$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bk$a;->start()V

    .line 94
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bk;->c()V

    .line 95
    return-void
.end method

.method private static a(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 142
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 148
    invoke-static {p0}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 339
    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 342
    const-string v1, "reports"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v9

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 538
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " AND "

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 538
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 542
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 466
    .line 4557
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 4558
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 466
    :goto_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->j:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/u;->p()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    .line 4562
    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4563
    const-string v5, ""

    invoke-static {v4, v5}, Lcom/yandex/metrica/impl/be;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    :cond_0
    return-void

    .line 4558
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bk;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 59
    .line 5417
    if-nez p1, :cond_0

    .line 5430
    :goto_0
    return-void

    .line 5421
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5423
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5424
    const-string v1, "sessions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5429
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bk;Ljava/util/List;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 59
    .line 5434
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5462
    :cond_0
    :goto_0
    return-void

    .line 5439
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5441
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 5443
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 5444
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bk;->c()V

    .line 5447
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5449
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 5450
    const-string v3, "reports"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 5451
    const-string v3, "Event saved to db"

    invoke-direct {p0, v0, v3}, Lcom/yandex/metrica/impl/ob/bk;->a(Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 5460
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5461
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 5454
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 5455
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5460
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5461
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 5460
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5461
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 5460
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 473
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ob/bk;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 472
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 475
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bk;)Z
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bk;->d()Z

    move-result v0

    return v0
.end method

.method private static a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 547
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 549
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 550
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private b()J
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT count() FROM reports"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bk;->a(Landroid/database/Cursor;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 163
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/bk;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bk;->h:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/bk;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/bk;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->g:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 242
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 244
    const-wide/32 v4, 0x500000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 246
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bk;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->k:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 254
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/bk;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->h:Landroid/content/ContentValues;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 645
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->h:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method a(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 259
    .line 261
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/p;->a:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/Integer;

    .line 263
    sget-object v0, Lcom/yandex/metrica/impl/p;->a:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/p$a;

    .line 264
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    move v2, v3

    .line 265
    goto :goto_0

    .line 3029
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 267
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xe

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 268
    const-string v0, "%1$s NOT IN (%2$s) AND (%3$s IN (SELECT %3$s FROM %4$s ORDER BY %5$s, %6$s LIMIT (SELECT count() FROM %4$s) / %7$s ) OR %5$s < %8$s )"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, ","

    .line 269
    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const-string v6, "id"

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const-string v6, "reports"

    aput-object v6, v5, v4

    const/4 v4, 0x4

    const-string v6, "session_id"

    aput-object v6, v5, v4

    const/4 v4, 0x5

    const-string v6, "number"

    aput-object v6, v5, v4

    const/4 v4, 0x6

    const/16 v6, 0xa

    .line 272
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v4

    .line 268
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v2, "reports"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 280
    :goto_1
    return v0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->i:Landroid/content/Context;

    .line 4022
    const-string v3, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {v2, v3}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v2

    .line 277
    const-string v3, "deleteExcessiveReports exception"

    .line 278
    invoke-interface {v2, v3, v0}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method

.method public a([J)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 188
    .line 189
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 191
    :try_start_0
    sget-object v2, Lcom/yandex/metrica/impl/ob/bj;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2212
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2214
    :try_start_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2215
    const-string v2, " SELECT DISTINCT id From sessions order by id asc "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 2216
    :try_start_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2217
    const-string v5, "All sessions in db: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2218
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2219
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 2233
    :catch_0
    move-exception v3

    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2234
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 2235
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 195
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 196
    const-string v2, "sessions"

    sget-object v3, Lcom/yandex/metrica/impl/ob/bj$x;->c:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Lcom/yandex/metrica/impl/bg;->a([J)[Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 205
    :goto_3
    return v0

    .line 2223
    :cond_1
    :try_start_4
    const-string v4, " SELECT DISTINCT session_id From reports order by session_id asc "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v1

    .line 2224
    :try_start_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2225
    const-string v4, "All sessions in reports db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2226
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2227
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 2233
    :catchall_0
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    :goto_5
    :try_start_6
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2234
    invoke-static {v3}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 2235
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 203
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    .line 2233
    :cond_2
    :try_start_7
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2234
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 2235
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 203
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 2233
    :catchall_2
    move-exception v2

    move-object v3, v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_5

    :catchall_3
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v2, v1

    goto/16 :goto_1
.end method

.method public a()J
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 571
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(JLjava/util/Map;)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 374
    .line 376
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 379
    const-string v1, "sessions"

    const/4 v2, 0x0

    const-string v3, "id = ?"

    .line 381
    invoke-static {v3, p3}, Lcom/yandex/metrica/impl/ob/bk;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 382
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, p3}, Lcom/yandex/metrica/impl/ob/bk;->a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 379
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 391
    :goto_0
    return-object v0

    .line 388
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v9

    .line 389
    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/util/Map;)Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 352
    .line 354
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 357
    const-string v1, "sessions"

    const/4 v2, 0x0

    const-string v3, "id >= ?"

    .line 359
    invoke-static {v3, p1}, Lcom/yandex/metrica/impl/ob/bk;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 360
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, p1}, Lcom/yandex/metrica/impl/ob/bk;->a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id ASC"

    const/4 v8, 0x0

    .line 357
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 369
    :goto_0
    return-object v0

    .line 366
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v9

    .line 367
    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/Long;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 484
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 487
    const-string v2, "SELECT DISTINCT report_request_parameters FROM sessions WHERE id >= 0"

    .line 488
    if-eqz p1, :cond_0

    .line 489
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT DISTINCT report_request_parameters FROM sessions WHERE id = %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 492
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 493
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 495
    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 496
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 503
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 506
    :goto_1
    return-object v0

    .line 502
    :cond_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 503
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 502
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 503
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(JII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 285
    if-gtz p4, :cond_0

    .line 320
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 293
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "session_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 295
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "session_type"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 296
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "reports"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    add-int/lit8 v6, p4, -0x1

    .line 298
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 293
    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 302
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->j:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/u;->p()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/i;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    invoke-direct {p0, v3}, Lcom/yandex/metrica/impl/ob/bk;->a(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4326
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 4327
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4328
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4329
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4330
    invoke-static {v1, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 4331
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 318
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 319
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 307
    :goto_3
    :try_start_2
    const-string v4, "reports"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 310
    if-eqz v1, :cond_2

    .line 311
    const-string v3, "Event removed from db"

    invoke-direct {p0, v1, v3}, Lcom/yandex/metrica/impl/ob/bk;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->k:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 318
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 319
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 318
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_4
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 319
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 318
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_3
.end method

.method public a(JLcom/yandex/metrica/impl/ob/bi;)V
    .locals 7

    .prologue
    .line 113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    const-string v1, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string v1, "start_time"

    .line 2029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const-string v1, "server_time_offset"

    invoke-static {}, Lcom/yandex/metrica/impl/utils/l;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string v1, "type"

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/bi;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    new-instance v1, Lcom/yandex/metrica/impl/k;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/k;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->j:Lcom/yandex/metrica/impl/ob/u;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/ob/u;)Lcom/yandex/metrica/impl/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/k;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/k;->a()V

    .line 122
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bk;->a(Landroid/content/ContentValues;)V

    .line 123
    return-void
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bk;->h:Landroid/content/ContentValues;

    .line 170
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->e:Lcom/yandex/metrica/impl/ob/bk$a;

    monitor-enter v1

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->e:Lcom/yandex/metrica/impl/ob/bk$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 170
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 174
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;Lcom/yandex/metrica/impl/a$a;)V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 127
    const-string v1, "number"

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bg;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    const-string v1, "time"

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bg;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const-string v1, "session_id"

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bg;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    const-string v1, "session_type"

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bg;->b()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bi;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    new-instance v1, Lcom/yandex/metrica/impl/k;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/k;-><init>(Landroid/content/Context;)V

    .line 133
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->j:Lcom/yandex/metrica/impl/ob/u;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/ob/u;)Lcom/yandex/metrica/impl/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/k;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/k;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/a$a;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bk;->b(Landroid/content/ContentValues;)V

    .line 138
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/u;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->e:Lcom/yandex/metrica/impl/ob/bk$a;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bk$a;->a(Lcom/yandex/metrica/impl/ob/u;)V

    .line 99
    return-void
.end method

.method public b(JLcom/yandex/metrica/impl/ob/bi;)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 396
    .line 398
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 401
    const-string v1, "reports"

    const/4 v2, 0x0

    const-string v3, "session_id = ? AND session_type = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 404
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/bi;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "number ASC"

    const/4 v8, 0x0

    .line 401
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 413
    :goto_0
    return-object v0

    .line 410
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v9

    .line 411
    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->e:Lcom/yandex/metrica/impl/ob/bk$a;

    monitor-enter v1

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->e:Lcom/yandex/metrica/impl/ob/bk$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 180
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 184
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public c(JLcom/yandex/metrica/impl/ob/bi;)Landroid/content/ContentValues;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 510
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 512
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 515
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk;->d:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 517
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT report_request_parameters FROM sessions WHERE id = %s AND type = %s ORDER BY id DESC LIMIT 1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/bi;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 518
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 519
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 521
    invoke-static {v2, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 527
    :goto_0
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 528
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 531
    :goto_1
    return-object v0

    .line 527
    :catch_0
    move-exception v2

    :goto_2
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 528
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    .line 529
    goto :goto_1

    .line 527
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 528
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 527
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 636
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->e:Lcom/yandex/metrica/impl/ob/bk$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bk$a;->a()V

    .line 638
    return-void
.end method
