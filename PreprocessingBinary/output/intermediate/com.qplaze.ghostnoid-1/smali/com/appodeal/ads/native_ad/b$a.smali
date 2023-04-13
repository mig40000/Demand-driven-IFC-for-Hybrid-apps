.class Lcom/appodeal/ads/native_ad/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/native_ad/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/native_ad/b;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/native_ad/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/b$a;->a:Lcom/appodeal/ads/native_ad/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/native_ad/b;Lcom/appodeal/ads/native_ad/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/native_ad/b$a;-><init>(Lcom/appodeal/ads/native_ad/b;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/b;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;III)V
    .locals 17

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appodeal/ads/native_ad/b$a;->a:Lcom/appodeal/ads/native_ad/b;

    new-instance v5, Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v4, v5}, Lcom/appodeal/ads/native_ad/b;->a(Lcom/appodeal/ads/native_ad/b;Ljava/util/List;)Ljava/util/List;

    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v4, Lcom/appodeal/ads/native_ad/b$b;

    const-string v5, "title"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cta"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "star_rating"

    const-wide/16 v10, 0x0

    invoke-virtual {v13, v8, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v8, v8

    const-string v9, "image_url"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "icon_url"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "click_url"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "simp_url"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "video_url"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/appodeal/ads/native_ad/b;->c()Lcom/appodeal/ads/ac;

    move-result-object v15

    move/from16 v14, p2

    invoke-direct/range {v4 .. v15}, Lcom/appodeal/ads/native_ad/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/appodeal/ads/ac;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/appodeal/ads/native_ad/b$a;->a:Lcom/appodeal/ads/native_ad/b;

    invoke-static {v5}, Lcom/appodeal/ads/native_ad/b;->a(Lcom/appodeal/ads/native_ad/b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appodeal/ads/native_ad/b$a;->a:Lcom/appodeal/ads/native_ad/b;

    invoke-static {}, Lcom/appodeal/ads/native_ad/b;->c()Lcom/appodeal/ads/ac;

    move-result-object v5

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v4, v0, v1, v5, v2}, Lcom/appodeal/ads/native_ad/b;->a(Lcom/appodeal/ads/native_ad/b;IILcom/appodeal/ads/ac;I)V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/native_ad/b;->c()Lcom/appodeal/ads/ac;

    move-result-object v4

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/appodeal/ads/native_ad/b;->c()Lcom/appodeal/ads/ac;

    move-result-object v5

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    invoke-static {v4}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
