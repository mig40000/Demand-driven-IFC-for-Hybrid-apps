.class public Lcom/chartboost/sdk/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/aj$a;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/b;

.field private final b:Lcom/chartboost/sdk/impl/d;

.field private final c:Lcom/chartboost/sdk/impl/ak;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:J

.field private h:Lcom/chartboost/sdk/impl/aj;

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/b;",
            "Lcom/chartboost/sdk/impl/d;",
            "Lcom/chartboost/sdk/impl/ak;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/e;->e:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/e;->f:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/e;->g:J

    .line 76
    iput-object v2, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;

    .line 77
    iput-object v2, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e;->a:Lcom/chartboost/sdk/impl/b;

    .line 91
    iput-object p2, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/d;

    .line 92
    iput-object p3, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/impl/ak;

    .line 93
    iput-object p4, p0, Lcom/chartboost/sdk/impl/e;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 94
    return-void
.end method

.method private a(Lcom/chartboost/sdk/Model/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 195
    iget-boolean v3, p1, Lcom/chartboost/sdk/Model/c;->u:Z

    .line 196
    if-nez v3, :cond_3

    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 198
    :goto_0
    iget v4, p0, Lcom/chartboost/sdk/impl/e;->f:I

    if-ne v4, v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->f:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    if-nez v3, :cond_4

    :cond_1
    move v0, v1

    .line 202
    :goto_1
    if-eqz v0, :cond_2

    .line 203
    const-string v0, "Prefetcher"

    const-string v3, "Change state to IDLE"

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iput v1, p0, Lcom/chartboost/sdk/impl/e;->e:I

    .line 205
    iput v2, p0, Lcom/chartboost/sdk/impl/e;->f:I

    .line 206
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/e;->g:J

    .line 207
    iput-object v5, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;

    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 209
    iput-object v5, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 210
    if-eqz v0, :cond_2

    .line 211
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/d;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 213
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 196
    goto :goto_0

    :cond_4
    move v0, v2

    .line 198
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x1

    const/4 v8, 0x2

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 109
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/Model/c;)V

    .line 111
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->b:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/chartboost/sdk/i;->v:Z

    if-nez v1, :cond_2

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/chartboost/sdk/impl/e;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 123
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_1

    .line 126
    const-string v1, "Prefetcher"

    const-string v2, "Change state to COOLDOWN"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x4

    iput v1, p0, Lcom/chartboost/sdk/impl/e;->e:I

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    :cond_3
    iget v1, p0, Lcom/chartboost/sdk/impl/e;->e:I

    if-ne v1, v3, :cond_6

    .line 132
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/e;->g:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 133
    cmp-long v1, v2, v10

    if-lez v1, :cond_5

    .line 134
    const-string v0, "Prefetcher"

    const-string v1, "Prefetch session is still active. Won\'t be making any new prefetch until the prefetch session expires"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 178
    :try_start_2
    iget v1, p0, Lcom/chartboost/sdk/impl/e;->e:I

    if-ne v1, v8, :cond_4

    .line 179
    const-string v1, "Prefetcher"

    const-string v2, "Change state to COOLDOWN"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x4

    iput v1, p0, Lcom/chartboost/sdk/impl/e;->e:I

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;

    .line 183
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "prefetch"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :cond_5
    :try_start_3
    const-string v1, "Prefetcher"

    const-string v2, "Change state to IDLE"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x1

    iput v1, p0, Lcom/chartboost/sdk/impl/e;->e:I

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lcom/chartboost/sdk/impl/e;->f:I

    .line 140
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/e;->g:J

    .line 143
    :cond_6
    iget v1, p0, Lcom/chartboost/sdk/impl/e;->e:I

    if-ne v1, v6, :cond_1

    .line 146
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v1, :cond_7

    .line 147
    new-instance v1, Lcom/chartboost/sdk/impl/an;

    iget-object v2, v0, Lcom/chartboost/sdk/Model/c;->E:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/impl/an;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 148
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->a:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 149
    const-string v3, "cache_assets"

    sget-object v4, Lcom/chartboost/sdk/impl/an$a;->a:Lcom/chartboost/sdk/impl/an$a;

    invoke-virtual {v1, v3, v2, v4}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/chartboost/sdk/impl/an$a;)V

    .line 150
    sget-object v2, Lcom/chartboost/sdk/Model/b;->g:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/an;->a(Lcom/chartboost/sdk/Libraries/f$a;)V

    .line 152
    const-string v2, "Prefetcher"

    const-string v3, "Change state to AWAIT_PREFETCH_RESPONSE"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    const/4 v2, 0x2

    iput v2, p0, Lcom/chartboost/sdk/impl/e;->e:I

    .line 154
    const/4 v2, 0x2

    iput v2, p0, Lcom/chartboost/sdk/impl/e;->f:I

    .line 155
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->A:I

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/e;->g:J

    .line 156
    iput-object v1, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;

    .line 173
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/aj$a;)V

    goto/16 :goto_0

    .line 157
    :cond_7
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v1, :cond_8

    .line 159
    new-instance v1, Lcom/chartboost/sdk/impl/aj;

    const-string v2, "/api/video-prefetch"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 160
    const-string v2, "local-videos"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->a:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/b;->c()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    sget-object v2, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/Libraries/f$a;)V

    .line 163
    const-string v2, "Prefetcher"

    const-string v3, "Change state to AWAIT_PREFETCH_RESPONSE"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const/4 v2, 0x2

    iput v2, p0, Lcom/chartboost/sdk/impl/e;->e:I

    .line 165
    const/4 v2, 0x1

    iput v2, p0, Lcom/chartboost/sdk/impl/e;->f:I

    .line 166
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->j:I

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/e;->g:J

    .line 167
    iput-object v1, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;

    goto :goto_1

    .line 169
    :cond_8
    const-string v0, "Prefetcher"

    const-string v1, "Did not prefetch because neither native nor webview are enabled."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 243
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v3, :cond_1

    .line 276
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 247
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;

    if-ne p2, v0, :cond_0

    .line 251
    const-string v0, "Prefetcher"

    const-string v1, "Change state to DOWNLOAD_ASSETS"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x3

    iput v0, p0, Lcom/chartboost/sdk/impl/e;->e:I

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;

    .line 254
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 256
    if-eqz p1, :cond_0

    .line 257
    const-string v0, "Prefetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Asset list for Prefetch from server :)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/d;

    const/4 v1, 0x0

    const-string v2, "videos"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/d;->a(ILorg/json/JSONArray;Ljava/util/concurrent/atomic/AtomicInteger;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 274
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onSuccess"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 263
    :cond_2
    :try_start_3
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->f:I

    if-ne v0, v3, :cond_0

    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/d;

    const/4 v1, 0x0

    const-string v2, "cache_assets"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/d;->a(ILorg/json/JSONObject;Ljava/util/concurrent/atomic/AtomicInteger;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 2

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 286
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;

    if-ne p2, v0, :cond_0

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;

    .line 291
    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/e;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 222
    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/e;->e:I

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Lcom/chartboost/sdk/impl/aj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 225
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 226
    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/e;->e:I

    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 230
    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/d;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
