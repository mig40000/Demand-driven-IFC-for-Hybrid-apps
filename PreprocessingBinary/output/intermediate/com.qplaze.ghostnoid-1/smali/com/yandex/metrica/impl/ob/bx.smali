.class public abstract Lcom/yandex/metrica/impl/ob/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bn;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/yandex/metrica/impl/ob/bx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bn;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/bx;-><init>(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    .line 31
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bx;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bx;->f()V

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/bx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/bx;",
            ">(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bn;->b(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/bn;

    .line 62
    monitor-exit p0

    return-object p0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/bx;",
            ">(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bn;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bn;

    .line 55
    monitor-exit p0

    return-object p0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/bx;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bn;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bn;

    .line 48
    monitor-exit p0

    return-object p0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/bx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/bx;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bn;->b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/bn;

    .line 69
    monitor-exit p0

    return-object p0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bn;->b()V

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected r(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cz;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bx;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected s(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/bx;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bn;

    .line 76
    monitor-exit p0

    return-object p0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
