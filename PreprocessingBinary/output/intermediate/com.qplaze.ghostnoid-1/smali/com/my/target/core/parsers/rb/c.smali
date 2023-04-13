.class public Lcom/my/target/core/parsers/rb/c;
.super Ljava/lang/Object;
.source "RBJSONParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/my/target/core/models/c;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Lcom/my/target/core/models/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/my/target/core/models/c;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/my/target/core/models/d;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 26
    .line 1085
    const-string v0, "html_wrapper"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const-string v0, "html_wrapper"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->b(Ljava/lang/String;)V

    .line 1088
    const-string v0, "html_wrapper"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    :cond_0
    invoke-virtual {p1, p0}, Lcom/my/target/core/models/c;->a(Lorg/json/JSONObject;)V

    .line 30
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v8

    .line 31
    if-eqz v8, :cond_5

    .line 33
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 36
    new-instance v4, Lcom/my/target/core/parsers/a$a;

    invoke-direct {v4, p4}, Lcom/my/target/core/parsers/a$a;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/my/target/core/parsers/a$a;->b:Ljava/lang/String;

    .line 40
    const-string v0, "Parsing"

    iput-object v0, v4, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 41
    const-class v0, Lcom/my/target/core/parsers/rb/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 42
    const-string v0, "root"

    iput-object v0, v4, Lcom/my/target/core/parsers/a$a;->e:Ljava/lang/String;

    move v6, v7

    .line 44
    :goto_0
    if-ge v6, v9, :cond_5

    .line 47
    const-string v0, "root"

    invoke-static {v6, v8, v0, v4}, Lcom/my/target/core/parsers/rb/a;->b(ILorg/json/JSONArray;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 49
    invoke-static {v0}, Lcom/my/target/core/enums/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 52
    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    const-string v1, "appwall"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "showcaseApps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "showcaseGames"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "showcase"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 58
    :cond_2
    const/4 v1, 0x1

    .line 60
    :goto_1
    if-eqz v1, :cond_6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p5

    .line 63
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/d;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/my/target/core/models/c;Ljava/util/ArrayList;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/d;)Lcom/my/target/core/models/sections/f;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_4

    .line 67
    invoke-virtual {p1, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/sections/f;)Z

    .line 44
    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    :cond_5
    :goto_2
    return-void

    .line 75
    :cond_6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move v1, v7

    goto :goto_1
.end method
