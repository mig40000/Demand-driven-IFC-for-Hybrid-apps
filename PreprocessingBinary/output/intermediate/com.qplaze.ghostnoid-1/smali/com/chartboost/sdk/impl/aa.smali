.class public final Lcom/chartboost/sdk/impl/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/chartboost/sdk/impl/aa;->a:Ljava/util/concurrent/ExecutorService;

    .line 17
    sput-object v0, Lcom/chartboost/sdk/impl/aa;->b:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/chartboost/sdk/impl/aa;->b:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/chartboost/sdk/impl/aa$1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/aa$1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/aa;->b:Ljava/util/concurrent/ThreadFactory;

    .line 40
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/aa;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 41
    const/4 v0, 0x2

    sget-object v1, Lcom/chartboost/sdk/impl/aa;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/aa;->a:Ljava/util/concurrent/ExecutorService;

    .line 42
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/aa;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static b()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    .line 58
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 59
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 61
    new-instance v3, Lcom/chartboost/sdk/impl/aa$2;

    invoke-direct {v3, v1, v2}, Lcom/chartboost/sdk/impl/aa$2;-><init>(Ljava/util/concurrent/Semaphore;Ljava/util/concurrent/Semaphore;)V

    .line 68
    invoke-static {}, Lcom/chartboost/sdk/impl/aa;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 70
    :goto_0
    if-ge v0, v5, :cond_0

    .line 71
    :try_start_0
    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v2, v5}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/Semaphore;->release(I)V

    throw v0
.end method
