.class public Lcom/appodeal/ads/utils/m;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "click_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/utils/m;->a:I

    const-string v0, "show_interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/appodeal/ads/utils/m;->b:I

    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/utils/m;->c:I

    :cond_0
    const-string v0, "click_interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/appodeal/ads/utils/m;->d:I

    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/utils/m;->e:I

    :cond_1
    const-string v0, "show_eq_click_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/utils/m;->f:I

    iget v0, p0, Lcom/appodeal/ads/utils/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/appodeal/ads/utils/m;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/utils/m;->i:I

    iget v0, p0, Lcom/appodeal/ads/utils/m;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/appodeal/ads/utils/m;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/utils/m;->j:I

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/appodeal/ads/utils/m;->i:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/appodeal/ads/utils/m;->j:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/utils/m;->k:I

    return-void
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/appodeal/ads/utils/m;->i:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/m;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sus_show_interval"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/m;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/m;->l:Ljava/lang/String;

    return-void
.end method

.method b()J
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/appodeal/ads/utils/m;->j:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/m;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sus_click_interval"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/m;->e(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/utils/m;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "show_eq_click"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/m;->e(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/utils/m;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "sus_click"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/m;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/m;->m:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/m;->n:Ljava/lang/String;

    return-void
.end method

.method c()Z
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/appodeal/ads/utils/m;->c:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/appodeal/ads/utils/m;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v1, v2

    :goto_0
    if-lez v3, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget v0, p0, Lcom/appodeal/ads/utils/m;->b:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_1
    iget v1, p0, Lcom/appodeal/ads/utils/m;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/m;->o:Ljava/lang/String;

    return-void
.end method

.method d()Z
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/appodeal/ads/utils/m;->e:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/appodeal/ads/utils/m;->d:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v1, v2

    :goto_0
    if-lez v3, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget v0, p0, Lcom/appodeal/ads/utils/m;->d:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/utils/m;->e:I

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method e(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/m;->j()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/appodeal/ads/utils/m;->k:I

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/m;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/m;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/m;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/appodeal/ads/utils/b;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lcom/appodeal/ads/utils/m$1;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/utils/m$1;-><init>(Lcom/appodeal/ads/utils/m;Lorg/json/JSONObject;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method e()Z
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/appodeal/ads/utils/m;->f:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v5, v0

    move v6, v2

    move v0, v4

    :goto_0
    if-ltz v5, :cond_3

    move v3, v2

    move v4, v0

    :goto_1
    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-lez v0, :cond_0

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    if-ne v3, v1, :cond_1

    add-int/lit8 v3, v6, 0x1

    iget v0, p0, Lcom/appodeal/ads/utils/m;->f:I

    if-lt v3, v0, :cond_2

    move v0, v1

    :goto_2
    return v0

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move v6, v3

    move v0, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v6, 0x1

    iget v3, p0, Lcom/appodeal/ads/utils/m;->f:I

    if-lt v0, v3, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method f()Z
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/m;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/m;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget v2, p0, Lcom/appodeal/ads/utils/m;->a:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/m;->o:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
