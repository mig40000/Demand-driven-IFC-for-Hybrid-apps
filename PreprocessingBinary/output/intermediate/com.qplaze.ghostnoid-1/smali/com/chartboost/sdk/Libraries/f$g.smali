.class Lcom/chartboost/sdk/Libraries/f$g;
.super Lcom/chartboost/sdk/Libraries/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/chartboost/sdk/Libraries/f$f;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Libraries/f$f;)V
    .locals 3

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/f$a;-><init>()V

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$g;->c:Ljava/lang/String;

    .line 469
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/f$g;->b:Lcom/chartboost/sdk/Libraries/f$f;

    .line 470
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$g;->a:Ljava/util/Set;

    .line 471
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/f$g;->b:Lcom/chartboost/sdk/Libraries/f$f;

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/f$g;->b:Lcom/chartboost/sdk/Libraries/f$f;

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/f$k;->a:Ljava/lang/String;

    .line 473
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$g;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$g;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$g;->c:Ljava/lang/String;

    .line 522
    :goto_0
    return-object v0

    .line 510
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    const-string v0, "object must EXACTLY MATCH the following key-value schema: {\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$g;->b:Lcom/chartboost/sdk/Libraries/f$f;

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 513
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$g;->b:Lcom/chartboost/sdk/Libraries/f$f;

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/f$k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v2, ": ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$g;->b:Lcom/chartboost/sdk/Libraries/f$f;

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/f$k;->b:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v2, "]>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$g;->b:Lcom/chartboost/sdk/Libraries/f$f;

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/f$f;->a:[Lcom/chartboost/sdk/Libraries/f$k;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 519
    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 521
    :cond_2
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 477
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$g;->b:Lcom/chartboost/sdk/Libraries/f$f;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Libraries/f$f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$g;->b:Lcom/chartboost/sdk/Libraries/f$f;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/f$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$g;->c:Ljava/lang/String;

    move v0, v1

    .line 504
    :goto_0
    return v0

    .line 481
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 482
    check-cast p1, Ljava/util/Map;

    .line 483
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 485
    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/f$g;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is not allowed in this dictionary"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$g;->c:Ljava/lang/String;

    move v0, v1

    .line 487
    goto :goto_0

    :cond_2
    move v0, v2

    .line 490
    goto :goto_0

    .line 491
    :cond_3
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    .line 492
    check-cast p1, Lorg/json/JSONObject;

    .line 493
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 494
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 496
    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/f$g;->a:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is not allowed in this dictionary"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$g;->c:Ljava/lang/String;

    move v0, v1

    .line 498
    goto :goto_0

    :cond_5
    move v0, v2

    .line 501
    goto :goto_0

    .line 503
    :cond_6
    const-string v0, "object must be a dictionary"

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$g;->c:Ljava/lang/String;

    move v0, v1

    .line 504
    goto/16 :goto_0
.end method
