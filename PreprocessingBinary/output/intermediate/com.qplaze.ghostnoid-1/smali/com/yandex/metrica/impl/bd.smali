.class Lcom/yandex/metrica/impl/bd;
.super Lcom/yandex/metrica/impl/ah;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/aw;

.field private b:Landroid/content/Context;

.field private c:Lcom/yandex/metrica/impl/ob/t;

.field private l:Lcom/yandex/metrica/impl/ob/bz;

.field private m:Z

.field private n:Lcom/yandex/metrica/impl/ob/dj;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ah;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bd;->m:Z

    .line 53
    iput-object p1, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    .line 54
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bd;->b:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    .line 56
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->x()Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    .line 57
    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/aw;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aw;->c()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aw;->e()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bz;->b(J)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Landroid/net/Uri$Builder;)V
    .locals 4

    .prologue
    .line 116
    const-string v0, "analytics/startup"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    const-string v0, "deviceid"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bd;->a(Lcom/yandex/metrica/impl/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    const-string v0, "app_platform"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    const-string v0, "protocol_version"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    const-string v0, "analytics_sdk_version"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    const-string v0, "analytics_sdk_version_name"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    const-string v0, "model"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    const-string v0, "manufacturer"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    const-string v0, "os_version"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    const-string v0, "screen_width"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    const-string v0, "screen_height"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    const-string v0, "screen_dpi"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    const-string v0, "scalefactor"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->v()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    const-string v0, "locale"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 133
    const-string v0, "device_type"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    const-string v0, "query_hosts"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    const-string v0, "features"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "easy_collecting"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "package_info"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "socket"

    aput-object v3, v1, v2

    .line 136
    invoke-static {v1}, Lcom/yandex/metrica/impl/be;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 137
    const-string v0, "browsers"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 138
    const-string v0, "socket"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    const-string v0, "app_id"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->u()Ljava/util/Map;

    move-result-object v1

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->v()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->a()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    const-string v2, "distribution_customization"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 148
    const-string v2, "clids_set"

    invoke-static {v1}, Lcom/yandex/metrica/impl/utils/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/yandex/metrica/impl/bd;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    const-string v1, "install_referrer"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    :cond_1
    const-string v0, "uuid"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/yandex/metrica/impl/bd;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/aw;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->p()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2246
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    .line 2247
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    .line 2248
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    .line 2249
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    .line 2250
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->n(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    .line 2251
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->o(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    .line 2252
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    .line 2253
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->G()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->a(Z)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    .line 2254
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->b(Z)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    .line 2255
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/bz;->t(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 2257
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->y()Ljava/lang/String;

    move-result-object v0

    .line 2258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2259
    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bz;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 2262
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->h()V

    .line 3029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 236
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bd;->a(J)V

    .line 238
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    .line 239
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/ci;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yandex.metrica.intent.action.SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3273
    const-string v1, "CAUSE"

    const-string v2, "CAUSE_DEVICE_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3274
    const-string v1, "SYNC_TO_PKG"

    iget-object v2, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3275
    const-string v1, "SYNC_DATA"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3276
    const-string v1, "SYNC_DATA_2"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3277
    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bd;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bd;->a(Z)V

    .line 64
    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/aw;->c(Lcom/yandex/metrica/impl/ob/t;)V

    .line 66
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1076
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bd;->a(Landroid/net/Uri$Builder;)V

    .line 1077
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bd;->a(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    .line 71
    :cond_0
    return v0
.end method

.method public c()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bd;->k:Z

    .line 167
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iput-boolean v6, p0, Lcom/yandex/metrica/impl/bd;->k:Z

    .line 199
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bd;->k:Z

    return v0

    .line 169
    :cond_1
    const/16 v0, 0xc8

    iget v1, p0, Lcom/yandex/metrica/impl/bd;->h:I

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->u()Ljava/util/Map;

    move-result-object v1

    .line 172
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->i:[B

    .line 173
    invoke-static {v0}, Lcom/yandex/metrica/impl/bc;->a([B)Lcom/yandex/metrica/impl/bc$a;

    move-result-object v2

    .line 175
    sget-object v0, Lcom/yandex/metrica/impl/bc$a$a;->b:Lcom/yandex/metrica/impl/bc$a$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/bc$a;->j()Lcom/yandex/metrica/impl/bc$a$a;

    move-result-object v3

    if-ne v0, v3, :cond_4

    .line 176
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    iget-object v3, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/aw;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/bz;->u(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 177
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->a(Lcom/yandex/metrica/impl/bc$a;)V

    .line 1220
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->l()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bc;->a(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    .line 1221
    if-eqz v0, :cond_2

    .line 1222
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->a()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/yandex/metrica/impl/utils/j;->a(J)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/ce;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/bd;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    .line 180
    invoke-virtual {v5}, Lcom/yandex/metrica/impl/aw;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/ce;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/aw;->b(Ljava/lang/String;)V

    .line 181
    const-string v0, ""

    .line 182
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/bc$a;->n()Lcom/yandex/metrica/impl/ob/dh;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 184
    :try_start_0
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/bc$a;->n()Lcom/yandex/metrica/impl/ob/dh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/dh;->d()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/o;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/bc$a;->n()Lcom/yandex/metrica/impl/ob/dh;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/ob/o;-><init>(Lcom/yandex/metrica/impl/ob/dh;)V

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/i;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {p0, v3, v0}, Lcom/yandex/metrica/impl/bd;->a(Lcom/yandex/metrica/impl/aw;Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/k;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1267
    iget-object v3, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/impl/ob/t;->a(Z)V

    .line 192
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->k()Landroid/os/ResultReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/j;->a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/aw;Lcom/yandex/metrica/impl/bc$a;)V

    .line 193
    iput-boolean v6, p0, Lcom/yandex/metrica/impl/bd;->k:Z

    goto/16 :goto_0

    .line 195
    :cond_4
    sget-object v0, Lcom/yandex/metrica/impl/ob/dj;->c:Lcom/yandex/metrica/impl/ob/dj;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bd;->n:Lcom/yandex/metrica/impl/ob/dj;

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method d()Lcom/yandex/metrica/impl/ob/ck;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/yandex/metrica/impl/ob/co;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/bz;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/co;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/co;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ck;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bd;->k:Z

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->n:Lcom/yandex/metrica/impl/ob/dj;

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lcom/yandex/metrica/impl/ob/dj;->a:Lcom/yandex/metrica/impl/ob/dj;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bd;->n:Lcom/yandex/metrica/impl/ob/dj;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->k()Landroid/os/ResultReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bd;->n:Lcom/yandex/metrica/impl/ob/dj;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/j;->a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ob/dj;)V

    .line 217
    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/yandex/metrica/impl/ob/dj;->b:Lcom/yandex/metrica/impl/ob/dj;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bd;->n:Lcom/yandex/metrica/impl/ob/dj;

    .line 205
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method o()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/bz;->a(J)J

    move-result-wide v4

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/aw;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 88
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/bd;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/CounterConfiguration;->u()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/utils/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 89
    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->i()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 98
    :cond_0
    :goto_1
    if-nez v0, :cond_7

    .line 99
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ce;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ce;->d()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bd;->a(Lcom/yandex/metrica/impl/aw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 106
    :cond_1
    :goto_2
    return v1

    :cond_2
    move v0, v2

    .line 87
    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->l:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->j()J

    move-result-wide v4

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/32 v6, 0x15180

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v2

    .line 101
    goto :goto_2

    .line 103
    :cond_6
    iget-object v3, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/aw;

    invoke-static {v3}, Lcom/yandex/metrica/impl/bd;->a(Lcom/yandex/metrica/impl/aw;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_2

    :cond_7
    move v1, v0

    goto :goto_2
.end method

.method declared-synchronized p()Z
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bd;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
