.class public Lcom/chartboost/sdk/Tracking/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Libraries/a;


# static fields
.field private static c:Lcom/chartboost/sdk/Tracking/a;

.field private static final n:Ljava/lang/Long;


# instance fields
.field private final d:Lcom/chartboost/sdk/impl/ak;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/SharedPreferences;

.field private g:Ljava/lang/String;

.field private h:Lorg/json/JSONArray;

.field private i:J

.field private j:J

.field private final k:J

.field private final l:Lcom/chartboost/sdk/Libraries/g;

.field private m:Z

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Tracking/a;->n:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ak;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v4, p0, Lcom/chartboost/sdk/Tracking/a;->m:Z

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/chartboost/sdk/Tracking/a;->n:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->o:J

    .line 91
    sput-object p0, Lcom/chartboost/sdk/Tracking/a;->c:Lcom/chartboost/sdk/Tracking/a;

    .line 95
    iput-object p1, p0, Lcom/chartboost/sdk/Tracking/a;->d:Lcom/chartboost/sdk/impl/ak;

    .line 96
    iput-object p2, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    iput-object p3, p0, Lcom/chartboost/sdk/Tracking/a;->f:Landroid/content/SharedPreferences;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->k:J

    .line 99
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Lorg/json/JSONArray;

    .line 100
    new-instance v0, Lcom/chartboost/sdk/Libraries/g;

    invoke-direct {v0, v4}, Lcom/chartboost/sdk/Libraries/g;-><init>(Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->l:Lcom/chartboost/sdk/Libraries/g;

    .line 101
    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 601
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method private a(JJ)V
    .locals 5

    .prologue
    .line 549
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 550
    const-string v1, "start_timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    const-string v1, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->l:Lcom/chartboost/sdk/Libraries/g;

    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->l:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/g;->b()Ljava/io/File;

    move-result-object v2

    const-string v3, "cb_previous_session_info"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;[B)V

    .line 554
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->c:Lcom/chartboost/sdk/Tracking/a;

    .line 373
    if-eqz v0, :cond_0

    .line 374
    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 376
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->n:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v1, "session"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 10

    .prologue
    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 438
    iget-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->i:J

    sub-long v2, v0, v2

    .line 439
    iget-wide v4, p0, Lcom/chartboost/sdk/Tracking/a;->k:J

    sub-long v4, v0, v4

    .line 441
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 442
    const-string v1, "event"

    invoke-static {p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    const-string v1, "kingdom"

    invoke-static {p2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    const-string v1, "phylum"

    invoke-static {p3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const-string v1, "class"

    invoke-static {p4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    const-string v1, "family"

    invoke-static {p5}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    const-string v1, "genus"

    invoke-static/range {p6 .. p6}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v6, "meta"

    if-nez p7, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v1

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v7}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    :goto_0
    invoke-static {v0, v6, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    const-string v1, "clientTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    const-string v1, "session_id"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    const-string v1, "totalSessionTime"

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    const-string v1, "currentSessionTime"

    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 454
    monitor-enter p0

    .line 455
    :try_start_0
    iget-boolean v1, p0, Lcom/chartboost/sdk/Tracking/a;->m:Z

    .line 456
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/chartboost/sdk/Tracking/a;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 458
    :try_start_1
    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->h:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 459
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 460
    const-string v2, "events"

    iget-object v3, p0, Lcom/chartboost/sdk/Tracking/a;->h:Lorg/json/JSONArray;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    const-string v2, "CBTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###Writing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "to tracking cache dir"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->h()V

    .line 463
    if-nez p8, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    :cond_0
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->b(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/aj;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->j()V

    .line 466
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    :cond_1
    :try_start_2
    iput-boolean v1, p0, Lcom/chartboost/sdk/Tracking/a;->m:Z

    .line 471
    monitor-exit p0

    .line 472
    return-void

    :cond_2
    move-object/from16 v1, p7

    .line 448
    goto/16 :goto_0

    .line 469
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Tracking/a;->m:Z

    throw v0

    .line 471
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 424
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 427
    return-void
.end method

.method private a(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->n:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 133
    const-string v0, "complete"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v1, "session"

    const-string v2, "end"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 142
    const-string v0, "did-become-active"

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/aj;
    .locals 5

    .prologue
    .line 562
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/api/track"

    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->d:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 563
    const-string v1, "track"

    invoke-virtual {v0, v1, p1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/f$k;

    const/4 v2, 0x0

    const-string v3, "status"

    sget-object v4, Lcom/chartboost/sdk/Libraries/a;->b:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/f$a;)Lcom/chartboost/sdk/Libraries/f$k;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/f;->a([Lcom/chartboost/sdk/Libraries/f$k;)Lcom/chartboost/sdk/Libraries/f$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/Libraries/f$a;)V

    .line 566
    sget-object v1, Lcom/chartboost/sdk/impl/ac$b;->a:Lcom/chartboost/sdk/impl/ac$b;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/ac$b;)V

    .line 567
    return-object v0
.end method

.method private static b(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 12

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 380
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/chartboost/sdk/Tracking/a;->m:Z

    if-nez v0, :cond_1

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Tracking/a;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 385
    iget-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->o:J

    sub-long v0, v10, v0

    sget-object v2, Lcom/chartboost/sdk/Tracking/a;->n:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 386
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 387
    const-string v1, "exception"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 395
    iput-wide v10, p0, Lcom/chartboost/sdk/Tracking/a;->o:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 400
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/chartboost/sdk/Tracking/a;->m:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 400
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/chartboost/sdk/Tracking/a;->m:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 400
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/chartboost/sdk/Tracking/a;->m:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 479
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->h:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->h:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 482
    :cond_0
    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 489
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 490
    const-string v1, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    const-string v1, "deviceID"

    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->d:Lcom/chartboost/sdk/impl/ak;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ak;->a:Lcom/chartboost/sdk/Libraries/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/String;

    .line 493
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 527
    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->i:J

    .line 528
    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->j:J

    .line 529
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/String;

    .line 530
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/chartboost/sdk/Tracking/a;->a(JJ)V

    .line 533
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->f:Landroid/content/SharedPreferences;

    const-string v1, "cbPrefSessionCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 534
    add-int/lit8 v0, v0, 0x1

    .line 535
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->f:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 536
    const-string v2, "cbPrefSessionCount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 537
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 538
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 545
    iget-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->i:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/chartboost/sdk/Tracking/a;->a(JJ)V

    .line 546
    return-void
.end method

.method private i()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Lorg/json/JSONArray;

    return-object v0
.end method

.method private j()J
    .locals 2

    .prologue
    .line 593
    iget-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->i:J

    return-wide v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 608
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Lorg/json/JSONArray;

    .line 609
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "start"

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    .line 110
    const-string v0, "did-become-active"

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 275
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 276
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v1, :cond_0

    .line 277
    const-string v1, "asset-prefetcher"

    const-string v2, "start"

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Model/c;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 286
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 191
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 192
    const-string v1, "ad-show"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 8

    .prologue
    .line 239
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 240
    const-string v1, "ad-error"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v4, "empty-adid"

    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 248
    :cond_0
    return-void

    :cond_1
    move-object v4, p3

    .line 240
    goto :goto_0

    :cond_2
    const-string v5, ""

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v1, "webview-track"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 157
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    .line 412
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 413
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 415
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v1, "ad-error"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v4, "empty-adid"

    :goto_0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 260
    :cond_0
    return-void

    :cond_1
    move-object v4, p3

    .line 252
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 178
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 179
    const-string v1, "ad-get"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v4, "empty-adid"

    :goto_0
    invoke-static {p4}, Lcom/chartboost/sdk/Tracking/a;->b(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "single"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 188
    :cond_0
    return-void

    :cond_1
    move-object v4, p3

    .line 179
    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 161
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "folder"

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Model/c;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 171
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Z)V

    .line 128
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 318
    const-string v1, "playback-complete"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v1, "ad-click"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 263
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 264
    const-string v1, "ad-warning"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v4, "empty-adid"

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    :cond_0
    return-void

    :cond_1
    move-object v4, p3

    .line 264
    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 500
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->l:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "cb_previous_session_info"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->l:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 502
    :goto_0
    if-eqz v0, :cond_2

    .line 503
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->j:J

    .line 504
    const-string v1, "start_timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->i:J

    .line 505
    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/String;

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 508
    iget-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->j:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 510
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->h()V

    .line 520
    :goto_1
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 515
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Z)V

    .line 519
    :cond_2
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->g()V

    goto :goto_1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 329
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 330
    const-string v1, "replay"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 338
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 215
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 216
    const-string v1, "ad-close"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 290
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v1, :cond_0

    .line 291
    const-string v1, "asset-prefetcher"

    const-string v2, "failure"

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Model/c;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 300
    :cond_0
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 342
    const-string v1, "playback-start"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 350
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 228
    const-string v1, "ad-dismiss"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 352
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v0, :cond_0

    .line 353
    const-string v1, "playback-stop"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 361
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 303
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 304
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "asset-prefetcher"

    const-string v2, "success"

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Model/c;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 314
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session [ startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sessionEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->i()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
