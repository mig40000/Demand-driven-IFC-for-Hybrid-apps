.class public Lcom/chartboost/sdk/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/chartboost/sdk/Libraries/g;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/Executor;

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

.field private final e:Lcom/chartboost/sdk/Tracking/a;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/chartboost/sdk/Model/a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/chartboost/sdk/Model/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/chartboost/sdk/Model/a;",
            "Lcom/chartboost/sdk/impl/f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/chartboost/sdk/Libraries/h;

.field private m:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/Tracking/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;",
            "Lcom/chartboost/sdk/Tracking/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/b;->m:Z

    .line 152
    new-instance v0, Lcom/chartboost/sdk/Libraries/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Libraries/g;-><init>(Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    .line 153
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    .line 154
    iput-object p1, p0, Lcom/chartboost/sdk/impl/b;->c:Ljava/util/concurrent/Executor;

    .line 155
    iput-object p2, p0, Lcom/chartboost/sdk/impl/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    iput-object p3, p0, Lcom/chartboost/sdk/impl/b;->e:Lcom/chartboost/sdk/Tracking/a;

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b;->f:Ljava/util/Set;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b;->g:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b;->h:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b;->i:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b;->j:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b;->k:Ljava/util/Map;

    .line 168
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 170
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->e()V

    .line 171
    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 3

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/f;

    .line 417
    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    iput-object v2, v0, Lcom/chartboost/sdk/impl/f;->c:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 418
    iget-object v2, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 421
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 424
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 425
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 289
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->e()V

    .line 295
    :cond_0
    const-string v0, "template"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    const-string v0, "AssetManager"

    const-string v1, "Template manifest does not have a templateId"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 398
    if-eqz v7, :cond_1

    .line 407
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 408
    new-instance v0, Lcom/chartboost/sdk/impl/f;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/f;-><init>(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/Map;Landroid/os/Handler;)V

    .line 409
    iput-object v7, v0, Lcom/chartboost/sdk/impl/f;->c:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 410
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_2
    :try_start_3
    const-string v0, "elements"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 303
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 304
    const-string v0, "AssetManager"

    const-string v1, "Template manifest does not have any elements"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 398
    if-eqz v7, :cond_1

    .line 407
    :try_start_4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 408
    new-instance v0, Lcom/chartboost/sdk/impl/f;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/f;-><init>(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/Map;Landroid/os/Handler;)V

    .line 409
    iput-object v7, v0, Lcom/chartboost/sdk/impl/f;->c:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 410
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 309
    :cond_3
    :try_start_5
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 310
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 313
    const/4 v0, 0x0

    move-object v2, v6

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 314
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 315
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 316
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    const-string v10, "value"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 318
    const-string v11, "param"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 321
    const-string v1, "html"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, v3

    .line 347
    :goto_2
    const-string v2, "param"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    iget-object v9, v9, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    invoke-direct {v3, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 352
    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    goto :goto_1

    .line 324
    :cond_5
    const-string v11, "param"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 333
    invoke-interface {v4, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_2

    .line 344
    :cond_6
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v1, v2

    goto :goto_2

    .line 356
    :cond_8
    if-nez v2, :cond_9

    .line 357
    const-string v0, "AssetManager"

    const-string v1, "Template manifest does not have an html element"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 398
    if-eqz v7, :cond_1

    .line 407
    :try_start_6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 408
    new-instance v0, Lcom/chartboost/sdk/impl/f;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/f;-><init>(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/Map;Landroid/os/Handler;)V

    .line 409
    iput-object v7, v0, Lcom/chartboost/sdk/impl/f;->c:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 410
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 363
    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 364
    if-eqz v0, :cond_b

    .line 365
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 367
    if-eqz v1, :cond_a

    .line 368
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 369
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 395
    :catch_0
    move-exception v0

    .line 396
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "requestTemplate"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 398
    if-eqz v7, :cond_1

    .line 407
    :try_start_9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 408
    new-instance v0, Lcom/chartboost/sdk/impl/f;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/f;-><init>(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/Map;Landroid/os/Handler;)V

    .line 409
    iput-object v7, v0, Lcom/chartboost/sdk/impl/f;->c:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 410
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 373
    :cond_b
    :try_start_a
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 374
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 376
    if-nez v1, :cond_c

    .line 377
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 378
    iget-object v5, p0, Lcom/chartboost/sdk/impl/b;->j:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_c
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 398
    :catchall_1
    move-exception v0

    move-object v6, v0

    if-eqz v7, :cond_d

    .line 407
    :try_start_b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 408
    new-instance v0, Lcom/chartboost/sdk/impl/f;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/f;-><init>(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/Map;Landroid/os/Handler;)V

    .line 409
    iput-object v7, v0, Lcom/chartboost/sdk/impl/f;->c:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 410
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    :cond_d
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 382
    :cond_e
    :try_start_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->i:Ljava/util/Map;

    invoke-interface {v0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_f
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 386
    new-instance v0, Lcom/chartboost/sdk/impl/f;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/f;-><init>(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/Map;Landroid/os/Handler;)V

    .line 387
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 389
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 394
    :goto_5
    const/4 v7, 0x0

    .line 398
    if-eqz v6, :cond_1

    .line 407
    :try_start_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 408
    new-instance v0, Lcom/chartboost/sdk/impl/f;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/f;-><init>(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;Ljava/io/File;Ljava/util/Map;Landroid/os/Handler;)V

    .line 409
    iput-object v7, v0, Lcom/chartboost/sdk/impl/f;->c:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 410
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 392
    :cond_10
    :try_start_e
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->k:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_5
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->e()V

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    const-string v0, "AssetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring registerFile for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->h:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 247
    if-eqz v0, :cond_4

    .line 248
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 250
    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerFile"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 259
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->j:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 260
    if-eqz v0, :cond_1

    .line 261
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;

    .line 262
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 263
    if-eqz v1, :cond_5

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 264
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/f;

    .line 266
    if-eqz v0, :cond_5

    .line 267
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->e()V

    .line 178
    :cond_0
    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 182
    const-string v0, "elements"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 184
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_4

    .line 185
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 186
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    const-string v8, "param"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "param"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 193
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    iget-object v7, v7, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 195
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerTemplateManifest"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 199
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->f:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 201
    if-eqz v0, :cond_6

    .line 202
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 204
    if-eqz v1, :cond_5

    .line 205
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 206
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 211
    :cond_6
    :try_start_3
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->f:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->g:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 217
    if-nez v1, :cond_8

    .line 218
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 219
    iget-object v4, p0, Lcom/chartboost/sdk/impl/b;->h:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_8
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public a(Lorg/json/JSONObject;Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 471
    :try_start_0
    const-string v1, "elements"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 472
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v0

    .line 473
    :goto_0
    if-ge v1, v3, :cond_1

    .line 474
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 475
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 476
    const-string v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 478
    const-string v6, "param"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 482
    const-string v1, "AssetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset for template does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_1
    return v0

    .line 473
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "allTemplateAssetsAvailable"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 491
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized b()Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/g;->d()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 433
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->e()V

    .line 436
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/g;->e()Lorg/json/JSONArray;

    move-result-object v1

    .line 437
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 438
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getWebViewCacheAssets"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    :cond_1
    monitor-exit p0

    return-object v2

    .line 440
    :cond_2
    :try_start_3
    const-string v0, "templates"

    invoke-static {v2, v0, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    const-string v1, "templates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 443
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v4

    iget-object v4, v4, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/g;->e()Lorg/json/JSONArray;

    move-result-object v4

    .line 445
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 446
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 447
    if-eqz v5, :cond_5

    .line 448
    array-length v6, v5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    .line 449
    const-string v8, ".nomedia"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 450
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 448
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 454
    :cond_5
    invoke-static {v2, v0, v4}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 507
    if-nez p1, :cond_0

    move v0, v1

    .line 527
    :goto_0
    return v0

    .line 510
    :cond_0
    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 512
    if-nez v2, :cond_1

    move v0, v1

    .line 513
    goto :goto_0

    .line 515
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v0

    .line 517
    if-eqz v0, :cond_2

    const-string v0, "video-portrait"

    :goto_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 519
    if-nez v0, :cond_3

    move v0, v1

    .line 520
    goto :goto_0

    .line 517
    :cond_2
    const-string v0, "video-landscape"

    goto :goto_1

    .line 522
    :cond_3
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 524
    goto :goto_0

    .line 526
    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v2

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/h;->g:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 527
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized c()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/g;->e()Lorg/json/JSONArray;

    move-result-object v1

    .line 496
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/h;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 497
    if-eqz v2, :cond_1

    .line 498
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 499
    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 500
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_1
    monitor-exit p0

    return-object v1

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 24

    .prologue
    .line 531
    monitor-enter p0

    const/4 v3, 0x0

    .line 533
    :try_start_0
    const-string v2, "AssetManager"

    const-string v4, "########### Trimming the disk cache"

    invoke-static {v2, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v2

    iget-object v5, v2, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    .line 537
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 538
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 539
    if-eqz v7, :cond_3

    array-length v2, v7

    if-lez v2, :cond_3

    .line 540
    array-length v8, v7

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v8, :cond_3

    aget-object v2, v7, v4

    .line 541
    sget-object v9, Lcom/chartboost/sdk/Libraries/g$a;->j:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v9}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/chartboost/sdk/Libraries/g$a;->i:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v9}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/chartboost/sdk/Libraries/g$a;->h:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v9}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/chartboost/sdk/Libraries/g$a;->g:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v9}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "."

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 540
    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 548
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 549
    if-eqz v9, :cond_0

    .line 550
    array-length v10, v9

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_0

    aget-object v11, v9, v2

    .line 554
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".nomedia"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 555
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 562
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-array v9, v2, [Ljava/io/File;

    .line 563
    invoke-interface {v6, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 566
    array-length v2, v9

    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    .line 567
    new-instance v2, Lcom/chartboost/sdk/impl/b$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/chartboost/sdk/impl/b$1;-><init>(Lcom/chartboost/sdk/impl/b;)V

    invoke-static {v9, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 573
    :cond_4
    array-length v2, v9

    if-lez v2, :cond_d

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/impl/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/c;

    .line 576
    iget v4, v2, Lcom/chartboost/sdk/Model/c;->q:I

    int-to-long v10, v4

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v4

    iget-object v4, v4, Lcom/chartboost/sdk/Libraries/h;->g:Ljava/io/File;

    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/g;->c(Ljava/io/File;)J

    move-result-wide v6

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 579
    iget-object v14, v2, Lcom/chartboost/sdk/Model/c;->d:Ljava/util/List;

    .line 580
    const-string v4, "AssetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total local file count:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    const-string v4, "AssetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video Folder Size in bytes :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    const-string v4, "AssetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Max Bytes allowed:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    array-length v15, v9

    const/4 v4, 0x0

    move v8, v4

    move-wide v4, v6

    :goto_2
    if-ge v8, v15, :cond_d

    aget-object v16, v9, v8

    .line 584
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    sub-long v18, v12, v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v6

    .line 585
    iget v0, v2, Lcom/chartboost/sdk/Model/c;->s:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v6, v6, v18

    if-ltz v6, :cond_8

    const/4 v6, 0x1

    move v7, v6

    .line 586
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v17, ".tmp"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    .line 587
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    .line 588
    sget-object v6, Lcom/chartboost/sdk/Libraries/g$a;->b:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 589
    cmp-long v6, v4, v10

    if-lez v6, :cond_9

    if-eqz v19, :cond_9

    const/4 v6, 0x1

    .line 590
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_5

    if-nez v17, :cond_5

    if-nez v7, :cond_5

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v6, :cond_a

    :cond_5
    const/4 v6, 0x1

    .line 596
    :goto_5
    if-eqz v6, :cond_7

    .line 597
    if-eqz v19, :cond_6

    .line 598
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 599
    :cond_6
    const-string v6, "AssetManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Deleting file at path:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 601
    const/4 v3, 0x1

    .line 583
    :cond_7
    :goto_6
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto/16 :goto_2

    .line 585
    :cond_8
    const/4 v6, 0x0

    move v7, v6

    goto :goto_3

    .line 589
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 590
    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .line 603
    :cond_b
    const-string v6, "AssetManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to delete "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_6

    .line 611
    :catch_0
    move-exception v2

    .line 612
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "reduceCacheSize"

    invoke-static {v4, v5, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 614
    if-eqz v3, :cond_c

    .line 615
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/impl/b;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 618
    :cond_c
    :goto_7
    monitor-exit p0

    return-void

    .line 609
    :cond_d
    :try_start_3
    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->f()Lorg/json/JSONObject;

    move-result-object v2

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/chartboost/sdk/impl/b;->e:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v4, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 614
    if-eqz v3, :cond_c

    .line 615
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/impl/b;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 531
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 614
    :catchall_1
    move-exception v2

    if-eqz v3, :cond_e

    .line 615
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/impl/b;->e()V

    :cond_e
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized e()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 621
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/b;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 691
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/b;->m:Z

    .line 626
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 628
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 629
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 630
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 631
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 632
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 634
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 635
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 636
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 641
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/h;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 642
    if-eqz v2, :cond_2

    .line 643
    array-length v4, v2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v2, v0

    .line 644
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 645
    iget-object v6, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v6, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v5

    .line 646
    if-eqz v5, :cond_1

    .line 647
    invoke-virtual {p0, v5}, Lcom/chartboost/sdk/impl/b;->a(Lorg/json/JSONObject;)V

    .line 643
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/h;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    .line 657
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 658
    if-eqz v4, :cond_6

    .line 659
    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_6

    aget-object v0, v4, v2

    .line 660
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 661
    sget-object v7, Lcom/chartboost/sdk/Libraries/g$a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v7}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/chartboost/sdk/Libraries/g$a;->j:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v7}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/chartboost/sdk/Libraries/g$a;->i:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v7}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/chartboost/sdk/Libraries/g$a;->h:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v7}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/chartboost/sdk/Libraries/g$a;->g:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v7}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 659
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 669
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 670
    if-eqz v7, :cond_3

    .line 671
    array-length v8, v7

    move v0, v1

    :goto_3
    if-ge v0, v8, :cond_3

    aget-object v9, v7, v0

    .line 672
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 673
    const-string v10, ".nomedia"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 674
    invoke-virtual {p0, v6, v9}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 683
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/f;

    .line 684
    iget-object v2, v0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/f;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 686
    :catch_0
    move-exception v0

    .line 687
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateTemplatesFromCache"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 689
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/b;->m:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 689
    :cond_7
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/b;->m:Z

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/b;->m:Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
