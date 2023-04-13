.class public abstract Lcom/yandex/metrica/impl/ob/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bd$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/yandex/metrica/impl/ob/t;

.field protected b:Lcom/yandex/metrica/impl/ob/bh;

.field protected c:J

.field protected d:J

.field protected e:Ljava/util/concurrent/atomic/AtomicLong;

.field private f:Z

.field private volatile g:Lcom/yandex/metrica/impl/ob/bd$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bh;)V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/t;

    .line 42
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/bd;->d:J

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/bd;->c:J

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->e(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bh;->b(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/bd;->f:Z

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/bd;->d:J

    .line 50
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->d(J)Lcom/yandex/metrica/impl/ob/bh;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bh;->a()V

    .line 52
    return-void
.end method

.method private l()Lcom/yandex/metrica/impl/ob/bd$a;
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->g:Lcom/yandex/metrica/impl/ob/bd$a;

    if-nez v0, :cond_1

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->g:Lcom/yandex/metrica/impl/ob/bd$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->i()Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bd;->c()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bd;->a()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/yandex/metrica/impl/ob/bk;->c(JLcom/yandex/metrica/impl/ob/bi;)Landroid/content/ContentValues;

    move-result-object v0

    .line 148
    const-string v1, "report_request_parameters"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/yandex/metrica/impl/ob/bd$a;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bd$a;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->g:Lcom/yandex/metrica/impl/ob/bd$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->g:Lcom/yandex/metrica/impl/ob/bd$a;

    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Lcom/yandex/metrica/impl/ob/bi;
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/bd;->f:Z

    if-eq v0, p1, :cond_0

    .line 137
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/bd;->f:Z

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/bd;->f:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bh;->a(Z)Lcom/yandex/metrica/impl/ob/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bh;->a()V

    .line 140
    :cond_0
    return-void
.end method

.method protected abstract b()I
.end method

.method c()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/bd;->c:J

    return-wide v0
.end method

.method declared-synchronized d()V
    .locals 6

    .prologue
    .line 63
    monitor-enter p0

    .line 1029
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 63
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/bd;->c:J

    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/bd;->d:J

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->g:Lcom/yandex/metrica/impl/ob/bd$a;

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/bd;->c:J

    .line 69
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->i(J)Lcom/yandex/metrica/impl/ob/bh;

    move-result-object v0

    .line 1051
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 70
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->h(J)Lcom/yandex/metrica/impl/ob/bh;

    move-result-object v0

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/bd;->d:J

    .line 71
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->d(J)Lcom/yandex/metrica/impl/ob/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->f(J)Lcom/yandex/metrica/impl/ob/bh;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bh;->a()V

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->i()Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v0

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/bd;->c:J

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bd;->a()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/yandex/metrica/impl/ob/bk;->a(JLcom/yandex/metrica/impl/ob/bi;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bd;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e()J
    .locals 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->g(J)J

    move-result-wide v0

    .line 84
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/bd;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method f()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/bd;->c:J

    cmp-long v2, v2, v8

    if-ltz v2, :cond_1

    .line 1105
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    invoke-virtual {v2, v8, v9}, Lcom/yandex/metrica/impl/ob/bh;->g(J)J

    move-result-wide v2

    .line 2051
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 1106
    sub-long v2, v4, v2

    .line 1107
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bd;->g()J

    move-result-wide v4

    .line 1112
    cmp-long v6, v2, v8

    if-ltz v6, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bd;->b()I

    move-result v6

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    sget-wide v2, Lcom/yandex/metrica/impl/ob/be;->a:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_2

    :cond_0
    move v2, v0

    .line 88
    :goto_0
    if-nez v2, :cond_1

    .line 2092
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bd;->l()Lcom/yandex/metrica/impl/ob/bd$a;

    move-result-object v2

    .line 2093
    if-eqz v2, :cond_4

    .line 2094
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/aw;

    move-result-object v3

    .line 2095
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/bd$a;->a(Lcom/yandex/metrica/impl/aw;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    .line 88
    :goto_1
    if-eqz v2, :cond_5

    :cond_1
    move v2, v0

    :goto_2
    if-nez v2, :cond_6

    :goto_3
    return v0

    :cond_2
    move v2, v1

    .line 1113
    goto :goto_0

    :cond_3
    move v2, v1

    .line 2095
    goto :goto_1

    :cond_4
    move v2, v1

    .line 2097
    goto :goto_1

    :cond_5
    move v2, v1

    .line 88
    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method g()J
    .locals 6

    .prologue
    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/bd;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized h()V
    .locals 4

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    const-wide/32 v2, -0x80000000

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->h(J)Lcom/yandex/metrica/impl/ob/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bh;->a()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->g:Lcom/yandex/metrica/impl/ob/bd$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method i()V
    .locals 6

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    .line 3051
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 122
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bh;->h(J)Lcom/yandex/metrica/impl/ob/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bh;->a()V

    .line 123
    return-void
.end method

.method j()J
    .locals 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 127
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/bh;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/yandex/metrica/impl/ob/bh;->f(J)Lcom/yandex/metrica/impl/ob/bh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bh;->a()V

    .line 128
    return-wide v0
.end method

.method k()Z
    .locals 4

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/bd;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bd;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
