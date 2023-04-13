.class public Lcom/cmcm/utils/ThreadHelper;
.super Ljava/lang/Object;
.source "ThreadHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static mhandler:Landroid/os/Handler;

.field private static final sLock:Ljava/lang/Object;

.field private static sUiThreadHandler:Landroid/os/Handler;

.field private static sWillOverride:Z

.field private static serialUIExcutorPermitted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    const-class v0, Lcom/cmcm/utils/ThreadHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/cmcm/utils/ThreadHelper;->$assertionsDisabled:Z

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmcm/utils/ThreadHelper;->sLock:Ljava/lang/Object;

    .line 23
    sput-boolean v2, Lcom/cmcm/utils/ThreadHelper;->sWillOverride:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/utils/ThreadHelper;->sUiThreadHandler:Landroid/os/Handler;

    .line 28
    sput-boolean v1, Lcom/cmcm/utils/ThreadHelper;->serialUIExcutorPermitted:Z

    return-void

    :cond_0
    move v0, v2

    .line 19
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertOnUiThread()V
    .locals 1

    .prologue
    .line 190
    sget-boolean v0, Lcom/cmcm/utils/ThreadHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_0
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/cmcm/utils/ThreadHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResumeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cmcm/utils/ThreadHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 36
    sget-object v0, Lcom/cmcm/utils/ThreadHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    :cond_0
    sget-object v0, Lcom/cmcm/utils/ThreadHelper;->mhandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/cmcm/utils/ThreadHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmcm/utils/ThreadHelper;->mhandler:Landroid/os/Handler;

    .line 41
    :cond_1
    return-void
.end method

.method public static getUiThreadHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 54
    sget-object v1, Lcom/cmcm/utils/ThreadHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/cmcm/utils/ThreadHelper;->sUiThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 56
    sget-boolean v0, Lcom/cmcm/utils/ThreadHelper;->sWillOverride:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Did not yet override the UI thread"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 59
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmcm/utils/ThreadHelper;->sUiThreadHandler:Landroid/os/Handler;

    .line 61
    :cond_1
    sget-object v0, Lcom/cmcm/utils/ThreadHelper;->sUiThreadHandler:Landroid/os/Handler;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->ensureThreadLocked()V

    .line 45
    sget-object v0, Lcom/cmcm/utils/ThreadHelper;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method

.method public static postDelay(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .prologue
    .line 49
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->ensureThreadLocked()V

    .line 50
    sget-object v0, Lcom/cmcm/utils/ThreadHelper;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method

.method public static postOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;)",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-object p0
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 172
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method public static postOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .prologue
    .line 183
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method

.method public static revokeOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 201
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public static runOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;)",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 131
    :goto_0
    return-object p0

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    goto :goto_0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 152
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 110
    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->runOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    .line 112
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted waiting for callable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static runOnUiThreadBlocking(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 72
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 76
    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    .line 78
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception occured while waiting for runnable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :try_start_0
    invoke-static {p0}, Lcom/cmcm/utils/ThreadHelper;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error occured waiting for callable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static runningOnUiThread()Z
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
