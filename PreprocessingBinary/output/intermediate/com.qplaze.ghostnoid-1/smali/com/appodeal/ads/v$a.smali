.class Lcom/appodeal/ads/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/v$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/y;->a(Z)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-boolean v0, Lcom/appodeal/ads/v;->c:Z

    if-nez v0, :cond_0

    const-string v0, "mrec_disabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/v;->c:Z

    const-string v0, "Mrec disabled"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "main_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/y;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/appodeal/ads/y;->a(Z)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/appodeal/ads/v;->f:J

    sget-object v0, Lcom/appodeal/ads/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/appodeal/ads/v;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "precache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    move v0, v3

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    sget-object v4, Lcom/appodeal/ads/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_6

    move v0, v3

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    sget-object v4, Lcom/appodeal/ads/v;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const-string v0, "main_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "main_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/v;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    const-string v0, "rri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "rri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/appodeal/ads/v;->x:Z

    :cond_8
    const-string v0, "ad_watch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ad_watch"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/appodeal/ads/v;->y:Z

    :cond_9
    const-string v0, "afd"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/appodeal/ads/v;->B:I

    const-string v0, "refresh_period"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "refresh_period"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/v;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_a
    invoke-static {}, Lcom/appodeal/ads/v;->c()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "waterfall_cache_timeout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "waterfall_cache_timeout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/v;->b(Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_b
    const-string v0, "fraud_detector"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/appodeal/ads/utils/m;

    const-string v1, "fraud_detector"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/m;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    sget-object v0, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/utils/m;->a(I)V

    sget-object v0, Lcom/appodeal/ads/v;->C:Lcom/appodeal/ads/utils/m;

    invoke-static {}, Lcom/appodeal/ads/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/utils/m;->b(Ljava/lang/String;)V

    :cond_c
    invoke-static {p1}, Lcom/appodeal/ads/AppodealSettings;->a(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/appodeal/ads/v;->g:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/v;->i:Ljava/util/ArrayList;

    const/16 v4, 0x100

    invoke-static {v0, v1, v4}, Lcom/appodeal/ads/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    new-instance v1, Ljava/util/ArrayList;

    sget-object v4, Lcom/appodeal/ads/v;->i:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    sget-object v0, Lcom/appodeal/ads/v;->h:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/v;->j:Ljava/util/ArrayList;

    const/16 v4, 0x100

    invoke-static {v0, v1, v4}, Lcom/appodeal/ads/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    new-instance v1, Ljava/util/ArrayList;

    sget-object v4, Lcom/appodeal/ads/v;->j:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    const-string v0, "MREC"

    sget-object v1, Lcom/appodeal/ads/v;->i:Ljava/util/ArrayList;

    sget-object v4, Lcom/appodeal/ads/v;->j:Ljava/util/ArrayList;

    invoke-static {v0, v1, v4}, Lcom/appodeal/ads/an;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    invoke-static {}, Lcom/appodeal/ads/v;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appodeal/ads/aa;->m:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/f/f;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/appodeal/ads/aa;->a:Ljava/lang/Long;

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->i:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_e

    :try_start_2
    const-string v0, "rtb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    new-instance v4, Lcom/appodeal/ads/d/g;

    invoke-direct {v4, v1}, Lcom/appodeal/ads/d/g;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    const-string v1, "disable_rtb"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/d/g;->a(Z)V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    const-string v1, "for_kids"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/d/g;->b(Z)V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    const-string v1, "user_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/d/g;->a(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    const-string v1, "app_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/d/g;->b(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    const-string v1, "disable_rtb"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->z:Z

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->z:Z

    if-nez v0, :cond_d

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    sget-object v1, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/aa;

    iget-object v1, v1, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lcom/appodeal/ads/aa;->A:Z

    :cond_d
    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->g:Z

    if-eqz v0, :cond_e

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/appodeal/ads/v;->a(ILjava/lang/Double;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_e
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f;->a(I)V

    :cond_f
    invoke-static {}, Lcom/appodeal/ads/c/i;->h()Lcom/appodeal/ads/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/appodeal/ads/c/i;->h()Lcom/appodeal/ads/w;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, p2, v4}, Lcom/appodeal/ads/z;->a(Landroid/app/Activity;Lcom/appodeal/ads/w;IZ)V

    goto/16 :goto_0

    :cond_10
    move v1, v3

    goto :goto_3

    :cond_11
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f;->a(I)V

    :cond_12
    invoke-static {p2}, Lcom/appodeal/ads/v;->a(I)V

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f;->a(I)V

    :cond_14
    invoke-static {p2}, Lcom/appodeal/ads/v;->b(I)V

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/y;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
