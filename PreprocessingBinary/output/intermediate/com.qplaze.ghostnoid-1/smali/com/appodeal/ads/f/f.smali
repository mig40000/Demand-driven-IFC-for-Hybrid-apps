.class public Lcom/appodeal/ads/f/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/f/f$a;
    }
.end annotation


# instance fields
.field final a:Lcom/appodeal/ads/f/a;

.field final b:[Lcom/appodeal/ads/f/e;

.field private final c:J

.field private final d:Lorg/json/JSONArray;

.field private final e:Lcom/appodeal/ads/f/f$a;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/appodeal/ads/f/f;->c:J

    const-string v0, "match_rule"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/f/a;->a(Ljava/lang/String;)Lcom/appodeal/ads/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/f;->a:Lcom/appodeal/ads/f/a;

    const-string v0, "rules"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/appodeal/ads/f/e;

    iput-object v1, p0, Lcom/appodeal/ads/f/f;->b:[Lcom/appodeal/ads/f/e;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/f/f;->a(Lorg/json/JSONArray;)V

    :goto_0
    const-string v0, "placements"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/f;->d:Lorg/json/JSONArray;

    new-instance v0, Lcom/appodeal/ads/f/f$a;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/f/f$a;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/appodeal/ads/f/f;->e:Lcom/appodeal/ads/f/f$a;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/f/f;->b:[Lcom/appodeal/ads/f/e;

    goto :goto_0
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/f/f;->b:[Lcom/appodeal/ads/f/e;

    new-instance v2, Lcom/appodeal/ads/f/e;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/appodeal/ads/f/e;-><init>(Lorg/json/JSONObject;)V

    aput-object v2, v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/appodeal/ads/f/f;->d:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/f/f;->d:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/f/f;->d:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "settings"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v4, Lcom/appodeal/ads/f/d;->a:Ljava/util/Map;

    new-instance v5, Lcom/appodeal/ads/f/c;

    invoke-direct {v5, v2, v3, v1}, Lcom/appodeal/ads/f/c;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Lcom/appodeal/ads/f/f$a;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/f/f;->e:Lcom/appodeal/ads/f/f$a;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/f/f;->c:J

    return-wide v0
.end method
