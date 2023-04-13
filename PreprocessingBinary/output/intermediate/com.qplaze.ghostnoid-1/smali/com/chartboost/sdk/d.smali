.class public abstract Lcom/chartboost/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/d$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/b;

.field public final b:Lcom/chartboost/sdk/impl/d;

.field final c:Lcom/chartboost/sdk/c;

.field public final d:Lcom/chartboost/sdk/impl/af;

.field public final e:Lcom/chartboost/sdk/impl/ak;

.field public final f:Lcom/chartboost/sdk/h;

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/content/SharedPreferences;

.field public final i:Lcom/chartboost/sdk/Tracking/a;

.field public final j:Lcom/chartboost/sdk/e;

.field public final k:Lcom/chartboost/sdk/impl/am;

.field protected final l:Landroid/os/Handler;

.field public m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/chartboost/sdk/Model/a$b;

.field private final o:Lcom/chartboost/sdk/impl/ai;

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/chartboost/sdk/d$a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/impl/am;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/b;",
            "Lcom/chartboost/sdk/impl/d;",
            "Lcom/chartboost/sdk/c;",
            "Lcom/chartboost/sdk/impl/af;",
            "Lcom/chartboost/sdk/impl/ai;",
            "Lcom/chartboost/sdk/impl/ak;",
            "Lcom/chartboost/sdk/h;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/chartboost/sdk/Tracking/a;",
            "Lcom/chartboost/sdk/e;",
            "Lcom/chartboost/sdk/impl/am;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->l:Landroid/os/Handler;

    .line 65
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p0, Lcom/chartboost/sdk/d;->n:Lcom/chartboost/sdk/Model/a$b;

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->s:Lcom/chartboost/sdk/d$a;

    .line 83
    iput-object p1, p0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/impl/b;

    .line 84
    iput-object p2, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/d;

    .line 85
    iput-object p3, p0, Lcom/chartboost/sdk/d;->c:Lcom/chartboost/sdk/c;

    .line 86
    iput-object p4, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/impl/af;

    .line 87
    iput-object p5, p0, Lcom/chartboost/sdk/d;->o:Lcom/chartboost/sdk/impl/ai;

    .line 88
    iput-object p6, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/impl/ak;

    .line 89
    iput-object p7, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    .line 90
    iput-object p8, p0, Lcom/chartboost/sdk/d;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    iput-object p9, p0, Lcom/chartboost/sdk/d;->h:Landroid/content/SharedPreferences;

    .line 92
    iput-object p10, p0, Lcom/chartboost/sdk/d;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 93
    iput-object p11, p0, Lcom/chartboost/sdk/d;->j:Lcom/chartboost/sdk/e;

    .line 94
    iput-object p12, p0, Lcom/chartboost/sdk/d;->k:Lcom/chartboost/sdk/impl/am;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->p:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    return-void
.end method

.method private a(Lcom/chartboost/sdk/Model/a;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    sget-object v2, Lcom/chartboost/sdk/Model/a$e;->d:Lcom/chartboost/sdk/Model/a$e;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 320
    :goto_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->i(Lcom/chartboost/sdk/Model/a;)V

    .line 322
    iget-object v2, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    invoke-virtual {v2}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v2

    .line 323
    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v2}, Lcom/chartboost/sdk/e;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    invoke-virtual {v2, p1, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 332
    :cond_0
    if-eqz p2, :cond_3

    .line 333
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->h(Lcom/chartboost/sdk/Model/a;)V

    .line 337
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 319
    goto :goto_0

    .line 326
    :cond_2
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->q:Z

    if-eqz v1, :cond_0

    .line 327
    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    sget-object v1, Lcom/chartboost/sdk/Model/a$e;->c:Lcom/chartboost/sdk/Model/a$e;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
.end method

.method protected final a()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/chartboost/sdk/d;->s:Lcom/chartboost/sdk/d$a;

    if-nez v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->s:Lcom/chartboost/sdk/d$a;

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->s:Lcom/chartboost/sdk/d$a;

    return-object v0
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->p(Lcom/chartboost/sdk/Model/a;)V

    .line 181
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 182
    sget-object v0, Lcom/chartboost/sdk/Model/a$e;->d:Lcom/chartboost/sdk/Model/a$e;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    .line 183
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcom/chartboost/sdk/d$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/d$2;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/a$b;)V
    .locals 0

    .prologue
    .line 607
    if-eqz p1, :cond_0

    .line 608
    iput-object p2, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 609
    :cond_0
    iput-object p2, p0, Lcom/chartboost/sdk/d;->n:Lcom/chartboost/sdk/Model/a$b;

    .line 610
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 414
    if-nez p2, :cond_0

    .line 415
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$a;

    const-string v1, "Response is null"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 430
    :goto_0
    return-void

    .line 418
    :cond_0
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 419
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 422
    :cond_1
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 423
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/a$d;

    invoke-virtual {p1, p2, v0}, Lcom/chartboost/sdk/Model/a;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/Model/a$d;)V

    goto :goto_0
.end method

.method protected final a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/chartboost/sdk/Model/a;->z:Z

    .line 439
    new-instance v0, Lcom/chartboost/sdk/d$4;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/d$4;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/aj$a;)V

    .line 489
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/d;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/a;

    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/d;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/Model/a;

    .line 107
    if-eqz v3, :cond_1

    move-object v5, v3

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, v5, v1}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 153
    :cond_0
    :goto_1
    return-void

    .line 109
    :cond_1
    if-eqz v2, :cond_2

    move-object v5, v2

    .line 110
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->c(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    .line 115
    iput-boolean v5, v0, Lcom/chartboost/sdk/Model/a;->m:Z

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Request already in process for impression with location"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;

    move-result-object v5

    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {p0, v5}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Lcom/chartboost/sdk/c;

    iget-object v4, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/a$d;

    .line 135
    iget-object v6, p0, Lcom/chartboost/sdk/d;->l:Landroid/os/Handler;

    new-instance v0, Lcom/chartboost/sdk/d$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/d$1;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/a$d;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method protected abstract b()Lcom/chartboost/sdk/d$a;
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 157
    iget-object v0, p0, Lcom/chartboost/sdk/d;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;

    .line 158
    iget-object v1, p0, Lcom/chartboost/sdk/d;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/a;

    .line 160
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/d$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/chartboost/sdk/d$a;->d(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->c(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Request already in process for impression with location"

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0, p1, v5}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->c(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 307
    if-nez p1, :cond_0

    const-string p1, ""

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;

    .line 309
    if-eqz v0, :cond_1

    .line 310
    iget-object v1, p0, Lcom/chartboost/sdk/d;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    if-eqz p2, :cond_1

    .line 312
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 314
    :cond_1
    return-void
.end method

.method protected final b(Lcom/chartboost/sdk/Model/a;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/chartboost/sdk/d$a;->h(Lcom/chartboost/sdk/Model/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/chartboost/sdk/d;->h:Landroid/content/SharedPreferences;

    const-string v3, "cbPrefSessionCount"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 194
    if-ne v2, v1, :cond_0

    .line 195
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    move v0, v1

    .line 196
    goto :goto_0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->k()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 498
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/chartboost/sdk/d;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;

    .line 501
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/chartboost/sdk/Model/a;)V
    .locals 5

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->f(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->g(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$a;->b:Lcom/chartboost/sdk/Model/a$a;

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/chartboost/sdk/i;->u:Z

    if-eqz v0, :cond_2

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 213
    iget-object v0, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 217
    :cond_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/aj;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/a;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 225
    iget-object v0, p0, Lcom/chartboost/sdk/d;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method protected d(Lcom/chartboost/sdk/Model/a;)Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->e(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/chartboost/sdk/Model/a$b;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/chartboost/sdk/d;->n:Lcom/chartboost/sdk/Model/a$b;

    return-object v0
.end method

.method protected e(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/chartboost/sdk/d;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;

    .line 535
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->m(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-object v0

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/d;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/d;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/chartboost/sdk/d;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;

    .line 539
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->m(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/aj;
.end method

.method protected f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 547
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### Removing impression-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/chartboost/sdk/d;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    return-void
.end method

.method protected final f(Lcom/chartboost/sdk/Model/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    if-nez v1, :cond_1

    .line 270
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 276
    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v1, p1, v2}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/d;->o:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 284
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 288
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected g(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    sget-object v1, Lcom/chartboost/sdk/Model/a$e;->c:Lcom/chartboost/sdk/Model/a$e;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 293
    :goto_0
    if-eqz v1, :cond_3

    .line 294
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomShouldDisplayBehavior()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    .line 298
    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/d;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->f(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    :goto_2
    return-void

    .line 292
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    goto :goto_1

    .line 303
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Z)V

    goto :goto_2
.end method

.method public h(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 346
    return-void
.end method

.method protected i(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->j(Lcom/chartboost/sdk/Model/a;)V

    .line 352
    return-void
.end method

.method public j(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 360
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->o:Z

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->e(Lcom/chartboost/sdk/Model/a;)V

    .line 367
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    .line 369
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->k(Lcom/chartboost/sdk/Model/a;)V

    .line 370
    iget-object v0, p0, Lcom/chartboost/sdk/d;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->e(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 372
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected k(Lcom/chartboost/sdk/Model/a;)V
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/aj;

    move-result-object v0

    .line 378
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    if-eqz v1, :cond_1

    .line 379
    const-string v1, "cached"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    :goto_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    const-string v2, "ad_id"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    :cond_0
    const-string v1, "location"

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    new-instance v1, Lcom/chartboost/sdk/d$3;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/d$3;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/aj$a;)V

    .line 398
    iget-object v0, p0, Lcom/chartboost/sdk/d;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void

    .line 381
    :cond_1
    const-string v1, "cached"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/aj;
.end method

.method protected final m(Lcom/chartboost/sdk/Model/a;)Z
    .locals 6

    .prologue
    .line 405
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 406
    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 509
    if-eqz p1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/chartboost/sdk/d;->p:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_0
    return-void
.end method

.method protected o(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 518
    if-eqz p1, :cond_0

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/chartboost/sdk/Model/a;->l:J

    .line 520
    iget-object v0, p0, Lcom/chartboost/sdk/d;->p:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_0
    return-void
.end method

.method protected p(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 559
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### Adding aimpression-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### Impression should cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/chartboost/sdk/d;->q:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    return-void
.end method
