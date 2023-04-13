.class Lcom/appodeal/ads/native_ad/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/native_ad/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/native_ad/n;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/native_ad/n;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/n$a;->a:Lcom/appodeal/ads/native_ad/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/native_ad/n;Lcom/appodeal/ads/native_ad/n$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/native_ad/n$a;-><init>(Lcom/appodeal/ads/native_ad/n;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/n;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    return-void
.end method

.method public a(Landroid/util/Pair;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/networks/u;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/appodeal/ads/networks/u;->a:Ljava/lang/String;

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "success"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/native_ad/n;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "SNAST"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v0, "mainimage"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "iconimage"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "beacons"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/appodeal/ads/native_ad/n$b;

    const-string v1, "adtitle"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtext"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ctatext"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "starrating"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v4, v10

    const-string v9, "clickurl"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/appodeal/ads/native_ad/n;->c()Lcom/appodeal/ads/ac;

    move-result-object v10

    move v9, p2

    invoke-direct/range {v0 .. v10}, Lcom/appodeal/ads/native_ad/n$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILcom/appodeal/ads/ac;)V

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/n$a;->a:Lcom/appodeal/ads/native_ad/n;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/appodeal/ads/native_ad/n$a;->a:Lcom/appodeal/ads/native_ad/n;

    invoke-static {v3}, Lcom/appodeal/ads/native_ad/n;->a(Lcom/appodeal/ads/native_ad/n;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v2}, Lcom/appodeal/ads/native_ad/n;->a(Lcom/appodeal/ads/native_ad/n;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/n$a;->a:Lcom/appodeal/ads/native_ad/n;

    invoke-static {v1}, Lcom/appodeal/ads/native_ad/n;->b(Lcom/appodeal/ads/native_ad/n;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/n$a;->a:Lcom/appodeal/ads/native_ad/n;

    invoke-static {}, Lcom/appodeal/ads/native_ad/n;->c()Lcom/appodeal/ads/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/native_ad/n$a;->a:Lcom/appodeal/ads/native_ad/n;

    invoke-static {v2}, Lcom/appodeal/ads/native_ad/n;->a(Lcom/appodeal/ads/native_ad/n;)I

    move-result v2

    invoke-static {v0, p2, p3, v1, v2}, Lcom/appodeal/ads/native_ad/n;->a(Lcom/appodeal/ads/native_ad/n;IILcom/appodeal/ads/ac;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/native_ad/n;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    goto/16 :goto_0
.end method
