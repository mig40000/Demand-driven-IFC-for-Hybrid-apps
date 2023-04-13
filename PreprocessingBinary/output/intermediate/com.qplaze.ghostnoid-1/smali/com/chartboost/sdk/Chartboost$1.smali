.class final Lcom/chartboost/sdk/Chartboost$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/chartboost/sdk/Chartboost$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/Chartboost$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 123
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v2

    if-nez v2, :cond_0

    .line 124
    const-class v27, Lcom/chartboost/sdk/h;

    monitor-enter v27

    .line 125
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v2

    if-nez v2, :cond_7

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/Chartboost$1;->a:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 127
    const-string v2, "Chartboost"

    const-string v3, "Activity object is null. Please pass a valid activity object"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    monitor-exit v27

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/Chartboost$1;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/chartboost/sdk/b;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    const-string v2, "Chartboost"

    const-string v3, "Permissions not set correctly"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    monitor-exit v27

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v2

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 134
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/Chartboost$1;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/chartboost/sdk/b;->c(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 135
    const-string v2, "Chartboost"

    const-string v3, "CBImpression Activity not added in your manifest.xml"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/Chartboost$1;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/Chartboost$1;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    :cond_4
    const-string v2, "Chartboost"

    const-string v3, "AppId or AppSignature is null. Please pass a valid id\'s"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    monitor-exit v27

    goto :goto_0

    .line 141
    :cond_5
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v14

    .line 142
    new-instance v2, Lcom/chartboost/sdk/impl/as;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/as;-><init>()V

    invoke-virtual {v14, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/as;

    .line 143
    new-instance v3, Lcom/chartboost/sdk/impl/at;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, Lcom/chartboost/sdk/impl/at;-><init>(Lcom/chartboost/sdk/impl/as;I)V

    invoke-virtual {v14, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/impl/af;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    invoke-static {}, Lcom/chartboost/sdk/impl/aa;->b()V

    .line 152
    invoke-interface {v3}, Lcom/chartboost/sdk/impl/af;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/Chartboost$1;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 159
    const-string v2, "cbPrefs"

    const/4 v4, 0x0

    invoke-virtual {v5, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 163
    :try_start_4
    const-string v2, "config"

    const-string v4, "{}"

    invoke-interface {v7, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 171
    :goto_1
    :try_start_5
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-direct {v6, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 172
    invoke-static {v6, v2, v7}, Lcom/chartboost/sdk/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 173
    new-instance v4, Lcom/chartboost/sdk/Model/c;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v14, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lcom/chartboost/sdk/Model/c;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 175
    :cond_6
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/c;

    invoke-static {v5, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Landroid/content/Context;Lcom/chartboost/sdk/Model/c;)V

    .line 176
    new-instance v2, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/ai;-><init>()V

    invoke-virtual {v14, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chartboost/sdk/impl/ai;

    .line 177
    new-instance v2, Lcom/chartboost/sdk/impl/ay;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/chartboost/sdk/Chartboost$1;->b:Ljava/lang/String;

    invoke-direct {v2, v5, v8}, Lcom/chartboost/sdk/impl/ay;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chartboost/sdk/impl/ay;

    .line 178
    new-instance v2, Lcom/chartboost/sdk/impl/ak;

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/ak;-><init>(Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ay;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V

    invoke-virtual {v14, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/chartboost/sdk/impl/ak;

    .line 179
    iget-object v13, v11, Lcom/chartboost/sdk/impl/ak;->f:Lcom/chartboost/sdk/Tracking/a;

    .line 180
    new-instance v2, Lcom/chartboost/sdk/impl/b;

    invoke-static {}, Lcom/chartboost/sdk/impl/aa;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-direct {v2, v5, v6, v13}, Lcom/chartboost/sdk/impl/b;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/Tracking/a;)V

    invoke-virtual {v14, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/chartboost/sdk/impl/b;

    .line 181
    new-instance v8, Lcom/chartboost/sdk/impl/d;

    move-object v10, v3

    move-object v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/chartboost/sdk/impl/d;-><init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/Tracking/a;)V

    invoke-virtual {v14, v8}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/chartboost/sdk/impl/d;

    .line 182
    new-instance v2, Lcom/chartboost/sdk/impl/e;

    move-object/from16 v0, v19

    invoke-direct {v2, v9, v0, v11, v6}, Lcom/chartboost/sdk/impl/e;-><init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v14, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/chartboost/sdk/impl/e;

    .line 183
    new-instance v14, Lcom/chartboost/sdk/h;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chartboost/sdk/Chartboost$1;->a:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/Chartboost$1;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/Chartboost$1;->c:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v11

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v13

    invoke-direct/range {v14 .. v26}, Lcom/chartboost/sdk/h;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;)V

    .line 196
    invoke-static {v14}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/h;)V

    .line 198
    iget-object v2, v11, Lcom/chartboost/sdk/impl/ak;->a:Lcom/chartboost/sdk/Libraries/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/c;->a()V

    .line 199
    invoke-virtual/range {v19 .. v19}, Lcom/chartboost/sdk/impl/d;->c()V

    .line 202
    new-instance v2, Lcom/chartboost/sdk/Chartboost$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v11, v1, v14}, Lcom/chartboost/sdk/Chartboost$1$1;-><init>(Lcom/chartboost/sdk/Chartboost$1;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/h;)V

    invoke-static {v14, v2, v11, v6, v7}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/b$a;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V

    .line 214
    :cond_7
    monitor-exit v27

    goto/16 :goto_0

    .line 153
    :catch_0
    move-exception v2

    .line 155
    const-string v3, "Chartboost"

    const-string v4, "Unable to start threads"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    monitor-exit v27

    goto/16 :goto_0

    .line 165
    :catch_1
    move-exception v2

    .line 166
    const-string v4, "Chartboost"

    const-string v6, "Unable to process config"

    invoke-static {v4, v6}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v14, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method
