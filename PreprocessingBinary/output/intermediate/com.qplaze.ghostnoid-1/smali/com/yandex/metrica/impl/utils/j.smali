.class public Lcom/yandex/metrica/impl/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/utils/j$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private b:Lcom/yandex/metrica/impl/ob/by;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yandex/metrica/impl/utils/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/utils/j;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yandex/metrica/impl/utils/j$a;->a:Lcom/yandex/metrica/impl/utils/j;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .locals 5

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/utils/j;->a:J

    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/j;->b:Lcom/yandex/metrica/impl/ob/by;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/j;->b:Lcom/yandex/metrica/impl/ob/by;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/utils/j;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/by;->a(J)Lcom/yandex/metrica/impl/ob/by;

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/j;->b:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/by;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 39
    :try_start_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->b()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/yandex/metrica/impl/ob/by;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/by;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/utils/j;->b:Lcom/yandex/metrica/impl/ob/by;

    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/j;->b:Lcom/yandex/metrica/impl/ob/by;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/by;->c(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/utils/j;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .locals 2

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/yandex/metrica/impl/utils/j;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
