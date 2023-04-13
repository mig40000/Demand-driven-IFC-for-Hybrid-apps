.class public Lcom/yandex/metrica/impl/ob/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/dm$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Lcom/yandex/metrica/impl/ob/bv;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bv;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->b:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/bv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->c:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/bv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->d:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/bv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->f:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bv;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/dm;->g:J

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/bv;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->h:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/bv;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->i:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/bv;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->e:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/dm;->c(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dm;->e()V

    .line 55
    return-void
.end method

.method private declared-synchronized b(J)V
    .locals 1

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/dm;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    const-string v0, "UuId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dm;->c(Ljava/lang/String;)V

    .line 178
    const-string v0, "DeviceId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/dm;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    const-string v0, "AdUrlGet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dm;->d(Ljava/lang/String;)V

    .line 189
    :cond_0
    const-string v0, "AdUrlReport"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dm;->e(Ljava/lang/String;)V

    .line 193
    :cond_1
    const-string v0, "BindIdUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 195
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dm;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_2
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dm;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->b:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->c:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->d:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v0

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/dm;->g:J

    .line 115
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bv;->d(J)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->h:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->i:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->o(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->e:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->q(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->h()V

    .line 120
    return-void
.end method

.method private declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dm;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dm;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    monitor-enter p0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/dm;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/yandex/metrica/impl/be;->a([Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/dm;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/yandex/metrica/impl/be;->a([Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Z
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dm;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dm;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(J)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bv;->e(J)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->h()V

    .line 138
    return-void
.end method

.method declared-synchronized a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dm;->b(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dm;->c(Landroid/os/Bundle;)V

    .line 1155
    const-string v0, "ServerTimeOffset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/dm;->b(J)V

    .line 2123
    const-string v0, "Clids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2124
    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2125
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->h:Ljava/lang/String;

    .line 2130
    :cond_0
    const-string v0, "CookieBrowsers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2132
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->i:Ljava/lang/String;

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dm;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dm;->f:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->h()V

    .line 152
    return-void
.end method

.method declared-synchronized a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dm;->b(Ljava/util/Map;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dm;->c(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 3029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 141
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dm;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v2, v4, v5}, Lcom/yandex/metrica/impl/ob/bv;->b(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 142
    const-wide/32 v2, 0x15180

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/ob/dm$a;)Z
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/dm$a;->c:Lcom/yandex/metrica/impl/ob/dm$a;

    if-ne v0, p1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dm;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 77
    :goto_0
    monitor-exit p0

    return v0

    .line 71
    :cond_0
    :try_start_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/dm$a;->a:Lcom/yandex/metrica/impl/ob/dm$a;

    if-ne v0, p1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dm;->f()Z

    move-result v0

    goto :goto_0

    .line 73
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/dm$a;->b:Lcom/yandex/metrica/impl/ob/dm$a;

    if-ne v0, p1, :cond_2

    .line 74
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dm;->g()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->f:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dm;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "yandex_mobile_metrica_uuid"

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    const-string v0, "yandex_mobile_metrica_device_id"

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "yandex_mobile_metrica_get_ad_url"

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string v0, "yandex_mobile_metrica_report_ad_url"

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dm;->b:Ljava/lang/String;

    return-object v0
.end method
