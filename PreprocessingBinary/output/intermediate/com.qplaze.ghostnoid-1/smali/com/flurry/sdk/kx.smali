.class public abstract Lcom/flurry/sdk/kx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReportInfo:",
        "Lcom/flurry/sdk/kw;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field public static b:J


# instance fields
.field public c:Z

.field public d:J

.field private final e:I

.field private final f:Lcom/flurry/sdk/kf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kf",
            "<",
            "Ljava/util/List",
            "<TReportInfo;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TReportInfo;>;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/lang/Runnable;

.field private final j:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/jq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/flurry/sdk/kx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/kx;->a:Ljava/lang/String;

    .line 24
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/flurry/sdk/kx;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const v0, 0x7fffffff

    iput v0, p0, Lcom/flurry/sdk/kx;->e:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kx;->g:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/flurry/sdk/kx$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kx$1;-><init>(Lcom/flurry/sdk/kx;)V

    iput-object v0, p0, Lcom/flurry/sdk/kx;->i:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/flurry/sdk/kx$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kx$2;-><init>(Lcom/flurry/sdk/kx;)V

    iput-object v0, p0, Lcom/flurry/sdk/kx;->j:Lcom/flurry/sdk/kh;

    .line 53
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/kx;->j:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 55
    invoke-virtual {p0}, Lcom/flurry/sdk/kx;->a()Lcom/flurry/sdk/kf;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kx;->f:Lcom/flurry/sdk/kf;

    .line 57
    sget-wide v0, Lcom/flurry/sdk/kx;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kx;->d:J

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/kx;->h:I

    .line 61
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kx$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kx$3;-><init>(Lcom/flurry/sdk/kx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/kx;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/kx;->b()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/kx;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/kx;->g:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/kx;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/flurry/sdk/kx;->h:I

    if-ltz v0, :cond_1

    .line 89
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/kx;->a:Ljava/lang/String;

    const-string v2, "Transmit is in progress"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/kx;->d()V

    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/kx;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    sget-wide v0, Lcom/flurry/sdk/kx;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kx;->d:J

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/kx;->h:I

    goto :goto_0

    .line 102
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/kx;->h:I

    .line 103
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kx$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kx$4;-><init>(Lcom/flurry/sdk/kx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/kx;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/kx;->e()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 6

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kx;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kw;

    .line 1026
    iget-boolean v2, v0, Lcom/flurry/sdk/kw;->o:Z

    .line 116
    if-eqz v2, :cond_1

    .line 117
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/kx;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Url transmitted - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1042
    iget-object v5, v0, Lcom/flurry/sdk/kw;->q:Ljava/lang/String;

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2034
    iget v0, v0, Lcom/flurry/sdk/kw;->p:I

    .line 119
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3034
    :cond_1
    :try_start_1
    iget v2, v0, Lcom/flurry/sdk/kw;->p:I

    .line 121
    invoke-virtual {v0}, Lcom/flurry/sdk/kw;->a()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 122
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/kx;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exceeded max no of attempts - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3042
    iget-object v5, v0, Lcom/flurry/sdk/kw;->q:Ljava/lang/String;

    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4034
    iget v0, v0, Lcom/flurry/sdk/kw;->p:I

    .line 124
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5018
    iget-wide v4, v0, Lcom/flurry/sdk/kw;->n:J

    .line 126
    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 5034
    iget v2, v0, Lcom/flurry/sdk/kw;->p:I

    .line 127
    if-lez v2, :cond_0

    .line 129
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/kx;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expired: Time expired - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5042
    iget-object v5, v0, Lcom/flurry/sdk/kw;->q:Ljava/lang/String;

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6034
    iget v0, v0, Lcom/flurry/sdk/kw;->p:I

    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 135
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized e()V
    .locals 4

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ly;->b()V

    .line 140
    const/4 v1, 0x0

    .line 143
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 6101
    iget-boolean v0, v0, Lcom/flurry/sdk/jr;->b:Z

    .line 143
    if-eqz v0, :cond_1

    .line 144
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/kx;->h:I

    iget-object v2, p0, Lcom/flurry/sdk/kx;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 145
    iget-object v0, p0, Lcom/flurry/sdk/kx;->g:Ljava/util/List;

    iget v2, p0, Lcom/flurry/sdk/kx;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/kx;->h:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kw;

    .line 7026
    iget-boolean v2, v0, Lcom/flurry/sdk/kw;->o:Z

    .line 146
    if-nez v2, :cond_0

    .line 155
    :goto_0
    if-nez v0, :cond_3

    .line 156
    invoke-direct {p0}, Lcom/flurry/sdk/kx;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_1
    monitor-exit p0

    return-void

    .line 152
    :cond_1
    const/4 v0, 0x3

    :try_start_1
    sget-object v2, Lcom/flurry/sdk/kx;->a:Ljava/lang/String;

    const-string v3, "Network is not available, aborting transmission"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/kw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 6

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/kx;->d()V

    .line 165
    iget-object v0, p0, Lcom/flurry/sdk/kx;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kx;->b(Ljava/util/List;)V

    .line 167
    iget-boolean v0, p0, Lcom/flurry/sdk/kx;->c:Z

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/kx;->a:Ljava/lang/String;

    const-string v2, "Reporter paused"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-wide v0, Lcom/flurry/sdk/kx;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kx;->d:J

    .line 186
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/kx;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 171
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/kx;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/kx;->a:Ljava/lang/String;

    const-string v2, "All reports sent successfully"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-wide v0, Lcom/flurry/sdk/kx;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kx;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_1
    :try_start_2
    iget-wide v0, p0, Lcom/flurry/sdk/kx;->d:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/kx;->d:J

    .line 179
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/kx;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "One or more reports failed to send, backing off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/flurry/sdk/kx;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/kx;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/flurry/sdk/kx;->d:J

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/flurry/sdk/kf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/kf",
            "<",
            "Ljava/util/List",
            "<TReportInfo;>;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/kw;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TReportInfo;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ly;->b()V

    .line 75
    iget-object v0, p0, Lcom/flurry/sdk/kx;->f:Lcom/flurry/sdk/kf;

    invoke-virtual {v0}, Lcom/flurry/sdk/kf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/kw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    if-nez p1, :cond_0

    .line 243
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kx;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kx$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kx$6;-><init>(Lcom/flurry/sdk/kx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TReportInfo;>;)V"
        }
    .end annotation

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ly;->b()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    iget-object v1, p0, Lcom/flurry/sdk/kx;->f:Lcom/flurry/sdk/kf;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/kx;->c:Z

    .line 221
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kx$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kx$5;-><init>(Lcom/flurry/sdk/kx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public final declared-synchronized c(Lcom/flurry/sdk/kw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 246
    monitor-enter p0

    .line 7030
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/flurry/sdk/kw;->o:Z

    .line 248
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kx$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kx$7;-><init>(Lcom/flurry/sdk/kx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Lcom/flurry/sdk/kw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/sdk/kw;->a_()V

    .line 259
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kx$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kx$8;-><init>(Lcom/flurry/sdk/kx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
