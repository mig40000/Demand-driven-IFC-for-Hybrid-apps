.class public Lcom/chartboost/sdk/impl/h;
.super Lcom/chartboost/sdk/d;
.source "SourceFile"


# instance fields
.field final o:Lcom/chartboost/sdk/impl/e;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/impl/am;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/b;",
            "Lcom/chartboost/sdk/impl/d;",
            "Lcom/chartboost/sdk/c;",
            "Lcom/chartboost/sdk/impl/af;",
            "Lcom/chartboost/sdk/impl/e;",
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
    .line 53
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v1 .. v13}, Lcom/chartboost/sdk/d;-><init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/impl/am;)V

    .line 65
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/chartboost/sdk/impl/h;->o:Lcom/chartboost/sdk/impl/e;

    .line 66
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
    .locals 7

    .prologue
    .line 133
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    sget-object v2, Lcom/chartboost/sdk/Model/a$a;->a:Lcom/chartboost/sdk/Model/a$a;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h;->e()Lcom/chartboost/sdk/Model/a$b;

    move-result-object v6

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/Model/a;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a$a;ZLjava/lang/String;ZLcom/chartboost/sdk/Model/a$b;)V

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lorg/json/JSONObject;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    const-string v1, "webview"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_1

    .line 112
    const-string v2, "template"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v2, "prefetch_required"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->o:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e;->a()V

    .line 116
    :cond_0
    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    .line 117
    iput-object p2, p1, Lcom/chartboost/sdk/Model/a;->k:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 121
    sget-object v0, Lcom/chartboost/sdk/Model/a$e;->d:Lcom/chartboost/sdk/Model/a$e;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    .line 122
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h;->n(Lcom/chartboost/sdk/Model/a;)V

    .line 123
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->m:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/h;->a(Ljava/lang/String;)V

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lorg/json/JSONObject;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 80
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/h;->b(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->a:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/impl/b;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    const-string v0, "CBInterstitial"

    const-string v1, "Video Media unavailable for the cached impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/h;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 104
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/Model/a;->a(Lorg/json/JSONObject;)V

    .line 88
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "webview"

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    const-string v1, "template"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    .line 93
    :cond_1
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    if-eqz v1, :cond_2

    .line 95
    :goto_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h;->b:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v1, p1, v0, v5}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;I)V

    goto :goto_0

    .line 93
    :cond_2
    const/4 v5, 0x2

    goto :goto_1

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    const-string v3, "Empty"

    const-string v4, "Response is empty"

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    const-string v0, "CBInterstitial"

    const-string v1, "Response got from the server is empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/h;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 103
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected b()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/chartboost/sdk/impl/h$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/h$1;-><init>(Lcom/chartboost/sdk/impl/h;)V

    return-object v0
.end method

.method protected b(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 70
    if-eqz p2, :cond_0

    const-string v0, "media-type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    const-string v1, "%s-%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "interstitial"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Model/c;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/aj;
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 139
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    .line 140
    if-nez v1, :cond_1

    .line 141
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 142
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/interstitial/get"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/h;->e:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 143
    const-string v1, "local-videos"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/h;->a:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/b;->c()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    sget-object v1, Lcom/chartboost/sdk/impl/ac$b;->c:Lcom/chartboost/sdk/impl/ac$b;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/ac$b;)V

    .line 145
    sget-object v1, Lcom/chartboost/sdk/Model/b;->h:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/Libraries/f$a;)V

    .line 146
    const-string v1, "location"

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "cache"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 153
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h;->a:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 154
    new-instance v1, Lcom/chartboost/sdk/impl/an;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->D:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/h;->e:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v1, v0, v3}, Lcom/chartboost/sdk/impl/an;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 155
    const-string v0, "cache_assets"

    sget-object v3, Lcom/chartboost/sdk/impl/an$a;->a:Lcom/chartboost/sdk/impl/an$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/chartboost/sdk/impl/an$a;)V

    .line 156
    sget-object v0, Lcom/chartboost/sdk/impl/ac$b;->c:Lcom/chartboost/sdk/impl/ac$b;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/an;->a(Lcom/chartboost/sdk/impl/ac$b;)V

    .line 157
    const-string v0, "location"

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    sget-object v3, Lcom/chartboost/sdk/impl/an$a;->a:Lcom/chartboost/sdk/impl/an$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/chartboost/sdk/impl/an$a;)V

    .line 158
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    if-eqz v0, :cond_2

    .line 159
    const-string v0, "cache"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/chartboost/sdk/impl/an$a;->a:Lcom/chartboost/sdk/impl/an$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/chartboost/sdk/impl/an$a;)V

    .line 163
    :goto_1
    sget-object v0, Lcom/chartboost/sdk/Model/b;->h:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/an;->a(Lcom/chartboost/sdk/Libraries/f$a;)V

    move-object v0, v1

    .line 164
    goto :goto_0

    .line 161
    :cond_2
    const-string v0, "cache"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/chartboost/sdk/impl/an$a;->a:Lcom/chartboost/sdk/impl/an$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/chartboost/sdk/impl/an$a;)V

    goto :goto_1
.end method

.method protected g(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/chartboost/sdk/d;->g(Lcom/chartboost/sdk/Model/a;)V

    .line 76
    return-void
.end method

.method protected i(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-super {p0, p1}, Lcom/chartboost/sdk/d;->i(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/aj;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/interstitial/show"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/h;->e:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 242
    return-object v0
.end method
