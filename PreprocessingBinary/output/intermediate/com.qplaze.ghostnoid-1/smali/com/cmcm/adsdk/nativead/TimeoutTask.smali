.class Lcom/cmcm/adsdk/nativead/TimeoutTask;
.super Ljava/util/TimerTask;
.source "TimeoutTask.java"


# instance fields
.field mRun:Ljava/lang/Runnable;

.field mTimeout:Z

.field mTimer:Ljava/util/Timer;

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimer:Ljava/util/Timer;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimeout:Z

    .line 20
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mRun:Ljava/lang/Runnable;

    .line 21
    iput-object p2, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->name:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 26
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeout, to check this load finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimeout:Z

    .line 29
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mRun:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 32
    :cond_0
    return-void
.end method

.method public start(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimeout:Z

    .line 37
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimer:Ljava/util/Timer;

    .line 38
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimer:Ljava/util/Timer;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimeout:Z

    .line 50
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/TimeoutTask;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
