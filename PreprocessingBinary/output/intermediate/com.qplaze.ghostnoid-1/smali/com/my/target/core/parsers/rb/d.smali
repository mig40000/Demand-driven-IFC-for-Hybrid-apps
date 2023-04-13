.class public Lcom/my/target/core/parsers/rb/d;
.super Ljava/lang/Object;
.source "RBSectionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/my/target/core/models/sections/h;ILcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/d;)Lcom/my/target/core/models/d;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p4}, Lcom/my/target/core/models/d;->i()I

    move-result v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    const-string v1, "Parsing additional data"

    iput-object v1, p3, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 209
    const-string v1, "url"

    const-string v3, ""

    invoke-static {p0, v1, p3, v3, v9}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Lcom/my/target/core/models/d;

    invoke-direct {v1, v3}, Lcom/my/target/core/models/d;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p4}, Lcom/my/target/core/models/d;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->a(I)V

    .line 216
    invoke-virtual {v1}, Lcom/my/target/core/models/d;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p4}, Lcom/my/target/core/models/d;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-virtual {p4}, Lcom/my/target/core/models/d;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->b(I)V

    .line 218
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->a(Ljava/lang/String;)V

    .line 219
    if-nez p2, :cond_2

    invoke-virtual {v1}, Lcom/my/target/core/models/d;->i()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 220
    invoke-virtual {v1}, Lcom/my/target/core/models/d;->o()V

    .line 221
    :cond_2
    const-string v0, "id"

    invoke-static {p0, v0, p3, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->a(I)V

    .line 223
    const-string v0, "doAfter"

    invoke-static {p0, v0, p3, v2}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->a(Z)V

    .line 225
    const-string v0, "doOnEmptyResponseFromId"

    const/4 v3, -0x1

    invoke-static {p0, v0, p3, v3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->c(I)V

    .line 228
    const-string v0, "isMidrollPoint"

    invoke-static {p0, v0, p3, v2}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->b(Z)V

    .line 231
    invoke-virtual {p4}, Lcom/my/target/core/models/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 232
    invoke-virtual {p4}, Lcom/my/target/core/models/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->a(Ljava/lang/String;)V

    .line 236
    :goto_1
    invoke-static {p0, p3}, Lcom/my/target/core/parsers/rb/e;->a(Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 239
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->a(Lcom/my/target/core/models/i;)V

    goto :goto_2

    .line 234
    :cond_3
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 4079
    :cond_4
    const-string v0, "Parsing service stats"

    iput-object v0, p3, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 4081
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4083
    const-string v0, "serviceStatistics"

    invoke-static {p0, v0, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONArray;

    move-result-object v4

    .line 4085
    if-eqz v4, :cond_6

    .line 4087
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v0, v2

    .line 4089
    :goto_3
    if-ge v0, v5, :cond_6

    .line 4091
    const-string v2, "statistics"

    invoke-static {v0, v4, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONObject;

    move-result-object v2

    .line 4094
    const-string v6, "type"

    const-string v7, ""

    invoke-static {v2, v6, p3, v7, v9}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 4096
    const-string v7, "url"

    const-string v8, ""

    invoke-static {v2, v7, p3, v8, v9}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 4099
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 4100
    new-instance v7, Lcom/my/target/core/models/i;

    invoke-direct {v7, v6, v2}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4101
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4089
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 243
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 245
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->c(Lcom/my/target/core/models/i;)V

    goto :goto_4

    .line 248
    :cond_7
    invoke-virtual {p4}, Lcom/my/target/core/models/d;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 250
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->a(Lcom/my/target/core/models/i;)V

    goto :goto_5

    .line 252
    :cond_8
    invoke-virtual {p4}, Lcom/my/target/core/models/d;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 254
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->b(Lcom/my/target/core/models/i;)V

    goto :goto_6

    :cond_9
    move-object v0, v1

    .line 257
    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/my/target/core/models/c;Ljava/util/ArrayList;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/d;)Lcom/my/target/core/models/sections/f;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/my/target/core/models/c;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/my/target/core/parsers/a$a;",
            "Lcom/my/target/core/models/d;",
            ")",
            "Lcom/my/target/core/models/sections/f;"
        }
    .end annotation

    .prologue
    .line 43
    const-string v4, "Parsing section"

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 44
    move-object/from16 v0, p4

    iput-object p0, v0, Lcom/my/target/core/parsers/a$a;->e:Ljava/lang/String;

    .line 45
    const-class v4, Lcom/my/target/core/parsers/rb/d;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 47
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, p0, v1, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Lorg/json/JSONObject;

    move-result-object v12

    .line 48
    if-nez v12, :cond_1

    const/4 v11, 0x0

    .line 124
    :cond_0
    :goto_0
    return-object v11

    .line 50
    :cond_1
    const-string v4, "index"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-static {v12, v4, v0, v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 64
    move-object/from16 v0, p2

    invoke-virtual {v0, p0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/f;

    move-result-object v11

    .line 66
    if-nez v11, :cond_2

    .line 68
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcom/my/target/core/factories/d;->a(Ljava/lang/String;I)Lcom/my/target/core/models/sections/f;

    move-result-object v11

    .line 72
    :cond_2
    if-nez v11, :cond_3

    const/4 v11, 0x0

    goto :goto_0

    .line 74
    :cond_3
    const-string v4, "settings"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-static {v12, v4, v0, v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 77
    if-eqz v5, :cond_4

    .line 1043
    const-string v4, "Parsing section settings"

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 1044
    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->e:Ljava/lang/String;

    .line 1045
    const-class v4, Lcom/my/target/core/parsers/rb/b;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 1047
    const-string v4, "advertisingLabel"

    const-string v6, ""

    const/4 v7, 0x0

    .line 1048
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v6, v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1047
    invoke-interface {v11, v4}, Lcom/my/target/core/models/sections/f;->a(Ljava/lang/String;)V

    .line 1051
    sget-object v4, Lcom/my/target/core/enums/a;->a:Ljava/lang/String;

    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1053
    const-string v4, "Parsing standard section settings"

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 1055
    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-static {v11, v4, v0}, Lcom/my/target/core/parsers/rb/a;->b(Lcom/my/target/core/models/sections/f;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/core/models/sections/g;

    move-result-object v4

    .line 1058
    if-eqz v4, :cond_4

    .line 1060
    const-string v6, "refreshTime"

    const/16 v7, 0x3c

    .line 1061
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1060
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/g;->a(I)V

    .line 1064
    const-string v6, "hasAdditionalAds"

    const/4 v7, 0x1

    .line 1065
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    .line 1064
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/g;->a(Z)V

    .line 1068
    const-string v6, "loopRotation"

    const/4 v7, 0x1

    .line 1069
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    .line 1068
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/g;->b(Z)V

    .line 1072
    const-string v6, "animationType"

    const/4 v7, 0x1

    .line 1073
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1072
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/g;->b(I)V

    .line 1076
    const-string v6, "view"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 1078
    if-eqz v5, :cond_4

    .line 1279
    const-string v6, "Parsing section view settings"

    move-object/from16 v0, p4

    iput-object v6, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 1281
    invoke-virtual {v4}, Lcom/my/target/core/models/sections/g;->i()Lcom/my/target/core/models/h;

    move-result-object v4

    .line 1283
    const-string v6, "type"

    const-string v7, "html"

    const/4 v8, 0x0

    .line 1284
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 1283
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->a(Ljava/lang/String;)V

    .line 1287
    const-string v6, "backgroundColor"

    const/4 v7, -0x1

    .line 1288
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1287
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->a(I)V

    .line 1291
    const-string v6, "backgroundTouchColor"

    const v7, -0x3a1508

    .line 1292
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1291
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->b(I)V

    .line 1295
    const-string v6, "titleColor"

    const v7, -0xffab5a

    .line 1296
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1295
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->c(I)V

    .line 1299
    const-string v6, "ageRestrictionsBackgroundColor"

    const/4 v7, -0x1

    .line 1300
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1299
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->d(I)V

    .line 1304
    const-string v6, "ageRestrictionsTextColor"

    const v7, -0x99999a

    .line 1305
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1304
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->e(I)V

    .line 1309
    const-string v6, "ageRestrictionsBorderColor"

    const v7, -0x4c4c4d

    .line 1310
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1309
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->f(I)V

    .line 1314
    const-string v6, "descriptionColor"

    const/high16 v7, -0x1000000

    .line 1315
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1314
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->g(I)V

    .line 1319
    const-string v6, "domainColor"

    const v7, -0x99999a

    .line 1320
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1319
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->h(I)V

    .line 1324
    const-string v6, "votesColor"

    const v7, -0x777778

    .line 1325
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1324
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->i(I)V

    .line 1329
    const-string v6, "disclaimerColor"

    const v7, -0x777778

    .line 1330
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1329
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->j(I)V

    .line 1334
    const-string v6, "ctaButtonColor"

    const v7, -0xff5110

    .line 1335
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1334
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->k(I)V

    .line 1339
    const-string v6, "ctaButtonTouchColor"

    const v7, -0xff8957

    .line 1340
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1339
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->l(I)V

    .line 1344
    const-string v6, "ctaButtonTextColor"

    const/4 v7, -0x1

    .line 1345
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 1344
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->m(I)V

    .line 1350
    const-string v6, "titleBold"

    const/4 v7, 0x1

    .line 1351
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    .line 1350
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->a(Z)V

    .line 1354
    const-string v6, "descriptionBold"

    const/4 v7, 0x0

    .line 1355
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    .line 1354
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->b(Z)V

    .line 1358
    const-string v6, "domainBold"

    const/4 v7, 0x0

    .line 1359
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    .line 1358
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->c(Z)V

    .line 1362
    const-string v6, "votesBold"

    const/4 v7, 0x0

    .line 1363
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    .line 1362
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->d(Z)V

    .line 1366
    const-string v6, "disclaimerBold"

    const/4 v7, 0x0

    .line 1367
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    .line 1366
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/h;->e(Z)V

    .line 1370
    const-string v6, "ctaButtonTextBold"

    const/4 v7, 0x0

    .line 1371
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v5

    .line 1370
    invoke-virtual {v4, v5}, Lcom/my/target/core/models/h;->f(Z)V

    .line 82
    :cond_4
    :goto_1
    sget-object v4, Lcom/my/target/core/enums/a;->f:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 84
    const-string v4, "Parsing instream section"

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    move-object v4, v11

    .line 86
    check-cast v4, Lcom/my/target/core/models/sections/d;

    .line 88
    const-string v5, "sections"

    const/4 v6, 0x1

    move-object/from16 v0, p4

    invoke-static {v12, v5, v0, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 90
    if-nez v6, :cond_c

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1080
    :cond_5
    sget-object v4, Lcom/my/target/core/enums/a;->g:Ljava/lang/String;

    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1082
    const-string v4, "Parsing video section settings"

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 1084
    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-static {v11, v4, v0}, Lcom/my/target/core/parsers/rb/a;->c(Lcom/my/target/core/models/sections/f;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/core/models/sections/h;

    move-result-object v4

    .line 1086
    invoke-virtual {v4}, Lcom/my/target/core/models/sections/h;->i()Lcom/my/target/core/models/j;

    move-result-object v4

    .line 2261
    const-string v6, "Parsing video params"

    move-object/from16 v0, p4

    iput-object v6, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 2263
    const-string v6, "allowClose"

    const/4 v7, 0x0

    .line 2264
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    .line 2263
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/j;->a(Z)V

    .line 2266
    const-string v6, "allowCloseDelay"

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p4

    .line 2267
    invoke-static/range {v5 .. v10}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;DZ)D

    move-result-wide v6

    double-to-float v6, v6

    .line 2266
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/j;->a(F)V

    .line 2269
    const-string v6, "connectionTimeout"

    const/4 v7, 0x0

    .line 2270
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    .line 2269
    invoke-virtual {v4, v6}, Lcom/my/target/core/models/j;->a(I)V

    .line 2272
    const-string v6, "maxBannersShow"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/my/target/core/models/j;->b(I)V

    goto :goto_1

    .line 1089
    :cond_6
    sget-object v4, Lcom/my/target/core/enums/a;->d:Ljava/lang/String;

    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1091
    const-string v4, "Parsing fullscreen section settings"

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 1093
    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-static {v11, v4, v0}, Lcom/my/target/core/parsers/rb/a;->d(Lcom/my/target/core/models/sections/f;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/core/models/sections/c;

    move-result-object v4

    .line 1096
    const-string v6, "close_icon_hd"

    const-string v7, ""

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 1098
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1100
    new-instance v7, Lcom/my/target/nativeads/models/ImageData;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v6, v8, v9}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;II)V

    .line 1101
    invoke-virtual {v4, v7}, Lcom/my/target/core/models/sections/c;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1104
    :cond_7
    const-string v6, "play_icon_hd"

    const-string v7, ""

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 1106
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1108
    new-instance v7, Lcom/my/target/nativeads/models/ImageData;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v6, v8, v9}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;II)V

    .line 1109
    invoke-virtual {v4, v7}, Lcom/my/target/core/models/sections/c;->b(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1112
    :cond_8
    const-string v6, "store_icon_hd"

    const-string v7, ""

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 1114
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1116
    new-instance v7, Lcom/my/target/nativeads/models/ImageData;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v6, v8, v9}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;II)V

    .line 1117
    invoke-virtual {v4, v7}, Lcom/my/target/core/models/sections/c;->c(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1120
    :cond_9
    const-string v6, "extendedClickArea"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/c;->e(Z)V

    .line 1123
    const-string v6, "closeOnClick"

    const/4 v7, 0x1

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/c;->d(Z)V

    .line 1126
    const-string v6, "allowCloseDelay"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/c;->a(F)V

    .line 1129
    const-string v6, "style"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/c;->a(I)V

    .line 1133
    const-string v6, "video"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 1135
    if-eqz v5, :cond_4

    .line 1137
    invoke-virtual {v4}, Lcom/my/target/core/models/sections/c;->p()Lcom/my/target/core/models/j;

    move-result-object v6

    const-string v7, "allowClose"

    const/4 v8, 0x1

    move-object/from16 v0, p4

    invoke-static {v5, v7, v0, v8}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/my/target/core/models/j;->a(Z)V

    .line 1140
    invoke-virtual {v4}, Lcom/my/target/core/models/sections/c;->p()Lcom/my/target/core/models/j;

    move-result-object v6

    const-string v7, "allowCloseDelay"

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v7, v0, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/my/target/core/models/j;->a(F)V

    .line 1143
    const-string v6, "showPlayerControls"

    const/4 v7, 0x1

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/c;->f(Z)V

    .line 1146
    const-string v6, "replayActionText"

    const-string v7, "Replay"

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/c;->d(Ljava/lang/String;)V

    .line 1149
    const-string v6, "closeActionText"

    const-string v7, "Close"

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/c;->c(Ljava/lang/String;)V

    .line 1152
    const-string v6, "allowBackButton"

    const/4 v7, 0x1

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/c;->b(Z)V

    .line 1155
    const-string v6, "allowReplay"

    const/4 v7, 0x1

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/c;->c(Z)V

    .line 1158
    const-string v6, "automute"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/my/target/core/models/sections/c;->a(Z)V

    goto/16 :goto_1

    .line 1162
    :cond_a
    sget-object v4, Lcom/my/target/core/enums/a;->c:Ljava/lang/String;

    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1164
    const-string v4, "Parsing appwall section settings"

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 1166
    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-static {v11, v4, v0}, Lcom/my/target/core/parsers/rb/a;->e(Lcom/my/target/core/models/sections/f;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/core/models/sections/b;

    move-result-object v6

    .line 1168
    const-string v4, "title"

    const-string v7, ""

    const/4 v8, 0x0

    .line 1169
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1168
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/sections/b;->c(Ljava/lang/String;)V

    .line 1171
    const-string v4, "icon"

    const-string v7, ""

    const/4 v8, 0x0

    .line 1172
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1171
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/sections/b;->d(Ljava/lang/String;)V

    .line 1174
    const-string v4, "icon_hd"

    const-string v7, ""

    const/4 v8, 0x0

    .line 1175
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1174
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/sections/b;->e(Ljava/lang/String;)V

    .line 1177
    const-string v4, "bubble_icon"

    const-string v7, ""

    const/4 v8, 0x0

    .line 1178
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1177
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/sections/b;->f(Ljava/lang/String;)V

    .line 1180
    const-string v4, "bubble_icon_hd"

    const-string v7, ""

    const/4 v8, 0x0

    .line 1181
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1180
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/sections/b;->g(Ljava/lang/String;)V

    .line 1183
    const-string v4, "label_icon"

    const-string v7, ""

    const/4 v8, 0x0

    .line 1184
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1183
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/sections/b;->h(Ljava/lang/String;)V

    .line 1186
    const-string v4, "label_icon_hd"

    const-string v7, ""

    const/4 v8, 0x0

    .line 1187
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1186
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/sections/b;->i(Ljava/lang/String;)V

    .line 1189
    const-string v4, "goto_app_icon"

    const-string v7, ""

    const/4 v8, 0x0

    .line 1190
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1189
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/sections/b;->j(Ljava/lang/String;)V

    .line 1192
    const-string v4, "goto_app_icon_hd"

    const-string v7, ""

    const/4 v8, 0x0

    .line 1193
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1192
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/sections/b;->k(Ljava/lang/String;)V

    .line 1195
    const-string v4, "item_highlight_icon"

    const-string v7, ""

    const/4 v8, 0x0

    .line 1196
    move-object/from16 v0, p4

    invoke-static {v5, v4, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1195
    invoke-virtual {v6, v4}, Lcom/my/target/core/models/sections/b;->l(Ljava/lang/String;)V

    .line 1199
    const-string v4, "icon_status"

    move-object/from16 v0, p4

    invoke-static {v5, v4, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONArray;

    move-result-object v5

    .line 3233
    const-string v4, "Parsing icon statuses"

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 3235
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 3237
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_4

    .line 3239
    const-string v8, "icon_status"

    move-object/from16 v0, p4

    invoke-static {v4, v5, v8, v0}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONObject;

    move-result-object v8

    .line 3242
    const-string v9, "value"

    const-string v10, ""

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-static {v8, v9, v0, v10, v13}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 3245
    new-instance v10, Lcom/my/target/core/models/e;

    invoke-direct {v10, v9}, Lcom/my/target/core/models/e;-><init>(Ljava/lang/String;)V

    .line 3247
    const-string v9, "icon"

    const-string v13, ""

    const/4 v14, 0x0

    .line 3248
    move-object/from16 v0, p4

    invoke-static {v8, v9, v0, v13, v14}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 3247
    invoke-virtual {v10, v9}, Lcom/my/target/core/models/e;->a(Ljava/lang/String;)V

    .line 3250
    const-string v9, "icon_hd"

    const-string v13, ""

    const/4 v14, 0x0

    .line 3251
    move-object/from16 v0, p4

    invoke-static {v8, v9, v0, v13, v14}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 3250
    invoke-virtual {v10, v8}, Lcom/my/target/core/models/e;->b(Ljava/lang/String;)V

    .line 3254
    invoke-virtual {v6, v10}, Lcom/my/target/core/models/sections/b;->a(Lcom/my/target/core/models/e;)Z

    .line 3237
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1203
    :cond_b
    sget-object v4, Lcom/my/target/core/enums/a;->e:Ljava/lang/String;

    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1205
    const-string v4, "Parsing native section settings"

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 1207
    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-static {v11, v4, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lcom/my/target/core/models/sections/f;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/core/models/sections/e;

    move-result-object v4

    .line 1210
    const-string v6, "video"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 1212
    if-eqz v5, :cond_4

    .line 1214
    const-string v6, "showPlayerControls"

    const/4 v7, 0x1

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/e;->b(Z)V

    .line 1217
    const-string v6, "replayActionText"

    const-string v7, "Replay"

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/e;->d(Ljava/lang/String;)V

    .line 1220
    const-string v6, "closeActionText"

    const-string v7, "Close"

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7, v8}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/my/target/core/models/sections/e;->c(Ljava/lang/String;)V

    .line 1223
    const-string v6, "automute"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v6, v0, v7}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/my/target/core/models/sections/e;->a(Z)V

    goto/16 :goto_1

    .line 92
    :cond_c
    invoke-virtual {v6}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v7

    .line 93
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 95
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_0

    .line 97
    const-string v9, "sections"

    move-object/from16 v0, p4

    invoke-static {v5, v7, v9, v0}, Lcom/my/target/core/parsers/rb/a;->b(ILorg/json/JSONArray;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Ljava/lang/String;

    move-result-object v9

    .line 100
    if-eqz v9, :cond_d

    .line 102
    move-object/from16 v0, p4

    invoke-static {v6, v9, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONArray;

    move-result-object v10

    .line 105
    if-eqz v10, :cond_d

    .line 107
    invoke-virtual {v4, v9}, Lcom/my/target/core/models/sections/d;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/h;

    move-result-object v9

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-static {v9, v10, v0, v1, v2}, Lcom/my/target/core/parsers/rb/d;->a(Lcom/my/target/core/models/sections/f;Lorg/json/JSONArray;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/d;Ljava/util/ArrayList;)V

    .line 95
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 114
    :cond_e
    const-string v4, "banners"

    move-object/from16 v0, p4

    invoke-static {v12, v4, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONArray;

    move-result-object v4

    .line 117
    if-eqz v4, :cond_f

    .line 119
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-static {v11, v4, v0, v1, v2}, Lcom/my/target/core/parsers/rb/d;->a(Lcom/my/target/core/models/sections/f;Lorg/json/JSONArray;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/d;Ljava/util/ArrayList;)V

    .line 122
    :cond_f
    invoke-interface {v11}, Lcom/my/target/core/models/sections/f;->b()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private static a(Lcom/my/target/core/models/sections/f;Lorg/json/JSONArray;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/d;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/sections/f;",
            "Lorg/json/JSONArray;",
            "Lcom/my/target/core/parsers/a$a;",
            "Lcom/my/target/core/models/d;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    const-string v0, "Parsing banners to section"

    iput-object v0, p2, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v2, v1

    .line 139
    :goto_0
    if-ge v2, v6, :cond_5

    .line 141
    const-string v0, "banners"

    .line 142
    invoke-static {v2, p1, v0, p2}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONObject;

    move-result-object v7

    .line 144
    const-string v0, "type"

    const-string v8, ""

    invoke-static {v7, v0, p2, v8, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v8, "additionalData"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    instance-of v0, p0, Lcom/my/target/core/models/sections/h;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 150
    check-cast v0, Lcom/my/target/core/models/sections/h;

    invoke-static {v7, v0, v2, p2, p3}, Lcom/my/target/core/parsers/rb/d;->a(Lorg/json/JSONObject;Lcom/my/target/core/models/sections/h;ILcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/d;)Lcom/my/target/core/models/d;

    move-result-object v7

    .line 152
    if-eqz v7, :cond_0

    .line 154
    invoke-virtual {v7}, Lcom/my/target/core/models/d;->k()I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    .line 155
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {v7}, Lcom/my/target/core/models/d;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7}, Lcom/my/target/core/models/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, p0

    .line 160
    check-cast v0, Lcom/my/target/core/models/sections/h;

    invoke-virtual {v0, v7}, Lcom/my/target/core/models/sections/h;->a(Lcom/my/target/core/models/d;)Z

    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {p3, v7}, Lcom/my/target/core/models/d;->b(Lcom/my/target/core/models/d;)V

    goto :goto_1

    .line 166
    :cond_4
    invoke-static {v7, p0, p4, p2}, Lcom/my/target/core/parsers/rb/b;->a(Lorg/json/JSONObject;Lcom/my/target/core/models/sections/f;Ljava/util/ArrayList;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/core/models/banners/c;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p3}, Lcom/my/target/core/models/d;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 178
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/c;

    invoke-interface {p0, v1, v0}, Lcom/my/target/core/models/sections/f;->a(ILcom/my/target/core/models/banners/c;)Z

    .line 176
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 182
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/c;

    .line 184
    invoke-interface {p0, v0}, Lcom/my/target/core/models/sections/f;->a(Lcom/my/target/core/models/banners/c;)Z

    goto :goto_3

    .line 188
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/d;

    .line 190
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/core/models/d;

    .line 192
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->k()I

    move-result v5

    invoke-virtual {v1}, Lcom/my/target/core/models/d;->e()I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 194
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/d;->a(Lcom/my/target/core/models/d;)V

    goto :goto_4

    .line 199
    :cond_a
    return-void
.end method
