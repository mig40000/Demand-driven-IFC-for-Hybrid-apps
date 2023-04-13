.class public Lcom/chartboost/sdk/InPlay/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/InPlay/a$a;,
        Lcom/chartboost/sdk/InPlay/a$b;
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/c;

.field final b:Lcom/chartboost/sdk/impl/af;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field volatile e:Z

.field private final f:Lcom/chartboost/sdk/impl/ak;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chartboost/sdk/InPlay/CBInPlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/c;",
            "Lcom/chartboost/sdk/impl/af;",
            "Lcom/chartboost/sdk/impl/ak;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/InPlay/a;->e:Z

    .line 61
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/a;->a:Lcom/chartboost/sdk/c;

    .line 62
    iput-object p2, p0, Lcom/chartboost/sdk/InPlay/a;->b:Lcom/chartboost/sdk/impl/af;

    .line 63
    iput-object p3, p0, Lcom/chartboost/sdk/InPlay/a;->f:Lcom/chartboost/sdk/impl/ak;

    .line 64
    iput-object p4, p0, Lcom/chartboost/sdk/InPlay/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/InPlay/a;->g:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/chartboost/sdk/InPlay/a;->d:Ljava/util/LinkedHashMap;

    .line 67
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 124
    iput-boolean v3, p0, Lcom/chartboost/sdk/InPlay/a;->e:Z

    .line 125
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/inplay/get"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a;->f:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 126
    const-string v1, "raw"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v1, "cache"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    sget-object v1, Lcom/chartboost/sdk/impl/ac$b;->c:Lcom/chartboost/sdk/impl/ac$b;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/ac$b;)V

    .line 129
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    sget-object v1, Lcom/chartboost/sdk/Model/b;->e:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/Libraries/f$a;)V

    .line 131
    new-instance v1, Lcom/chartboost/sdk/InPlay/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/chartboost/sdk/InPlay/a$1;-><init>(Lcom/chartboost/sdk/InPlay/a;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/aj$a;)V

    .line 175
    return-void
.end method

.method private declared-synchronized a()Z
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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
.method protected a(Lcom/chartboost/sdk/InPlay/CBInPlay;)V
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/chartboost/sdk/impl/aj;

    const-string v2, "/inplay/show"

    iget-object v3, p0, Lcom/chartboost/sdk/InPlay/a;->f:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 229
    const-string v2, "inplay-dictionary"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    const-string v0, "location"

    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/aj;->j()V

    .line 232
    return-void
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/InPlay/CBInPlay;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/InPlay/CBInPlay;->a(Landroid/graphics/Bitmap;)V

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 215
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didCacheInPlay(Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/InPlay/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/chartboost/sdk/InPlay/a;->e:Z

    if-nez v0, :cond_1

    .line 219
    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->getLocation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/InPlay/a;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_1
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/chartboost/sdk/InPlay/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/InPlay/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/InPlay/a;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(Lcom/chartboost/sdk/InPlay/CBInPlay;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 245
    if-eqz v4, :cond_3

    .line 246
    const-string v0, "link"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    const-string v0, "deep-link"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    :try_start_0
    invoke-static {v0}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    move-object v3, v0

    .line 257
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/a;->a:Lcom/chartboost/sdk/c;

    .line 258
    new-instance v5, Lcom/chartboost/sdk/InPlay/a$2;

    invoke-direct {v5, p0, v0, p1, v4}, Lcom/chartboost/sdk/InPlay/a$2;-><init>(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/InPlay/CBInPlay;Lorg/json/JSONObject;)V

    .line 274
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    invoke-virtual {v0, v1, v3, v5}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$a;)V

    .line 279
    :goto_2
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string v0, "CBInPlayManager"

    const-string v3, "Cannot open a url"

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, v2

    goto :goto_1

    .line 277
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/impl/al$a;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/al$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$a;)V

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v3, v1

    goto :goto_1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 95
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Lcom/chartboost/sdk/InPlay/CBInPlay;
    .locals 3

    .prologue
    .line 104
    monitor-enter p0

    const/4 v0, 0x0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/a;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/InPlay/CBInPlay;

    .line 107
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/a;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/InPlay/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/chartboost/sdk/InPlay/a;->e:Z

    if-nez v1, :cond_1

    .line 111
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/InPlay/a;->a(Ljava/lang/String;Z)V

    .line 113
    :cond_1
    if-nez v0, :cond_2

    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v1, :cond_2

    .line 114
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v1, p1, v2}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_2
    monitor-exit p0

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
