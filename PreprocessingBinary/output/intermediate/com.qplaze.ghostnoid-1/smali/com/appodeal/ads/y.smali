.class public Lcom/appodeal/ads/y;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/appodeal/ads/y;->a(Z)V

    return-void
.end method

.method private static a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/appodeal/ads/y;->a(ILcom/appodeal/ads/d/h;)V

    return-void
.end method

.method public static a(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;Z)V

    return-void
.end method

.method public static a(IILcom/appodeal/ads/w;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/appodeal/ads/y;->a(IILcom/appodeal/ads/w;ZZ)V

    return-void
.end method

.method public static a(IILcom/appodeal/ads/w;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/appodeal/ads/y;->a(IILcom/appodeal/ads/w;ZZ)V

    return-void
.end method

.method public static a(IILcom/appodeal/ads/w;ZZ)V
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    sget v1, Lcom/appodeal/ads/v;->e:I

    if-ne p0, v1, :cond_0

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->h:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/appodeal/ads/aa;->y:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    iget v1, v0, Lcom/appodeal/ads/aa;->y:I

    const/4 v4, -0x2

    if-eq v1, v4, :cond_2

    iget v1, v0, Lcom/appodeal/ads/aa;->y:I

    if-ge p1, v1, :cond_0

    :cond_2
    iput p1, v0, Lcom/appodeal/ads/aa;->y:I

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->t:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appodeal/ads/aa;->u:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v1

    instance-of v1, v1, Lcom/appodeal/ads/c/q;

    if-nez v1, :cond_3

    if-eqz p4, :cond_0

    :cond_3
    iget-object v1, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v4, "ecpm"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v4, "ecpm"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/appodeal/ads/aa;->b:D

    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%s onMrecLoaded, eCPM: %.2f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appodeal/ads/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v0, Lcom/appodeal/ads/aa;->b:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_10

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->s:Z

    :goto_1
    iget-object v1, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v4, "offer"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->t:Z

    :cond_5
    invoke-virtual {p2}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appodeal/ads/aa;->o:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v1

    instance-of v1, v1, Lcom/appodeal/ads/c/q;

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appodeal/ads/aa;->n:Ljava/lang/String;

    :cond_6
    :goto_2
    iput-object p2, v0, Lcom/appodeal/ads/aa;->p:Lcom/appodeal/ads/w;

    if-eqz p3, :cond_7

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->q:Z

    :cond_8
    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->f()Z

    move-result v6

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->a()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    if-nez v6, :cond_12

    move v5, v2

    :goto_3
    if-eqz v5, :cond_13

    if-eqz p3, :cond_13

    move v4, v2

    :goto_4
    if-nez v4, :cond_14

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->t:Z

    if-nez v1, :cond_14

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->z:Z

    if-nez v1, :cond_14

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->A:Z

    if-eqz v1, :cond_14

    move v1, v2

    :goto_5
    sget-boolean v7, Lcom/appodeal/ads/AppodealSettings;->i:Z

    if-nez v7, :cond_18

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appodeal/ads/f/f;->b()Lcom/appodeal/ads/f/f$a;

    move-result-object v7

    const/16 v8, 0x100

    invoke-virtual {v7, v8}, Lcom/appodeal/ads/f/f$a;->b(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_18

    if-eqz v1, :cond_15

    :try_start_1
    iget-object v1, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v4, "ecpm"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/appodeal/ads/v;->a(ILjava/lang/Double;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_6
    if-eqz p3, :cond_a

    :try_start_2
    sget-boolean v1, Lcom/appodeal/ads/v;->m:Z

    if-eqz v1, :cond_b

    :cond_a
    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->g:Z

    if-nez v1, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->g:Z

    sget-object v1, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/MrecCallbacks;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v4, Lcom/appodeal/ads/y$1;

    invoke-direct {v4, p3}, Lcom/appodeal/ads/y$1;-><init>(Z)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    if-eqz v5, :cond_1c

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->t:Z

    if-nez v1, :cond_c

    if-eqz p3, :cond_1c

    :cond_c
    move v1, v2

    :goto_7
    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/appodeal/ads/v;->b(I)V

    :cond_d
    if-eqz v6, :cond_f

    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->r:Z

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v3, 0x100

    iget-object v4, v0, Lcom/appodeal/ads/aa;->p:Lcom/appodeal/ads/w;

    invoke-virtual {v4}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->r:Z

    invoke-virtual {v1, v3, v4, v0}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Z)V

    :cond_e
    :goto_8
    new-instance v0, Lcom/appodeal/ads/x$b;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/x$b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/x$b;->b()Lcom/appodeal/ads/x$b;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/x$b;->a(Lcom/appodeal/ads/f/c;)Lcom/appodeal/ads/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/x$b;->a()Z

    :cond_f
    const/16 v0, 0x1388

    sput v0, Lcom/appodeal/ads/v;->n:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/appodeal/ads/y;->a(Z)V

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->r:Z

    goto/16 :goto_1

    :cond_11
    iget-object v1, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/g;->h()Lcom/appodeal/ads/d/h;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/g;->h()Lcom/appodeal/ads/d/h;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/appodeal/ads/d/h;->a(Z)V

    goto/16 :goto_2

    :cond_12
    move v5, v3

    goto/16 :goto_3

    :cond_13
    move v4, v3

    goto/16 :goto_4

    :cond_14
    move v1, v3

    goto/16 :goto_5

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->z:Z

    goto/16 :goto_6

    :cond_15
    if-nez v4, :cond_17

    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v4, 0x100

    invoke-virtual {p2}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v4, v7, v8}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Z)V

    :cond_16
    iget-object v1, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/g;->h()Lcom/appodeal/ads/d/h;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/appodeal/ads/y;->a(ILcom/appodeal/ads/d/h;)V

    goto/16 :goto_6

    :cond_17
    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v4, 0x100

    invoke-virtual {p2}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v0, Lcom/appodeal/ads/aa;->s:Z

    invoke-virtual {v1, v4, v7, v8}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Z)V

    goto/16 :goto_6

    :cond_18
    if-eqz p3, :cond_19

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->f()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_19
    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v4, 0x100

    invoke-virtual {p2}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v4, v7, v8}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Z)V

    :cond_1a
    invoke-static {p0}, Lcom/appodeal/ads/y;->a(I)V

    goto/16 :goto_6

    :cond_1b
    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v4, 0x100

    invoke-virtual {p2}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v0, Lcom/appodeal/ads/aa;->s:Z

    invoke-virtual {v1, v4, v7, v8}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Z)V

    goto/16 :goto_6

    :cond_1c
    move v1, v3

    goto/16 :goto_7

    :cond_1d
    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->s:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v3, 0x100

    invoke-virtual {p2}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->s:Z

    invoke-virtual {v1, v3, v4, v0}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8
.end method

.method private static a(ILcom/appodeal/ads/d/h;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v3, v0, Lcom/appodeal/ads/aa;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/appodeal/ads/aa;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, v0, Lcom/appodeal/ads/aa;->x:Z

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v3, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v4, 0x100

    iget-boolean v5, v0, Lcom/appodeal/ads/aa;->r:Z

    if-nez v5, :cond_3

    iget-boolean v5, v0, Lcom/appodeal/ads/aa;->s:Z

    if-eqz v5, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-virtual {v3, v4, v1}, Lcom/appodeal/ads/f;->a(IZ)V

    :cond_5
    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->A:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->z:Z

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->x:Z

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/appodeal/ads/d/h;->f()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/appodeal/ads/aa;->f:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/appodeal/ads/aa;->n:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/appodeal/ads/aa;->f:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/appodeal/ads/aa;->n:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v1, v0, Lcom/appodeal/ads/aa;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_8
    :try_start_1
    iget-object v1, v0, Lcom/appodeal/ads/aa;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_9
    :try_start_2
    const-string v1, "requests"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "success"

    iget-boolean v3, v0, Lcom/appodeal/ads/aa;->r:Z

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "precache_requests"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "precache_success"

    iget-boolean v3, v0, Lcom/appodeal/ads/aa;->s:Z

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Lcom/appodeal/ads/d/h;->b(Lorg/json/JSONObject;)V

    :cond_a
    new-instance v2, Lcom/appodeal/ads/t$c;

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const-string v4, "stats"

    invoke-direct {v2, v3, p0, v4}, Lcom/appodeal/ads/t$c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v1

    iget-object v2, v0, Lcom/appodeal/ads/aa;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/t$c;->b(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/d/h;)Lcom/appodeal/ads/t$c;

    move-result-object v1

    iget-object v0, v0, Lcom/appodeal/ads/aa;->a:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/Long;)Lcom/appodeal/ads/t$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t$c;->a()Lcom/appodeal/ads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t;->a()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public static a(ILcom/appodeal/ads/w;)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->h:Z

    if-nez v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->h:Z

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s onMrecShown, eCPM: %.2f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appodeal/ads/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, v0, Lcom/appodeal/ads/aa;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-boolean v2, Lcom/appodeal/ads/AppodealSettings;->i:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/g;->h()Lcom/appodeal/ads/d/h;

    move-result-object v1

    iget-boolean v2, v0, Lcom/appodeal/ads/aa;->x:Z

    if-nez v2, :cond_0

    invoke-static {p0, v1}, Lcom/appodeal/ads/y;->a(ILcom/appodeal/ads/d/h;)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/appodeal/ads/aa;->r:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/appodeal/ads/aa;->s:Z

    invoke-virtual {p1}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/z;->f()V

    sget v2, Lcom/appodeal/ads/v;->u:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/appodeal/ads/v;->u:I

    new-instance v2, Lcom/appodeal/ads/t$c;

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const-string v4, "show"

    invoke-direct {v2, v3, p0, v4}, Lcom/appodeal/ads/t$c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sget-object v3, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/f/c;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    new-instance v3, Lcom/appodeal/ads/utils/v;

    invoke-direct {v3}, Lcom/appodeal/ads/utils/v;-><init>()V

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/t$a;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    iget-object v3, v0, Lcom/appodeal/ads/aa;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    iget-object v3, v0, Lcom/appodeal/ads/aa;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->b(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    iget-object v3, v0, Lcom/appodeal/ads/aa;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->c(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/d/h;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->h()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/appodeal/ads/t$c;->a(J)Lcom/appodeal/ads/t$c;

    move-result-object v2

    const-string v3, "banner_mrec"

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->d(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    iget-object v3, v0, Lcom/appodeal/ads/aa;->a:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/Long;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/f/f;->b()Lcom/appodeal/ads/f/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/f/f$a;->k()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/appodeal/ads/t$c;->a(D)Lcom/appodeal/ads/t$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/t$c;->a()Lcom/appodeal/ads/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/t;->a()V

    invoke-virtual {p1}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v2

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-virtual {v2, v3, p0}, Lcom/appodeal/ads/z;->a(Landroid/app/Activity;I)V

    sget-object v2, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    iget-object v3, v0, Lcom/appodeal/ads/aa;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/utils/m;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/appodeal/ads/d/h;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/h;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/utils/m;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/z;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    invoke-virtual {v3, v2}, Lcom/appodeal/ads/utils/m;->c(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/appodeal/ads/utils/m;->a(J)V

    :cond_2
    sget-boolean v2, Lcom/appodeal/ads/v;->y:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/z;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v1, v0, v2}, Lcom/appodeal/ads/y;->b(Lcom/appodeal/ads/d/h;Lcom/appodeal/ads/aa;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->a()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/appodeal/ads/v;->l:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/appodeal/ads/v;->a()Lcom/appodeal/ads/aa;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/c/c;->h()Lcom/appodeal/ads/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/appodeal/ads/x$a;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/x$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/x$a;->c()Lcom/appodeal/ads/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/x$a;->a()V

    :cond_5
    :goto_2
    sget-boolean v0, Lcom/appodeal/ads/v;->l:Z

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appodeal/ads/y$9;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/y$9;-><init>(I)V

    invoke-static {}, Lcom/appodeal/ads/v;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    sget-object v0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/MrecCallbacks;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/y$10;

    invoke-direct {v1}, Lcom/appodeal/ads/y$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    sget-object v2, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    iget-object v3, v0, Lcom/appodeal/ads/aa;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/utils/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    :try_start_1
    invoke-virtual {p1}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/z;->c()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Lcom/appodeal/ads/y$8;

    invoke-direct {v3, v0}, Lcom/appodeal/ads/y$8;-><init>(Lcom/appodeal/ads/aa;)V

    invoke-static {v2, v1, v3}, Lcom/appodeal/ads/utils/w;->a(Landroid/view/ViewGroup;Lcom/appodeal/ads/d/h;Lcom/appodeal/ads/utils/w$a;)V

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appodeal/ads/v;->b(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static a(ILcom/appodeal/ads/w;Lcom/appodeal/ads/t$a;)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->h:Z

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/appodeal/ads/y;->a(ILcom/appodeal/ads/w;)V

    :cond_0
    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->i:Z

    if-nez v1, :cond_1

    sget v1, Lcom/appodeal/ads/v;->B:I

    if-lez v1, :cond_1

    invoke-static {p0, p1}, Lcom/appodeal/ads/y;->b(ILcom/appodeal/ads/w;)V

    :cond_1
    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->j:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->j:Z

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s onMrecClicked, eCPM: %.2f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appodeal/ads/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, v0, Lcom/appodeal/ads/aa;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/appodeal/ads/utils/m;->b(J)V

    :cond_2
    const/4 v1, 0x0

    sget-boolean v2, Lcom/appodeal/ads/AppodealSettings;->i:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v2

    instance-of v2, v2, Lcom/appodeal/ads/c/q;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/g;->h()Lcom/appodeal/ads/d/h;

    move-result-object v1

    :cond_3
    sget v2, Lcom/appodeal/ads/v;->v:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/appodeal/ads/v;->v:I

    new-instance v2, Lcom/appodeal/ads/t$c;

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const-string v4, "click"

    invoke-direct {v2, v3, p0, v4}, Lcom/appodeal/ads/t$c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sget-object v3, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/f/c;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/t$a;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    iget-object v3, v0, Lcom/appodeal/ads/aa;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    iget-object v3, v0, Lcom/appodeal/ads/aa;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->b(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    iget-object v3, v0, Lcom/appodeal/ads/aa;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->c(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/d/h;)Lcom/appodeal/ads/t$c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/appodeal/ads/t$c;->a(J)Lcom/appodeal/ads/t$c;

    move-result-object v1

    const-string v2, "banner_mrec"

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/t$c;->d(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v1

    iget-object v0, v0, Lcom/appodeal/ads/aa;->a:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/Long;)Lcom/appodeal/ads/t$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t$c;->a()Lcom/appodeal/ads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t;->a()V

    invoke-virtual {p1}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/appodeal/ads/z;->b(Landroid/app/Activity;I)V

    sget-object v0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/MrecCallbacks;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/y$2;

    invoke-direct {v1}, Lcom/appodeal/ads/y$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-eqz p2, :cond_4

    invoke-interface {p2, p0}, Lcom/appodeal/ads/t$a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/appodeal/ads/d/h;Lcom/appodeal/ads/aa;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/appodeal/ads/y;->b(Lcom/appodeal/ads/d/h;Lcom/appodeal/ads/aa;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 4

    :try_start_0
    const-string v0, "onMrecFailedToLoad"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->r:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->s:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->q:Z

    :cond_0
    sget-boolean v0, Lcom/appodeal/ads/v;->l:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appodeal/ads/y$3;

    invoke-direct {v1}, Lcom/appodeal/ads/y$3;-><init>()V

    sget v2, Lcom/appodeal/ads/v;->n:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/MrecCallbacks;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/y$4;

    invoke-direct {v1}, Lcom/appodeal/ads/y$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(IILcom/appodeal/ads/w;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;Z)V

    return-void
.end method

.method public static b(IILcom/appodeal/ads/w;Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, -0x2

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    sget v1, Lcom/appodeal/ads/v;->e:I

    if-ne p0, v1, :cond_0

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->h:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/appodeal/ads/AppodealSettings;->i:Z

    if-nez v1, :cond_2

    iget v1, v0, Lcom/appodeal/ads/aa;->y:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->x:Z

    if-nez v1, :cond_2

    if-ne p1, v2, :cond_2

    iget-object v0, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    invoke-virtual {v0}, Lcom/appodeal/ads/d/g;->h()Lcom/appodeal/ads/d/h;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/y;->a(ILcom/appodeal/ads/d/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {v10}, Lcom/appodeal/ads/y;->a(Z)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v1, v0, Lcom/appodeal/ads/aa;->y:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, v0, Lcom/appodeal/ads/aa;->y:I

    if-ge p1, v1, :cond_0

    :cond_3
    iput p1, v0, Lcom/appodeal/ads/aa;->y:I

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->a()Z

    move-result v1

    iget-boolean v2, v0, Lcom/appodeal/ads/aa;->t:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "-1"

    iput-object v1, v0, Lcom/appodeal/ads/aa;->u:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/appodeal/ads/v;->b(I)V

    goto :goto_0

    :cond_5
    if-nez p2, :cond_7

    const-string v2, "onMrecFailedToLoad"

    invoke-static {v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/appodeal/ads/aa;->r:Z

    if-eqz p3, :cond_9

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p0}, Lcom/appodeal/ads/v;->a(I)V

    goto :goto_0

    :cond_7
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%s onMrecFailedToLoad, eCPM: %.2f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appodeal/ads/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v7, "ecpm"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v3, 0x100

    invoke-virtual {p2}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Z)V

    goto :goto_1

    :cond_8
    iget-object v0, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/appodeal/ads/v;->b(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/appodeal/ads/aa;->q:Z

    invoke-static {p0}, Lcom/appodeal/ads/y;->a(I)V

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/appodeal/ads/v;->l:Z

    if-eqz v1, :cond_a

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->s:Z

    if-eqz v1, :cond_b

    const/16 v1, 0x7530

    :goto_2
    new-instance v3, Lcom/appodeal/ads/y$5;

    invoke-direct {v3}, Lcom/appodeal/ads/y$5;-><init>()V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    sget-object v1, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/MrecCallbacks;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->s:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/y$6;

    invoke-direct {v1}, Lcom/appodeal/ads/y$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_b
    sget v1, Lcom/appodeal/ads/v;->n:I

    goto :goto_2

    :cond_c
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/y$7;

    invoke-direct {v1}, Lcom/appodeal/ads/y$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_d
    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/appodeal/ads/v;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static b(ILcom/appodeal/ads/w;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-boolean v1, v0, Lcom/appodeal/ads/aa;->i:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->i:Z

    invoke-virtual {p1}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/z;->b()V

    const/4 v1, 0x0

    sget-boolean v2, Lcom/appodeal/ads/AppodealSettings;->i:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v2

    instance-of v2, v2, Lcom/appodeal/ads/c/q;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/g;->h()Lcom/appodeal/ads/d/h;

    move-result-object v1

    :cond_0
    new-instance v2, Lcom/appodeal/ads/t$c;

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const-string v4, "finish"

    invoke-direct {v2, v3, p0, v4}, Lcom/appodeal/ads/t$c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sget-object v3, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/f/c;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    new-instance v3, Lcom/appodeal/ads/utils/v;

    invoke-direct {v3}, Lcom/appodeal/ads/utils/v;-><init>()V

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/t$a;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    iget-object v3, v0, Lcom/appodeal/ads/aa;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    iget-object v3, v0, Lcom/appodeal/ads/aa;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->b(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    iget-object v3, v0, Lcom/appodeal/ads/aa;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/t$c;->c(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/d/h;)Lcom/appodeal/ads/t$c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/appodeal/ads/t$c;->a(J)Lcom/appodeal/ads/t$c;

    move-result-object v1

    const-string v2, "banner_mrec"

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/t$c;->d(Ljava/lang/String;)Lcom/appodeal/ads/t$c;

    move-result-object v1

    iget-object v0, v0, Lcom/appodeal/ads/aa;->a:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/Long;)Lcom/appodeal/ads/t$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t$c;->a()Lcom/appodeal/ads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Lcom/appodeal/ads/d/h;Lcom/appodeal/ads/aa;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x100

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/d/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/a;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/appodeal/ads/aa;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appodeal/ads/d/h;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/appodeal/ads/aa;->o:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/utils/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/a;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appodeal/ads/utils/a;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v2, p1, Lcom/appodeal/ads/aa;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/appodeal/ads/aa;->n:Ljava/lang/String;

    iget-object v4, p1, Lcom/appodeal/ads/aa;->o:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/utils/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/a;->b()V

    goto :goto_0
.end method

.method public static c(ILcom/appodeal/ads/w;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/appodeal/ads/y;->a(ILcom/appodeal/ads/w;Lcom/appodeal/ads/t$a;)V

    return-void
.end method
