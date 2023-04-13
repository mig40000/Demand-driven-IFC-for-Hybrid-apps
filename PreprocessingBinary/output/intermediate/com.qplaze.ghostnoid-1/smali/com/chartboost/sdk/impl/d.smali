.class public Lcom/chartboost/sdk/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/chartboost/sdk/impl/ak;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/chartboost/sdk/impl/b;

.field private final d:Lcom/chartboost/sdk/impl/af;

.field private final e:Lcom/chartboost/sdk/Tracking/a;

.field private final f:Lcom/chartboost/sdk/Libraries/g;

.field private g:I

.field private h:Lcom/chartboost/sdk/impl/c;

.field private final i:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/chartboost/sdk/impl/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/Tracking/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/b;",
            "Lcom/chartboost/sdk/impl/af;",
            "Lcom/chartboost/sdk/impl/ak;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;",
            "Lcom/chartboost/sdk/Tracking/a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v1, p0, Lcom/chartboost/sdk/impl/d;->g:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    .line 113
    iput-object p1, p0, Lcom/chartboost/sdk/impl/d;->c:Lcom/chartboost/sdk/impl/b;

    .line 114
    iput-object p2, p0, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/impl/af;

    .line 115
    iput-object p3, p0, Lcom/chartboost/sdk/impl/d;->a:Lcom/chartboost/sdk/impl/ak;

    .line 116
    iput-object p4, p0, Lcom/chartboost/sdk/impl/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 117
    iput-object p5, p0, Lcom/chartboost/sdk/impl/d;->e:Lcom/chartboost/sdk/Tracking/a;

    .line 119
    new-instance v0, Lcom/chartboost/sdk/Libraries/g;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Libraries/g;-><init>(Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/d;->f:Lcom/chartboost/sdk/Libraries/g;

    .line 120
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    .line 121
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 435
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/a;

    .line 437
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/c;->a:Lcom/chartboost/sdk/impl/a;

    iget v1, v1, Lcom/chartboost/sdk/impl/a;->a:I

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    if-ge v1, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/c;->a:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 453
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/a;

    if-eqz v0, :cond_5

    .line 455
    iget-object v3, v0, Lcom/chartboost/sdk/impl/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1

    .line 459
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/d;->f:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v4

    iget-object v4, v4, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    iget-object v5, v0, Lcom/chartboost/sdk/impl/a;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_3

    .line 463
    const-string v4, "Downloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 449
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 468
    :cond_3
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 470
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/g;->d(Ljava/io/File;)V

    .line 471
    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 475
    :cond_4
    new-instance v3, Lcom/chartboost/sdk/impl/c;

    invoke-direct {v3, p0, v0, v4}, Lcom/chartboost/sdk/impl/c;-><init>(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/impl/a;Ljava/io/File;)V

    iput-object v3, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    .line 476
    iget-object v3, p0, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/impl/af;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    invoke-interface {v3, v4}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/impl/ac;)V

    .line 477
    iget-object v3, p0, Lcom/chartboost/sdk/impl/d;->e:Lcom/chartboost/sdk/Tracking/a;

    iget-object v4, v0, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    if-eqz v0, :cond_7

    .line 481
    const-string v0, "Downloader"

    const-string v1, "Change state to DOWNLOADING"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x2

    iput v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    .line 488
    :cond_6
    :goto_1
    return-void

    .line 483
    :cond_7
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    if-ne v0, v2, :cond_8

    if-eqz v1, :cond_6

    .line 484
    :cond_8
    const-string v0, "Downloader"

    const-string v1, "Change state to IDLE"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    iput v2, p0, Lcom/chartboost/sdk/impl/d;->g:I

    .line 486
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->c:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/b;->a()V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 290
    :pswitch_1
    :try_start_1
    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSED"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/d;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 295
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/c;->a:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    .line 298
    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSED"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    goto :goto_0

    .line 301
    :cond_0
    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSING"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x3

    iput v0, p0, Lcom/chartboost/sdk/impl/d;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized a(ILorg/json/JSONArray;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 8

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 134
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 136
    :try_start_1
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 137
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    const-string v1, "video"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    new-instance v0, Lcom/chartboost/sdk/impl/a;

    const-string v4, "videos"

    move v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 140
    iget-object v1, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "downloadNativeVideos"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :cond_0
    :try_start_3
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/d;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILorg/json/JSONObject;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 13

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    const-string v0, "templates"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 164
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->r:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 165
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_2

    .line 167
    :try_start_1
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    const-string v1, "template"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/chartboost/sdk/impl/d;->f:Lcom/chartboost/sdk/Libraries/g;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/d;->f:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v3

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/h;->f:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".json"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;[B)V

    .line 175
    iget-object v1, p0, Lcom/chartboost/sdk/impl/d;->c:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/b;->a(Lorg/json/JSONObject;)V

    .line 176
    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 177
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 178
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v11, :cond_1

    .line 179
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 180
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    const-string v1, "param"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    iget-object v12, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    new-instance v0, Lcom/chartboost/sdk/impl/a;

    move v1, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v12, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "downloadWebViewAssets(templates)"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 165
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    .line 193
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 195
    const-string v0, "templates"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 197
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    .line 198
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, v9, :cond_3

    .line 200
    :try_start_3
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    iget-object v10, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    new-instance v0, Lcom/chartboost/sdk/impl/a;

    move v1, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v10, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 204
    :catch_1
    move-exception v0

    .line 205
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadWebViewAssets("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 210
    :catch_2
    move-exception v0

    .line 211
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "downloadWebViewAssets"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 214
    :cond_4
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 215
    :cond_5
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/d;->d()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 217
    :cond_6
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;I)V
    .locals 3

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/g;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/g;->e()Lorg/json/JSONArray;

    move-result-object v1

    .line 229
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 230
    const-string v2, "templates"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    iget-object v1, p0, Lcom/chartboost/sdk/impl/d;->c:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v1, p1, p2}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)V

    .line 232
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {p0, p3, v0, v1}, Lcom/chartboost/sdk/impl/d;->a(ILorg/json/JSONObject;Ljava/util/concurrent/atomic/AtomicInteger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/ad;)V
    .locals 6

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 410
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 363
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    if-ne p1, v0, :cond_0

    .line 366
    iget-object v0, p1, Lcom/chartboost/sdk/impl/c;->a:Lcom/chartboost/sdk/impl/a;

    .line 368
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    .line 369
    iget-object v1, v0, Lcom/chartboost/sdk/impl/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 371
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/chartboost/sdk/impl/c;->g:J

    sub-long/2addr v2, v4

    .line 372
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 373
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 375
    if-nez p2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/chartboost/sdk/impl/d;->c:Lcom/chartboost/sdk/impl/b;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/a;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/chartboost/sdk/impl/d;->e:Lcom/chartboost/sdk/Tracking/a;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v1, "Downloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    :goto_1
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 398
    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSED"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    .line 400
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->c:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 385
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ad;->a()Ljava/lang/String;

    move-result-object v2

    .line 386
    iget-object v3, p0, Lcom/chartboost/sdk/impl/d;->e:Lcom/chartboost/sdk/Tracking/a;

    iget-object v4, v0, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "Downloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p2, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Status code="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p2, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    invoke-interface {v4}, Lcom/chartboost/sdk/impl/ah;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Error message="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    .line 403
    :cond_4
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/d;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized a(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    .prologue
    .line 243
    monitor-enter p0

    const/16 v0, -0x2710

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 245
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 253
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/c;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    .line 255
    :goto_1
    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/d;->h:Lcom/chartboost/sdk/impl/c;

    .line 258
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/d;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 343
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 331
    :pswitch_1
    :try_start_1
    const-string v0, "Downloader"

    const-string v1, "Change state to DOWNLOADING"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x2

    iput v0, p0, Lcom/chartboost/sdk/impl/d;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 337
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "Downloader"

    const-string v1, "Change state to IDLE"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    .line 340
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/d;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->c:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :cond_0
    monitor-exit p0

    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
