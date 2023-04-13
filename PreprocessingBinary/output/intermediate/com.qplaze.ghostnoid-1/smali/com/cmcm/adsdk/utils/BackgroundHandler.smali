.class public Lcom/cmcm/adsdk/utils/BackgroundHandler;
.super Ljava/lang/Object;
.source "BackgroundHandler.java"


# static fields
.field public static final sBackgroudHandler:Landroid/os/Handler;

.field private static sLooperThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandler"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sLooperThread:Landroid/os/HandlerThread;

    .line 33
    sget-object v0, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sLooperThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sBackgroudHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static varargs executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TT;**>;"
    .local p1, "params":[Ljava/lang/Object;, "[TT;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 39
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getLooper()Landroid/os/Looper;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sLooperThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "BackgroundHandler"

    const-string v1, "sLooperThread has died, renew a HandlerThread instance"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sLooperThread:Landroid/os/HandlerThread;

    .line 51
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandler"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sLooperThread:Landroid/os/HandlerThread;

    .line 55
    sget-object v0, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sLooperThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sLooperThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
