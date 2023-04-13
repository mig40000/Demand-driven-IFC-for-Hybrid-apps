.class Lcom/chartboost/sdk/Libraries/f$f;
.super Lcom/chartboost/sdk/Libraries/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field protected final a:[Lcom/chartboost/sdk/Libraries/f$k;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lcom/chartboost/sdk/Libraries/f$k;)V
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/f$a;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->b:Ljava/lang/String;

    .line 388
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    .line 389
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->b:Ljava/lang/String;

    .line 457
    :goto_0
    return-object v0

    .line 445
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    const-string v0, "object must contain the following key-value schema: {\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 448
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/f$k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v2, ": ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/f$k;->b:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v2, "]>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 454
    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 456
    :cond_2
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 392
    check-cast p1, Ljava/util/Map;

    .line 393
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 394
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is not a string"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->b:Ljava/lang/String;

    move v0, v1

    .line 439
    :goto_0
    return v0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    array-length v0, v0

    if-lt v0, v2, :cond_4

    .line 400
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 401
    iget-object v6, v5, Lcom/chartboost/sdk/Libraries/f$k;->a:Ljava/lang/String;

    .line 402
    iget-object v5, v5, Lcom/chartboost/sdk/Libraries/f$k;->b:Lcom/chartboost/sdk/Libraries/f$a;

    .line 403
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 404
    invoke-virtual {v5, v9}, Lcom/chartboost/sdk/Libraries/f$a;->a(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no key for required mapping \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' : <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/chartboost/sdk/Libraries/f$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->b:Ljava/lang/String;

    move v0, v1

    .line 406
    goto :goto_0

    .line 409
    :cond_2
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/chartboost/sdk/Libraries/f$a;->a(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' fails to match: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/chartboost/sdk/Libraries/f$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->b:Ljava/lang/String;

    move v0, v1

    .line 411
    goto/16 :goto_0

    .line 400
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 416
    goto/16 :goto_0

    .line 417
    :cond_5
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    .line 418
    check-cast p1, Lorg/json/JSONObject;

    .line 419
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    array-length v0, v0

    if-lt v0, v2, :cond_7

    .line 420
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_7

    aget-object v5, v3, v0

    .line 421
    iget-object v6, v5, Lcom/chartboost/sdk/Libraries/f$k;->a:Ljava/lang/String;

    .line 422
    iget-object v5, v5, Lcom/chartboost/sdk/Libraries/f$k;->b:Lcom/chartboost/sdk/Libraries/f$a;

    .line 424
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 425
    invoke-virtual {v5, v7}, Lcom/chartboost/sdk/Libraries/f$a;->a(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 426
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' fails to match: <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/chartboost/sdk/Libraries/f$a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/chartboost/sdk/Libraries/f$f;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 427
    goto/16 :goto_0

    .line 429
    :catch_0
    move-exception v7

    .line 430
    invoke-virtual {v5, v9}, Lcom/chartboost/sdk/Libraries/f$a;->a(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no key for required mapping \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' : <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/chartboost/sdk/Libraries/f$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$f;->b:Ljava/lang/String;

    move v0, v1

    .line 432
    goto/16 :goto_0

    .line 420
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    .line 437
    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 439
    goto/16 :goto_0
.end method
