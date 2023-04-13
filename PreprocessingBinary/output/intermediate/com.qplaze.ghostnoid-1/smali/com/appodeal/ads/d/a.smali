.class public Lcom/appodeal/ads/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/appodeal/ads/d/e;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Double;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:[Ljava/lang/Integer;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Integer;

.field private p:Ljava/lang/Integer;

.field private q:Lorg/json/JSONObject;

.field private r:Ljava/lang/Double;

.field private s:Lcom/appodeal/ads/d/j;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appodeal/ads/d/e;Lcom/appodeal/ads/d/j;)V
    .locals 5
    .param p3    # Lcom/appodeal/ads/d/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    iput-object p2, p0, Lcom/appodeal/ads/d/a;->a:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->c:Ljava/lang/String;

    const-string v0, "impid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->d:Ljava/lang/String;

    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->e:Ljava/lang/Double;

    const-string v0, "adid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->f:Ljava/lang/String;

    const-string v0, "adm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->h:Ljava/lang/String;

    const-string v0, "adomain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->i:[Ljava/lang/String;

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/appodeal/ads/d/a;->i:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "nurl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->g:Ljava/lang/String;

    const-string v0, "iurl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->j:Ljava/lang/String;

    const-string v0, "cid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->k:Ljava/lang/String;

    const-string v0, "crid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->l:Ljava/lang/String;

    const-string v0, "attr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    iput-object v2, p0, Lcom/appodeal/ads/d/a;->m:[Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/appodeal/ads/d/a;->m:[Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "dealid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->n:Ljava/lang/String;

    const-string v0, "w"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->o:Ljava/lang/Integer;

    const-string v0, "h"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->p:Ljava/lang/Integer;

    const-string v0, "ext"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/appodeal/ads/d/a;->b:Lcom/appodeal/ads/d/e;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_d

    const-string v0, "${AUCTION_ID}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "${AUCTION_ID}"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/j;->c()Lcom/appodeal/ads/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/d/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "%24%7BAUCTION_ID%7D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "%24%7BAUCTION_ID%7D"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/j;->c()Lcom/appodeal/ads/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/d/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "${AUCTION_BID_ID}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "${AUCTION_BID_ID}"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/j;->c()Lcom/appodeal/ads/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "%24%7BAUCTION_BID_ID%7D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "%24%7BAUCTION_BID_ID%7D"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/j;->c()Lcom/appodeal/ads/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v0, "${AUCTION_IMP_ID}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "${AUCTION_IMP_ID}"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const-string v0, "%24%7BAUCTION_IMP_ID%7D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "%24%7BAUCTION_IMP_ID%7D"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    const-string v0, "${AUCTION_SEAT_ID}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v0}, Lcom/appodeal/ads/d/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "${AUCTION_SEAT_ID}"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    const-string v0, "%24%7BAUCTION_SEAT_ID%7D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v0}, Lcom/appodeal/ads/d/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "%24%7BAUCTION_SEAT_ID%7D"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_7
    const-string v0, "${AUCTION_AD_ID}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "${AUCTION_AD_ID}"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    const-string v0, "%24%7BAUCTION_AD_ID%7D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "%24%7BAUCTION_AD_ID%7D"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_9
    const-string v0, "${AUCTION_PRICE}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "${AUCTION_PRICE}"

    invoke-virtual {p0}, Lcom/appodeal/ads/d/a;->h()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_a
    const-string v0, "%24%7BAUCTION_PRICE%7D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "%24%7BAUCTION_PRICE%7D"

    invoke-virtual {p0}, Lcom/appodeal/ads/d/a;->h()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_b
    const-string v0, "${AUCTION_CURRENCY}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v0}, Lcom/appodeal/ads/d/j;->c()Lcom/appodeal/ads/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/d/c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "${AUCTION_CURRENCY}"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/j;->c()Lcom/appodeal/ads/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    const-string v0, "%24%7BAUCTION_CURRENCY%7D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v0}, Lcom/appodeal/ads/d/j;->c()Lcom/appodeal/ads/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/d/c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "%24%7BAUCTION_CURRENCY%7D"

    iget-object v1, p0, Lcom/appodeal/ads/d/a;->s:Lcom/appodeal/ads/d/j;

    invoke-virtual {v1}, Lcom/appodeal/ads/d/j;->c()Lcom/appodeal/ads/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_d
    return-object p1
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    const-string v1, "mfr_id"

    iget-object v2, p0, Lcom/appodeal/ads/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    const-string v1, "bidder_id"

    iget-object v2, p0, Lcom/appodeal/ads/d/a;->b:Lcom/appodeal/ads/d/e;

    invoke-virtual {v2}, Lcom/appodeal/ads/d/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/appodeal/ads/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    const-string v1, "price"

    iget-object v2, p0, Lcom/appodeal/ads/d/a;->e:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    const-string v1, "actual_price"

    invoke-virtual {p0}, Lcom/appodeal/ads/d/a;->h()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    const-string v1, "adm"

    iget-object v2, p0, Lcom/appodeal/ads/d/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/d/a;->r:Ljava/lang/Double;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/d/a;->h:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->e:Ljava/lang/Double;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d/a;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->q:Lorg/json/JSONObject;

    return-object v0
.end method

.method public h()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->r:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->e:Ljava/lang/Double;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/d/a;->r:Ljava/lang/Double;

    goto :goto_0
.end method

.method public i()Lcom/appodeal/ads/d/e;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d/a;->b:Lcom/appodeal/ads/d/e;

    return-object v0
.end method

.method public j()Lorg/json/JSONObject;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/appodeal/ads/d/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/appodeal/ads/d/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/appodeal/ads/d/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, ""

    const-string v6, ""

    const-string v5, "Learn more"

    const/4 v4, 0x0

    const-string v3, ""

    const-string v2, ""

    const-string v1, ""

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {p0 .. p0}, Lcom/appodeal/ads/d/a;->e()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "native"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "link"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "url"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "clicktrackers"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const-string v11, "imptrackers"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const-string v12, "assets"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v0, 0x0

    move/from16 v16, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move/from16 v8, v16

    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v8, v13, :cond_1

    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v14, "id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_1
    const-string v6, "title"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v13, "text"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :pswitch_2
    const-string v14, "img"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v1, "url"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    const-string v14, "img"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v2, "url"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_4
    const-string v14, "img"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v2, "url"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_5
    const-string v14, "video"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v0, "vasttag"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const-string v5, "data"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v13, "value"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_7
    const-string v3, "data"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v13, "value"

    const-wide/16 v14, 0x0

    invoke-virtual {v3, v13, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    double-to-float v3, v14

    goto :goto_1

    :pswitch_8
    const-string v4, "data"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v13, "value"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-boolean v8, Lcom/appodeal/ads/Native;->o:Z

    if-nez v8, :cond_4

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-boolean v8, Lcom/appodeal/ads/Native;->n:Z

    if-nez v8, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v12, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne v8, v12, :cond_5

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_5
    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "description"

    invoke-virtual {v7, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "icon"

    invoke-virtual {v7, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "image"

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rating"

    float-to-double v2, v3

    invoke-virtual {v7, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "cta"

    invoke-virtual {v7, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "impTrackers"

    invoke-virtual {v7, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clickTrackers"

    invoke-virtual {v7, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v7, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "videoTag"

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
