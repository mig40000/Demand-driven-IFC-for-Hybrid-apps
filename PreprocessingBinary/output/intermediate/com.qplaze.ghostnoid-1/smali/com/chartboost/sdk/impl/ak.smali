.class public Lcom/chartboost/sdk/impl/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ak$b;,
        Lcom/chartboost/sdk/impl/ak$a;,
        Lcom/chartboost/sdk/impl/ak$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/Libraries/c;

.field final b:Lcom/chartboost/sdk/impl/ai;

.field final c:Lcom/chartboost/sdk/impl/ay;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/content/SharedPreferences;

.field public final f:Lcom/chartboost/sdk/Tracking/a;

.field final g:Lcom/chartboost/sdk/impl/af;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ay;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/af;",
            "Lcom/chartboost/sdk/impl/ai;",
            "Lcom/chartboost/sdk/impl/ay;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ak;->h:Ljava/util/List;

    .line 60
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/Libraries/c;

    invoke-direct {v1, p0, p5}, Lcom/chartboost/sdk/Libraries/c;-><init>(Lcom/chartboost/sdk/impl/ak;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/c;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ak;->a:Lcom/chartboost/sdk/Libraries/c;

    .line 61
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ak;->g:Lcom/chartboost/sdk/impl/af;

    .line 62
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ak;->b:Lcom/chartboost/sdk/impl/ai;

    .line 63
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ak;->c:Lcom/chartboost/sdk/impl/ay;

    .line 64
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ak;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    iput-object p5, p0, Lcom/chartboost/sdk/impl/ak;->e:Landroid/content/SharedPreferences;

    .line 66
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/Tracking/a;

    invoke-direct {v1, p0, p4, p5}, Lcom/chartboost/sdk/Tracking/a;-><init>(Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Tracking/a;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ak;->f:Lcom/chartboost/sdk/Tracking/a;

    .line 67
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->b:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    const-string v2, "X-Chartboost-App"

    sget-object v3, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v2, "X-Chartboost-Client"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v2, "X-Chartboost-Reachability"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-object v0
.end method

.method a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/Model/CBError;Z)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 73
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/chartboost/sdk/Libraries/d$a;

    const-string v0, "endpoint"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/aj;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v0

    aput-object v0, v1, v5

    const/4 v2, 0x1

    const-string v3, "statuscode"

    if-nez p2, :cond_1

    const-string v0, "None"

    :goto_1
    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x2

    const-string v3, "error"

    if-nez p3, :cond_2

    const-string v0, "None"

    :goto_2
    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x3

    const-string v3, "errorDescription"

    if-nez p3, :cond_3

    const-string v0, "None"

    :goto_3
    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string v2, "retryCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/d;->a([Lcom/chartboost/sdk/Libraries/d$a;)Lorg/json/JSONObject;

    move-result-object v7

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->f:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "request_manager"

    const-string v2, "request"

    if-eqz p4, :cond_4

    const-string v3, "success"

    :goto_4
    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {p2}, Lcom/chartboost/sdk/impl/ah;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->a()Lcom/chartboost/sdk/Model/CBError$a;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 84
    :cond_4
    const-string v3, "failure"

    goto :goto_4
.end method

.method protected a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/impl/aj$a;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->b:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$a;->b:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v2, "Internet Unavailable"

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/aj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/Model/CBError;Z)V

    .line 106
    if-eqz p2, :cond_0

    .line 107
    const-string v0, "Network failure"

    const-string v2, "request %s failed with error : %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/aj;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {p2, v0, p1, v1}, Lcom/chartboost/sdk/impl/aj$a;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "https://live.chartboost.com"

    .line 123
    const-string v1, "%s%s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/aj;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/chartboost/sdk/impl/ak$c;

    sget-object v2, Lcom/chartboost/sdk/impl/ac$a;->b:Lcom/chartboost/sdk/impl/ac$a;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/chartboost/sdk/impl/ak$c;-><init>(Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/impl/ac$a;Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;)V

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->g:Lcom/chartboost/sdk/impl/af;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/impl/ac;)V

    goto :goto_0
.end method
