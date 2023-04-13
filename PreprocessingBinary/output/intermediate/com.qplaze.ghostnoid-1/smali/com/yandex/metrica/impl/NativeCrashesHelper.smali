.class Lcom/yandex/metrica/impl/NativeCrashesHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/NativeCrashesHelper$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/NativeCrashesHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    .line 2151
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 2154
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2156
    new-array v0, v3, [Ljava/lang/String;

    .line 2168
    :cond_0
    :goto_0
    return-object v0

    .line 2159
    :cond_1
    new-instance v1, Lcom/yandex/metrica/impl/NativeCrashesHelper$1;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/NativeCrashesHelper$1;-><init>()V

    .line 2167
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 2168
    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Z)Z
    .locals 1

    .prologue
    .line 100
    :try_start_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->logsEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native cancelSetUpNativeUncaughtExceptionHandler()V
.end method

.method private static native logsEnabled(Z)V
.end method

.method private static native setUpNativeUncaughtExceptionHandler(Ljava/lang/String;)V
.end method


# virtual methods
.method declared-synchronized a(Lcom/yandex/metrica/impl/au;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2109
    new-instance v0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;

    invoke-direct {v0, p1, p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;-><init>(Lcom/yandex/metrica/impl/au;Lcom/yandex/metrica/impl/NativeCrashesHelper;)V

    .line 53
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 2059
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2060
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b(Z)Z

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YandexMetricaNativeCrashes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    .line 2063
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->d:Z

    .line 1069
    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->setUpNativeUncaughtExceptionHandler(Ljava/lang/String;)V

    .line 1071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1074
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2085
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2086
    invoke-static {}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->cancelSetUpNativeUncaughtExceptionHandler()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2091
    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method a()Z
    .locals 1

    .prologue
    .line 174
    :try_start_0
    const-string v0, "YandexMetricaNativeModule"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
