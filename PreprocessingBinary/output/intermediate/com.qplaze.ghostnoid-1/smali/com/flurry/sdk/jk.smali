.class public Lcom/flurry/sdk/jk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jk;
    .locals 3

    .prologue
    .line 30
    const-class v1, Lcom/flurry/sdk/jk;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/jk;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Class;)Lcom/flurry/sdk/kp;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    invoke-static {}, Lcom/flurry/sdk/jk;->c()Lcom/flurry/sdk/jx;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 1131
    iget-wide v0, v1, Lcom/flurry/sdk/jx;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    return-object v0
.end method

.method public static c()Lcom/flurry/sdk/jx;
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lm;->b()Lcom/flurry/sdk/lk;

    move-result-object v0

    .line 2087
    if-nez v0, :cond_0

    .line 2088
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2091
    :cond_0
    const-class v1, Lcom/flurry/sdk/jx;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lk;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jx;

    goto :goto_0
.end method

.method public static d()J
    .locals 3

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    .line 97
    invoke-static {}, Lcom/flurry/sdk/jk;->c()Lcom/flurry/sdk/jx;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_0

    .line 2135
    iget-wide v0, v2, Lcom/flurry/sdk/jx;->c:J

    .line 102
    :cond_0
    return-wide v0
.end method

.method public static e()J
    .locals 3

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    .line 108
    invoke-static {}, Lcom/flurry/sdk/jk;->c()Lcom/flurry/sdk/jx;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_0

    .line 2139
    iget-wide v0, v2, Lcom/flurry/sdk/jx;->d:J

    .line 113
    :cond_0
    return-wide v0
.end method

.method public static f()J
    .locals 3

    .prologue
    .line 117
    const-wide/16 v0, -0x1

    .line 119
    invoke-static {}, Lcom/flurry/sdk/jk;->c()Lcom/flurry/sdk/jx;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_0

    .line 2143
    iget-wide v0, v2, Lcom/flurry/sdk/jx;->e:J

    .line 124
    :cond_0
    return-wide v0
.end method

.method public static g()J
    .locals 3

    .prologue
    .line 128
    const-wide/16 v0, 0x0

    .line 130
    invoke-static {}, Lcom/flurry/sdk/jk;->c()Lcom/flurry/sdk/jx;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v2}, Lcom/flurry/sdk/jx;->c()J

    move-result-wide v0

    .line 135
    :cond_0
    return-wide v0
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/flurry/sdk/jx;

    invoke-static {v0}, Lcom/flurry/sdk/lk;->a(Ljava/lang/Class;)V

    .line 38
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    .line 39
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    .line 40
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    .line 41
    invoke-static {}, Lcom/flurry/sdk/ka;->a()Lcom/flurry/sdk/ka;

    .line 42
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    .line 43
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    .line 44
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    .line 45
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    .line 46
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    .line 47
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    .line 48
    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    .line 49
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    .line 50
    return-void
.end method
