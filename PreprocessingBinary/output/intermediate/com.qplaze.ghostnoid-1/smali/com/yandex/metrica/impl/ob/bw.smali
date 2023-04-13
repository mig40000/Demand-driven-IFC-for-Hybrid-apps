.class public Lcom/yandex/metrica/impl/ob/bw;
.super Lcom/yandex/metrica/impl/ob/bx;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/cz;

.field private static final b:Lcom/yandex/metrica/impl/ob/cz;

.field private static final c:Lcom/yandex/metrica/impl/ob/cz;

.field private static final d:Lcom/yandex/metrica/impl/ob/cz;

.field private static final e:Lcom/yandex/metrica/impl/ob/cz;

.field private static final f:Lcom/yandex/metrica/impl/ob/cz;

.field private static final g:Lcom/yandex/metrica/impl/ob/cz;

.field private static final h:Lcom/yandex/metrica/impl/ob/cz;

.field private static final i:Lcom/yandex/metrica/impl/ob/cz;

.field private static final j:Lcom/yandex/metrica/impl/ob/cz;

.field private static final k:Lcom/yandex/metrica/impl/ob/cz;

.field private static final l:Lcom/yandex/metrica/impl/ob/cz;

.field private static final m:Lcom/yandex/metrica/impl/ob/cz;

.field private static final n:Lcom/yandex/metrica/impl/ob/cz;

.field private static final o:Lcom/yandex/metrica/impl/ob/cz;

.field private static final p:Lcom/yandex/metrica/impl/ob/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "SESSION_SLEEP_START"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->a:Lcom/yandex/metrica/impl/ob/cz;

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "SESSION_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->b:Lcom/yandex/metrica/impl/ob/cz;

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "SESSION_COUNTER_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->c:Lcom/yandex/metrica/impl/ob/cz;

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "SESSION_INIT_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->d:Lcom/yandex/metrica/impl/ob/cz;

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "SESSION_ALIVE_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->e:Lcom/yandex/metrica/impl/ob/cz;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "BG_SESSION_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->f:Lcom/yandex/metrica/impl/ob/cz;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "BG_SESSION_SLEEP_START"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->g:Lcom/yandex/metrica/impl/ob/cz;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "BG_SESSION_COUNTER_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->h:Lcom/yandex/metrica/impl/ob/cz;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "BG_SESSION_INIT_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->i:Lcom/yandex/metrica/impl/ob/cz;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "BG_SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->j:Lcom/yandex/metrica/impl/ob/cz;

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "COLLECT_INSTALLED_APPS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->k:Lcom/yandex/metrica/impl/ob/cz;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "IDENTITY_SEND_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->l:Lcom/yandex/metrica/impl/ob/cz;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "USER_INFO"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->m:Lcom/yandex/metrica/impl/ob/cz;

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "APP_ENVIRONMENT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->n:Lcom/yandex/metrica/impl/ob/cz;

    .line 44
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "APP_ENVIRONMENT_REVISION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->o:Lcom/yandex/metrica/impl/ob/cz;

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "LAST_MIGRATION_VERSION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bw;->p:Lcom/yandex/metrica/impl/ob/cz;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bn;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bx;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Lcom/yandex/metrica/impl/a$a;
    .locals 6

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/a$a;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bw;->n:Lcom/yandex/metrica/impl/ob/cz;

    .line 83
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}"

    invoke-virtual {p0, v1, v2}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/impl/ob/bw;->o:Lcom/yandex/metrica/impl/ob/cz;

    .line 84
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/a$a;-><init>(Ljava/lang/String;J)V

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/bw;
    .locals 4

    .prologue
    .line 155
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->k:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/a$a;)Lcom/yandex/metrica/impl/ob/bw;
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->n:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    .line 121
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->o:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcom/yandex/metrica/impl/a$a;->b:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    .line 122
    monitor-exit p0

    .line 123
    return-object p0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->m:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Z
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->e:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(J)J
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->i:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 4

    .prologue
    .line 102
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->k:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v1, v1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->m:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public b(Z)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->e:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public c()J
    .locals 4

    .prologue
    .line 167
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->p:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)J
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->l:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Z)Z
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->j:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d(J)J
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->b:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Z)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->j:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public e(J)J
    .locals 3

    .prologue
    .line 69
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->f:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)J
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(J)J
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->h:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(J)J
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->a:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i(J)J
    .locals 3

    .prologue
    .line 94
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->g:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j(J)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public k(J)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->i:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public l(J)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->l:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public m(J)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->b:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public n(J)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->f:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public o(J)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public p(J)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->h:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public q(J)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->a:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public r(J)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->g:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public s(J)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/yandex/metrica/impl/ob/bw;->p:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method
