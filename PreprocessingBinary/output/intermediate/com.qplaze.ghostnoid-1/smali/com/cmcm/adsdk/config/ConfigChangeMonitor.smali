.class public Lcom/cmcm/adsdk/config/ConfigChangeMonitor;
.super Ljava/lang/Object;
.source "ConfigChangeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/config/ConfigChangeMonitor$1;,
        Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;
    }
.end annotation


# static fields
.field private static final ALARM_RECEIVER_ACTION:Ljava/lang/String; = "com.cmcm.adsdk.ConfigMonitor_Action"

.field private static final DEFAULT_INTERVAL:J = 0x6ddd00L

.field private static final TAG:Ljava/lang/String; = "ConfigChangeMonitor"

.field private static sInstance:Lcom/cmcm/adsdk/config/ConfigChangeMonitor;


# instance fields
.field private mAlarmPendingItent:Landroid/app/PendingIntent;

.field private mAlarmReceiver:Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsStart:Z

.field private mMid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->sInstance:Lcom/cmcm/adsdk/config/ConfigChangeMonitor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mIsStart:Z

    .line 30
    iput-object p1, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/cmcm/adsdk/config/ConfigChangeMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v1, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->sInstance:Lcom/cmcm/adsdk/config/ConfigChangeMonitor;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->sInstance:Lcom/cmcm/adsdk/config/ConfigChangeMonitor;

    .line 37
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->sInstance:Lcom/cmcm/adsdk/config/ConfigChangeMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized start(Ljava/lang/String;)V
    .locals 7
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const-wide/32 v4, 0x6ddd00

    .line 41
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mIsStart:Z

    if-eqz v0, :cond_1

    .line 42
    const-string v0, "ConfigChangeMonitor"

    const-string v1, "has start monitor, avoid repeat monitor ..."

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_1
    :try_start_1
    const-string v0, "ConfigChangeMonitor"

    const-string v1, "start monitor..."

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mMid:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mIsStart:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmReceiver:Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;-><init>(Lcom/cmcm/adsdk/config/ConfigChangeMonitor;Lcom/cmcm/adsdk/config/ConfigChangeMonitor$1;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmReceiver:Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;

    .line 52
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    const-string v1, "com.cmcm.adsdk.ConfigMonitor_Action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmReceiver:Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    const-string v1, "com.cmcm.adsdk.ConfigMonitor_Action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmPendingItent:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmPendingItent:Landroid/app/PendingIntent;

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 63
    const/4 v1, 0x1

    const-wide/32 v4, 0x6ddd00

    iget-object v6, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmPendingItent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :try_start_3
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigChangeMonitor"

    const-string v1, "stop monitor..."

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 76
    iget-object v1, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmPendingItent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmPendingItent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmPendingItent:Landroid/app/PendingIntent;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmReceiver:Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmReceiver:Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mAlarmReceiver:Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor;->mIsStart:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    :try_start_3
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
