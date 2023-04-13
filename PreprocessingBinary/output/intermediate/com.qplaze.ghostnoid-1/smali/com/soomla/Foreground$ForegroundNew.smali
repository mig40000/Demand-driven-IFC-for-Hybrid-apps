.class Lcom/soomla/Foreground$ForegroundNew;
.super Lcom/soomla/Foreground;
.source "Foreground.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/Foreground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForegroundNew"
.end annotation


# static fields
.field private static final CHECK_DELAY:J = 0x1f4L


# instance fields
.field private check:Ljava/lang/Runnable;

.field private count:I

.field private foreground:Z

.field private handler:Landroid/os/Handler;

.field private paused:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/soomla/Foreground;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcom/soomla/Foreground$ForegroundNew;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/soomla/Foreground$ForegroundNew;->paused:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soomla/Foreground$ForegroundNew;->handler:Landroid/os/Handler;

    .line 85
    iput v1, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    .line 88
    invoke-static {}, Lcom/soomla/SoomlaApp;->instance()Lcom/soomla/SoomlaApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/SoomlaApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/soomla/Foreground$ForegroundNew;)Z
    .locals 1
    .param p0, "x0"    # Lcom/soomla/Foreground$ForegroundNew;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/soomla/Foreground$ForegroundNew;->foreground:Z

    return v0
.end method

.method static synthetic access$102(Lcom/soomla/Foreground$ForegroundNew;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/soomla/Foreground$ForegroundNew;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/soomla/Foreground$ForegroundNew;->foreground:Z

    return p1
.end method

.method static synthetic access$200(Lcom/soomla/Foreground$ForegroundNew;)Z
    .locals 1
    .param p0, "x0"    # Lcom/soomla/Foreground$ForegroundNew;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/soomla/Foreground$ForegroundNew;->paused:Z

    return v0
.end method


# virtual methods
.method public isBackground()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/soomla/Foreground$ForegroundNew;->foreground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/soomla/Foreground$ForegroundNew;->foreground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    iget v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    .line 142
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 158
    iget v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    .line 159
    iget v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/soomla/Foreground$ForegroundNew;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/soomla/Foreground$ForegroundNew;->TAG:Ljava/lang/String;

    const-string v1, "destroyed weirdly"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/events/AppToBackgroundEvent;

    invoke-direct {v1}, Lcom/soomla/events/AppToBackgroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/soomla/Foreground$ForegroundNew;->paused:Z

    .line 122
    iget-object v0, p0, Lcom/soomla/Foreground$ForegroundNew;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/soomla/Foreground$ForegroundNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soomla/Foreground$ForegroundNew;->check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/soomla/Foreground$ForegroundNew;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/soomla/Foreground$ForegroundNew$1;

    invoke-direct {v1, p0}, Lcom/soomla/Foreground$ForegroundNew$1;-><init>(Lcom/soomla/Foreground$ForegroundNew;)V

    iput-object v1, p0, Lcom/soomla/Foreground$ForegroundNew;->check:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/soomla/Foreground$ForegroundNew;->paused:Z

    .line 104
    iget-boolean v2, p0, Lcom/soomla/Foreground$ForegroundNew;->foreground:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 105
    .local v0, "wasBackground":Z
    :cond_0
    iput-boolean v1, p0, Lcom/soomla/Foreground$ForegroundNew;->foreground:Z

    .line 107
    iget-object v1, p0, Lcom/soomla/Foreground$ForegroundNew;->check:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/soomla/Foreground$ForegroundNew;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/soomla/Foreground$ForegroundNew;->check:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    :cond_1
    if-eqz v0, :cond_2

    .line 111
    sget-object v1, Lcom/soomla/Foreground$ForegroundNew;->TAG:Ljava/lang/String;

    const-string v2, "went foreground"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/events/AppToForegroundEvent;

    invoke-direct {v2}, Lcom/soomla/events/AppToForegroundEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_2
    sget-object v1, Lcom/soomla/Foreground$ForegroundNew;->TAG:Ljava/lang/String;

    const-string v2, "still foreground"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 150
    return-void
.end method
