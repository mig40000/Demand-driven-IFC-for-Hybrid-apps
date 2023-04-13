.class public final Lcom/my/target/core/parsers/rb/e;
.super Ljava/lang/Object;
.source "RBStatsParser.java"


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/my/target/core/parsers/a$a;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v11, -0x40800000    # -1.0f

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v6, 0x1

    .line 27
    const-string v0, "Parsing banner stats"

    iput-object v0, p1, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const-string v1, "statistics"

    invoke-static {p0, v1, p1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONArray;

    move-result-object v8

    .line 33
    if-nez v8, :cond_1

    .line 73
    :cond_0
    return-object v0

    .line 35
    :cond_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 37
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v9, :cond_0

    .line 39
    const-string v1, "statistics"

    invoke-static {v7, v8, v1, p1}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONObject;

    move-result-object v1

    .line 42
    const-string v2, "type"

    const-string v3, ""

    invoke-static {v1, v2, p1, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 44
    const-string v3, "url"

    const-string v10, ""

    invoke-static {v1, v3, p1, v10, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 49
    const-string v10, "playheadReachedValue"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 51
    new-instance v10, Lcom/my/target/core/models/g;

    invoke-direct {v10, v2, v3}, Lcom/my/target/core/models/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    const-string v2, "value"

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;DZ)D

    move-result-wide v2

    double-to-float v1, v2

    .line 56
    cmpl-float v2, v1, v11

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v10, v1}, Lcom/my/target/core/models/g;->a(F)V

    .line 65
    :cond_2
    :goto_1
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_3
    :goto_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 58
    :cond_4
    const-string v2, "pvalue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    const-string v2, "pvalue"

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;DZ)D

    move-result-wide v2

    double-to-float v1, v2

    .line 62
    cmpl-float v2, v1, v11

    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {v10, v1}, Lcom/my/target/core/models/g;->b(F)V

    goto :goto_1

    .line 68
    :cond_5
    new-instance v1, Lcom/my/target/core/models/i;

    invoke-direct {v1, v2, v3}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
