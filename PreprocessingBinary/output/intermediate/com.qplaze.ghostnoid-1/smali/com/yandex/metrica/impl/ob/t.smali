.class public Lcom/yandex/metrica/impl/ob/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/u;


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Landroid/os/HandlerThread;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/yandex/metrica/impl/ob/r;

.field private g:Lcom/yandex/metrica/impl/ob/bw;

.field private h:Lcom/yandex/metrica/impl/ob/by;

.field private i:Lcom/yandex/metrica/impl/ob/bu;

.field private j:Lcom/yandex/metrica/impl/ob/bz;

.field private k:Lcom/yandex/metrica/CounterConfiguration;

.field private final l:Lcom/yandex/metrica/impl/aw;

.field private m:Lcom/yandex/metrica/impl/bf;

.field private n:Lcom/yandex/metrica/impl/ob/bk;

.field private o:Lcom/yandex/metrica/impl/ob/v;

.field private p:Lcom/yandex/metrica/impl/a;

.field private q:Lcom/yandex/metrica/impl/ob/q;

.field private r:J

.field private volatile s:Lcom/yandex/metrica/impl/ob/bf;

.field private final t:Lcom/yandex/metrica/impl/utils/i;

.field private u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/q;)V
    .locals 7

    .prologue
    .line 95
    new-instance v6, Lcom/yandex/metrica/impl/aw;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/aw;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/t;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/q;Lcom/yandex/metrica/impl/aw;)V

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/q;Lcom/yandex/metrica/impl/aw;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/t;->a:Z

    .line 58
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/t;->b:Z

    .line 84
    new-instance v0, Lcom/yandex/metrica/impl/utils/i;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/i;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->t:Lcom/yandex/metrica/impl/utils/i;

    .line 429
    new-instance v0, Lcom/yandex/metrica/impl/ob/t$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/t$1;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->u:Ljava/lang/Runnable;

    .line 106
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/aw;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    .line 108
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/t;->f:Lcom/yandex/metrica/impl/ob/r;

    .line 109
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    .line 1168
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/t;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bm;->b(Lcom/yandex/metrica/impl/ob/r;)Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    .line 1186
    new-instance v1, Lcom/yandex/metrica/impl/ob/bw;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/bw;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    .line 1187
    new-instance v1, Lcom/yandex/metrica/impl/ob/bu;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/bu;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->i:Lcom/yandex/metrica/impl/ob/bu;

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    .line 1173
    new-instance v1, Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->b()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/by;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/by;

    .line 1175
    new-instance v1, Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->c()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/bz;-><init>(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->j:Lcom/yandex/metrica/impl/ob/bz;

    .line 1441
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v0

    .line 1442
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/t;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bw;->c()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 1443
    new-instance v1, Lcom/yandex/metrica/impl/ob/cq;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->w()Lcom/yandex/metrica/impl/ob/cr;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/cq;-><init>(Lcom/yandex/metrica/impl/ob/cr;)V

    .line 1444
    new-instance v2, Lcom/yandex/metrica/impl/ob/s;

    invoke-direct {v2, p0, v1}, Lcom/yandex/metrica/impl/ob/s;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cq;)V

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/s;->a()V

    .line 1445
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bw;->s(J)Lcom/yandex/metrica/impl/ob/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bw;->h()V

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/t;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Lcom/yandex/metrica/impl/ob/bk;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/bm;->a(Lcom/yandex/metrica/impl/ob/r;)Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/bk;-><init>(Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/impl/ob/bl;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bk;

    .line 118
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bw;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/t;->r:J

    .line 119
    new-instance v0, Lcom/yandex/metrica/impl/ob/bf;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/bf;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bw;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->s:Lcom/yandex/metrica/impl/ob/bf;

    .line 121
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/t;->q:Lcom/yandex/metrica/impl/ob/q;

    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->q:Lcom/yandex/metrica/impl/ob/q;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/q;->a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bw;)Lcom/yandex/metrica/impl/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    .line 125
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TaskHandler ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->c:Landroid/os/HandlerThread;

    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->d:Landroid/os/Handler;

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/aw;->a(Lcom/yandex/metrica/impl/ob/t;)V

    .line 131
    new-instance v0, Lcom/yandex/metrica/impl/bf;

    invoke-direct {v0, p0, p2}, Lcom/yandex/metrica/impl/bf;-><init>(Lcom/yandex/metrica/impl/ob/t;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->m:Lcom/yandex/metrica/impl/bf;

    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bk;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bk;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/bk;->a(Lcom/yandex/metrica/impl/ob/u;)V

    .line 137
    :cond_3
    new-instance v0, Lcom/yandex/metrica/impl/ob/y;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/y;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 138
    new-instance v1, Lcom/yandex/metrica/impl/ob/ab;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/ab;-><init>(Lcom/yandex/metrica/impl/ob/aa;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->o:Lcom/yandex/metrica/impl/ob/v;

    .line 141
    return-void
.end method

.method private B()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->f:Lcom/yandex/metrica/impl/ob/r;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/r;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;)V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/h;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/a;->b()Lcom/yandex/metrica/impl/a$a;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bk;

    invoke-virtual {v1, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/bk;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;Lcom/yandex/metrica/impl/a$a;)V

    .line 219
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->m:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bf;->b()V

    .line 220
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->j:Lcom/yandex/metrica/impl/ob/bz;

    .line 422
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcom/yandex/metrica/impl/ob/bf;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->s:Lcom/yandex/metrica/impl/ob/bf;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bw;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bw;->h()V

    .line 4326
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4327
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->f:Lcom/yandex/metrica/impl/ob/r;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v1

    .line 4329
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/by;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/by;->h()V

    .line 315
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    .line 224
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/aw;->d(Lcom/yandex/metrica/impl/ob/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/yandex/metrica/impl/h;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->p()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->p()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    const-string v1, "Event received"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/utils/i;->a(Lcom/yandex/metrica/impl/h;Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/aw;->b(Lcom/yandex/metrica/impl/ob/t;)V

    .line 158
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->o:Lcom/yandex/metrica/impl/ob/v;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/v;->a(Lcom/yandex/metrica/impl/h;)Z

    goto :goto_0
.end method

.method public a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;)V
    .locals 1

    .prologue
    .line 209
    .line 4323
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    .line 210
    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;)V

    .line 211
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bw;->h()V

    .line 350
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bz;->c(Z)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->h()V

    .line 418
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bk;->a()J

    move-result-wide v2

    .line 231
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->c()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 232
    :goto_0
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/t;->a:Z

    or-int/2addr v0, v2

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->f()V

    .line 236
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/t;->a:Z

    .line 238
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 231
    goto :goto_0
.end method

.method public b(Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 438
    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/h;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->o:Lcom/yandex/metrica/impl/ob/v;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/v;->a(Lcom/yandex/metrica/impl/h;)Z

    .line 165
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/by;->h()V

    .line 354
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bz;->q(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->h()V

    .line 355
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/t;->a:Z

    .line 427
    return-void
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 241
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/t;->b:Z

    .line 243
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->m:Lcom/yandex/metrica/impl/bf;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 244
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bk;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 246
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/yandex/metrica/impl/h;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->s:Lcom/yandex/metrica/impl/ob/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bf;->e()Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;)V

    .line 193
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->u:Ljava/lang/Runnable;

    sget-wide v2, Lcom/yandex/metrica/impl/ad;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    return-void
.end method

.method public d(Lcom/yandex/metrica/impl/h;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->s:Lcom/yandex/metrica/impl/ob/bf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bf;->b(Lcom/yandex/metrica/impl/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->i:Lcom/yandex/metrica/impl/ob/bu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bu;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2327
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->s:Lcom/yandex/metrica/impl/ob/bf;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bf;->d()Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->s:Lcom/yandex/metrica/impl/ob/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bf;->d()Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;)V

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v0

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->A:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->s:Lcom/yandex/metrica/impl/ob/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bf;->d()Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;)V

    .line 3327
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->s:Lcom/yandex/metrica/impl/ob/bf;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bf;->d()Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;)V

    goto :goto_0
.end method

.method public declared-synchronized e()V
    .locals 1

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->m:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bf;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Lcom/yandex/metrica/impl/h;)V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Z)V

    .line 334
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/t;->d(Lcom/yandex/metrica/impl/h;)V

    .line 335
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->t()V

    .line 336
    return-void
.end method

.method public declared-synchronized f()V
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->m:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Lcom/yandex/metrica/impl/h;)V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/a;->a(Landroid/os/Bundle;)V

    .line 340
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->q:Lcom/yandex/metrica/impl/ob/q;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/a;->b()Lcom/yandex/metrica/impl/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/q;->a(Lcom/yandex/metrica/impl/a$a;Lcom/yandex/metrica/impl/ob/bw;)V

    .line 341
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/yandex/metrica/impl/aw;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->l:Lcom/yandex/metrica/impl/aw;

    return-object v0
.end method

.method public i()Lcom/yandex/metrica/impl/ob/bk;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->n:Lcom/yandex/metrica/impl/ob/bk;

    return-object v0
.end method

.method public j()Lcom/yandex/metrica/CounterConfiguration;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    return-object v0
.end method

.method public k()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->a()Landroid/os/ResultReceiver;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/yandex/metrica/impl/ob/r;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->f:Lcom/yandex/metrica/impl/ob/r;

    return-object v0
.end method

.method public m()Landroid/content/Context;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    return-object v0
.end method

.method public n()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized o()Z
    .locals 1

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/t;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()Lcom/yandex/metrica/impl/utils/i;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->t:Lcom/yandex/metrica/impl/utils/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->k:Lcom/yandex/metrica/CounterConfiguration;

    .line 319
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->t:Lcom/yandex/metrica/impl/utils/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/i;->a()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->t:Lcom/yandex/metrica/impl/utils/i;

    return-object v0
.end method

.method public q()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/a;->a()V

    .line 345
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->q:Lcom/yandex/metrica/impl/ob/q;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->p:Lcom/yandex/metrica/impl/a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/a;->b()Lcom/yandex/metrica/impl/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/q;->b(Lcom/yandex/metrica/impl/a$a;Lcom/yandex/metrica/impl/ob/bw;)V

    .line 346
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/by;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/by;->b()Lcom/yandex/metrica/impl/ob/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/by;->h()V

    .line 363
    return-void
.end method

.method public t()V
    .locals 4

    .prologue
    .line 366
    .line 5029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 366
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/t;->r:J

    .line 367
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/t;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bw;->l(J)Lcom/yandex/metrica/impl/ob/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bw;->h()V

    .line 368
    return-void
.end method

.method public u()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 375
    .line 6029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 5371
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/t;->r:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v2, v0

    .line 375
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->J()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 5371
    goto :goto_0

    :cond_1
    move v0, v1

    .line 375
    goto :goto_1
.end method

.method public v()Lcom/yandex/metrica/impl/ob/bu;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->i:Lcom/yandex/metrica/impl/ob/bu;

    return-object v0
.end method

.method public w()Lcom/yandex/metrica/impl/ob/cr;
    .locals 3

    .prologue
    .line 384
    new-instance v0, Lcom/yandex/metrica/impl/ob/cr;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/t;->f:Lcom/yandex/metrica/impl/ob/r;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/cr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public x()Lcom/yandex/metrica/impl/ob/bz;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->j:Lcom/yandex/metrica/impl/ob/bz;

    return-object v0
.end method

.method public y()Lcom/yandex/metrica/impl/ob/bw;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    return-object v0
.end method

.method public z()Z
    .locals 4

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 6409
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->h:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->a()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v1

    .line 6413
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/t;->g:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bw;->b()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v2

    .line 399
    sget-object v3, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v2, v1, :cond_0

    .line 402
    const/4 v0, 0x1

    .line 405
    :cond_0
    return v0
.end method
