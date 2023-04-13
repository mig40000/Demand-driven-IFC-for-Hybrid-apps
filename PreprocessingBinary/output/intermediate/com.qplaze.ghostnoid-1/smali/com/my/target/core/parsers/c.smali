.class public Lcom/my/target/core/parsers/c;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/parsers/c$a;,
        Lcom/my/target/core/parsers/c$b;
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/parsers/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/i;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/my/target/core/parsers/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "linkTxt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/my/target/core/parsers/c;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/my/target/core/parsers/a$a;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/my/target/core/parsers/c;->i:Lcom/my/target/core/parsers/a$a;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/parsers/c;->e:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/parsers/c;->a:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/parsers/c;->h:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/g;
    .locals 4

    .prologue
    .line 934
    new-instance v0, Lcom/my/target/core/models/g;

    const-string v1, "playheadReachedValue"

    invoke-direct {v0, v1, p2}, Lcom/my/target/core/models/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :try_start_0
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->c(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/g;->a(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :goto_0
    return-object v0

    .line 940
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to add progressStat, value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/parsers/c;->i:Lcom/my/target/core/parsers/a$a;

    const-string v3, "Time format convert exception"

    invoke-static {v1, v2, v3}, Lcom/my/target/core/parsers/a;->b(Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/my/target/core/models/c;Lcom/my/target/core/models/d;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/c;",
            "Lcom/my/target/core/models/d;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/i;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/my/target/core/models/d;->l()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 222
    sget-object v2, Lcom/my/target/core/enums/b;->a:Lcom/my/target/core/enums/b;

    invoke-virtual {v2}, Lcom/my/target/core/enums/b;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 224
    :goto_0
    sget-object v2, Lcom/my/target/core/enums/a;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/f;

    move-result-object v2

    check-cast v2, Lcom/my/target/core/models/sections/d;

    .line 226
    invoke-virtual {v2, v3}, Lcom/my/target/core/models/sections/d;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/h;

    move-result-object v7

    .line 228
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    new-instance v4, Lcom/my/target/core/models/i;

    const-string v5, "impression"

    invoke-direct {v4, v5, v2}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/my/target/core/models/sections/h;->a(Lcom/my/target/core/models/i;)Z

    goto :goto_1

    .line 233
    :cond_0
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v6, :cond_4

    .line 235
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/my/target/core/models/banners/i;

    .line 236
    invoke-virtual {v4}, Lcom/my/target/core/models/banners/i;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    invoke-virtual {v7}, Lcom/my/target/core/models/sections/h;->i()Lcom/my/target/core/models/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/models/j;->a()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/my/target/core/models/banners/i;->f(Z)V

    .line 241
    invoke-virtual {v7}, Lcom/my/target/core/models/sections/h;->i()Lcom/my/target/core/models/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/models/j;->b()F

    move-result v2

    invoke-virtual {v4, v2}, Lcom/my/target/core/models/banners/i;->b(F)V

    .line 244
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/my/target/core/models/d;->f()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v4}, Lcom/my/target/core/models/banners/i;->n()F

    move-result v9

    .line 3266
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/core/models/i;

    .line 3268
    const-string v3, "playheadReachedValue"

    invoke-virtual {v2}, Lcom/my/target/core/models/i;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 3270
    check-cast v3, Lcom/my/target/core/models/g;

    invoke-virtual {v3}, Lcom/my/target/core/models/g;->b()F

    move-result v3

    .line 3271
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_2

    .line 3273
    check-cast v2, Lcom/my/target/core/models/g;

    float-to-double v12, v9

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    float-to-double v14, v3

    mul-double/2addr v12, v14

    double-to-float v3, v12

    invoke-virtual {v2, v3}, Lcom/my/target/core/models/g;->a(F)V

    goto :goto_3

    .line 245
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/my/target/core/models/banners/i;->g(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v4, v8}, Lcom/my/target/core/models/banners/i;->a(Ljava/util/ArrayList;)V

    .line 233
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 249
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/my/target/core/models/d;->n()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 251
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 253
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/core/models/banners/c;

    invoke-virtual {v7, v3, v2}, Lcom/my/target/core/models/sections/h;->a(ILcom/my/target/core/models/banners/c;)Z

    .line 251
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 257
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/core/models/banners/c;

    .line 259
    invoke-virtual {v7, v2}, Lcom/my/target/core/models/sections/h;->a(Lcom/my/target/core/models/banners/c;)Z

    goto :goto_5

    .line 262
    :cond_6
    return-void

    :cond_7
    move-object v3, v2

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/my/target/core/models/c;Lcom/my/target/core/models/d;Lcom/my/target/core/parsers/a$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/my/target/core/parsers/c$a;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    .line 148
    new-instance v3, Lcom/my/target/core/parsers/c;

    invoke-direct {v3, p3}, Lcom/my/target/core/parsers/c;-><init>(Lcom/my/target/core/parsers/a$a;)V

    .line 1283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/my/target/core/parsers/c;->g:Ljava/util/ArrayList;

    .line 1287
    :try_start_0
    invoke-direct {v3, p0}, Lcom/my/target/core/parsers/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1293
    iget-object v0, v3, Lcom/my/target/core/parsers/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1297
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/parsers/c$b;

    .line 1299
    iget-boolean v1, v3, Lcom/my/target/core/parsers/c;->b:Z

    if-eqz v1, :cond_2

    .line 1301
    invoke-virtual {v0}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1303
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1288
    :catch_0
    move-exception v0

    .line 1290
    :goto_1
    new-instance v1, Lcom/my/target/core/parsers/c$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/my/target/core/parsers/c$a;-><init>(Lcom/my/target/core/parsers/c;Ljava/lang/String;)V

    throw v1

    .line 1306
    :cond_1
    invoke-virtual {v0}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1308
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1313
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    iget-object v1, v0, Lcom/my/target/core/parsers/c$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1317
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v2, v1}, Lcom/my/target/core/parsers/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/g;

    move-result-object v1

    .line 1320
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1324
    :cond_3
    iget-object v1, v0, Lcom/my/target/core/parsers/c$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1326
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1860
    const-string v7, "start"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1862
    new-instance v2, Lcom/my/target/core/models/i;

    const-string v7, "playbackStarted"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1327
    :goto_4
    if-eqz v1, :cond_4

    .line 1329
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1864
    :cond_5
    const-string v7, "firstQuartile"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1866
    new-instance v2, Lcom/my/target/core/models/g;

    const-string v7, "playheadReachedValue"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v2, v1}, Lcom/my/target/core/models/g;->b(F)V

    move-object v1, v2

    .line 1868
    goto :goto_4

    .line 1870
    :cond_6
    const-string v7, "midpoint"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1872
    new-instance v2, Lcom/my/target/core/models/g;

    const-string v7, "playheadReachedValue"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v2, v1}, Lcom/my/target/core/models/g;->b(F)V

    move-object v1, v2

    .line 1874
    goto :goto_4

    .line 1876
    :cond_7
    const-string v7, "thirdQuartile"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1878
    new-instance v2, Lcom/my/target/core/models/g;

    const-string v7, "playheadReachedValue"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const/high16 v1, 0x42960000    # 75.0f

    invoke-virtual {v2, v1}, Lcom/my/target/core/models/g;->b(F)V

    move-object v1, v2

    .line 1880
    goto :goto_4

    .line 1882
    :cond_8
    const-string v7, "complete"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1884
    new-instance v2, Lcom/my/target/core/models/g;

    const-string v7, "playheadReachedValue"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v2, v9}, Lcom/my/target/core/models/g;->b(F)V

    move-object v1, v2

    .line 1886
    goto :goto_4

    .line 1888
    :cond_9
    const-string v7, "creativeView"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1890
    new-instance v2, Lcom/my/target/core/models/i;

    const-string v7, "playbackStarted"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_4

    .line 1892
    :cond_a
    const-string v7, "mute"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1896
    const-string v7, "unmute"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1900
    const-string v7, "pause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1902
    new-instance v2, Lcom/my/target/core/models/i;

    const-string v7, "playbackPaused"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_4

    .line 1904
    :cond_b
    const-string v7, "resume"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1906
    new-instance v2, Lcom/my/target/core/models/i;

    const-string v7, "playbackResumed"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_4

    .line 1908
    :cond_c
    const-string v7, "fullscreen"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1910
    new-instance v2, Lcom/my/target/core/models/i;

    const-string v7, "fullscreenOn"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_4

    .line 1912
    :cond_d
    const-string v7, "exitFullscreen"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1914
    new-instance v2, Lcom/my/target/core/models/i;

    const-string v7, "fullscreenOff"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_4

    .line 1916
    :cond_e
    const-string v7, "skip"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1918
    new-instance v2, Lcom/my/target/core/models/i;

    const-string v7, "closedByUser"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_4

    .line 1920
    :cond_f
    const-string v7, "error"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1922
    new-instance v2, Lcom/my/target/core/models/i;

    const-string v7, "error"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_4

    .line 1924
    :cond_10
    const-string v7, "ClickTracking"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1926
    new-instance v2, Lcom/my/target/core/models/i;

    const-string v7, "click"

    invoke-direct {v2, v7, v1}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_4

    .line 1929
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 1333
    :cond_12
    invoke-virtual {v0}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2839
    invoke-virtual {v0}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    .line 2841
    iget v2, v0, Lcom/my/target/core/parsers/c$b;->d:F

    cmpl-float v2, v2, v8

    if-gtz v2, :cond_13

    iget v2, v0, Lcom/my/target/core/parsers/c$b;->c:I

    if-lez v2, :cond_14

    .line 2843
    :cond_13
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/my/target/core/models/banners/i;->f(Z)V

    .line 2844
    iget v2, v0, Lcom/my/target/core/parsers/c$b;->d:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_15

    .line 2846
    iget v2, v0, Lcom/my/target/core/parsers/c$b;->d:F

    invoke-virtual {v1, v2}, Lcom/my/target/core/models/banners/i;->b(F)V

    .line 2855
    :cond_14
    :goto_5
    invoke-virtual {v1, v5}, Lcom/my/target/core/models/banners/i;->a(Ljava/util/ArrayList;)V

    .line 1337
    invoke-virtual {v0}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->n()F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_0

    .line 1338
    invoke-virtual {v0}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1340
    iget-object v1, v3, Lcom/my/target/core/parsers/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2850
    :cond_15
    iget v2, v0, Lcom/my/target/core/parsers/c$b;->c:I

    .line 2851
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->n()F

    move-result v6

    .line 2979
    div-float/2addr v6, v9

    int-to-float v2, v2

    mul-float/2addr v2, v6

    .line 2850
    invoke-virtual {v1, v2}, Lcom/my/target/core/models/banners/i;->b(F)V

    goto :goto_5

    .line 1346
    :cond_16
    iget-object v0, v3, Lcom/my/target/core/parsers/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 152
    :cond_17
    iget-object v2, v3, Lcom/my/target/core/parsers/c;->c:Ljava/lang/String;

    .line 153
    iget-object v4, v3, Lcom/my/target/core/parsers/c;->h:Ljava/util/ArrayList;

    .line 154
    iget-object v5, v3, Lcom/my/target/core/parsers/c;->e:Ljava/util/ArrayList;

    .line 155
    iget-object v6, v3, Lcom/my/target/core/parsers/c;->g:Ljava/util/ArrayList;

    .line 157
    iget-object v0, v3, Lcom/my/target/core/parsers/c;->f:Ljava/lang/String;

    .line 158
    if-eqz p2, :cond_22

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 159
    invoke-virtual {p2}, Lcom/my/target/core/models/d;->m()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 163
    :goto_6
    sget-object v0, Lcom/my/target/core/enums/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/f;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 165
    sget-object v0, Lcom/my/target/core/enums/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/f;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/d;

    .line 173
    :goto_7
    if-eqz v0, :cond_18

    if-nez p2, :cond_1a

    .line 211
    :cond_18
    :goto_8
    return-void

    .line 169
    :cond_19
    sget-object v0, Lcom/my/target/core/enums/a;->f:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/my/target/core/factories/d;->a(Ljava/lang/String;I)Lcom/my/target/core/models/sections/f;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/d;

    .line 170
    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/sections/f;)Z

    goto :goto_7

    .line 175
    :cond_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 177
    invoke-static {p1, p2, v4, v1, v5}, Lcom/my/target/core/parsers/c;->a(Lcom/my/target/core/models/c;Lcom/my/target/core/models/d;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_8

    .line 178
    :cond_1b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 180
    invoke-virtual {p2}, Lcom/my/target/core/models/d;->i()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_1c

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Max redirect limit reached, redirect was dropped: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Lcom/my/target/core/models/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_8

    .line 184
    :cond_1c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 186
    new-instance v3, Lcom/my/target/core/models/d;

    invoke-direct {v3, v2}, Lcom/my/target/core/models/d;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Lcom/my/target/core/models/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->a(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3, v1}, Lcom/my/target/core/models/d;->b(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 191
    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->a(Lcom/my/target/core/models/i;)V

    goto :goto_9

    .line 193
    :cond_1d
    invoke-virtual {p2}, Lcom/my/target/core/models/d;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 195
    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->a(Lcom/my/target/core/models/i;)V

    goto :goto_a

    .line 197
    :cond_1e
    invoke-virtual {p2}, Lcom/my/target/core/models/d;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 199
    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->b(Lcom/my/target/core/models/i;)V

    goto :goto_b

    .line 201
    :cond_1f
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    new-instance v2, Lcom/my/target/core/models/i;

    const-string v4, "impression"

    invoke-direct {v2, v4, v0}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/my/target/core/models/d;->b(Lcom/my/target/core/models/i;)V

    goto :goto_c

    .line 205
    :cond_20
    invoke-virtual {p2, v3}, Lcom/my/target/core/models/d;->b(Lcom/my/target/core/models/d;)V

    goto/16 :goto_8

    .line 208
    :cond_21
    const-string v0, "neither banner nor wrapper is present"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1288
    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_22
    move-object v1, v0

    goto/16 :goto_6
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/my/target/core/parsers/c$a;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 384
    const-string v0, "Ad"

    invoke-interface {p1, v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 387
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 391
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 392
    const-string v1, "InLine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 394
    const-string v1, "VAST file contains inline ad information."

    invoke-static {v1}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 3410
    const-string v1, "InLine"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3411
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 3413
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 3417
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3418
    if-eqz v1, :cond_3

    const-string v2, "Impression"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3420
    const-string v1, "Impression"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3421
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 3422
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3424
    iget-object v2, p0, Lcom/my/target/core/parsers/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3425
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Impression tracker url for inline: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 3428
    :cond_2
    const-string v1, "Impression"

    invoke-interface {p1, v6, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3430
    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "Creatives"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3432
    invoke-direct {p0, p1}, Lcom/my/target/core/parsers/c;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 3438
    :cond_4
    if-eqz v1, :cond_5

    const-string v2, "Extensions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3440
    invoke-direct {p0, p1}, Lcom/my/target/core/parsers/c;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 3444
    :cond_5
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 3447
    :cond_6
    const-string v1, "InLine"

    invoke-interface {p1, v6, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_7
    const-string v1, "Wrapper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "VAST file contains wrapped ad information. []"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/my/target/core/parsers/c;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 404
    :cond_8
    const-string v0, "Ad"

    invoke-interface {p1, v6, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/core/parsers/c$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/my/target/core/parsers/c$a;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 645
    const-string v0, "Linear"

    invoke-interface {p1, v6, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 648
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 653
    if-eqz v0, :cond_1

    const-string v1, "Duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    const-string v0, "Duration"

    invoke-interface {p1, v6, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 659
    :try_start_0
    invoke-virtual {p2}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-static {v0}, Lcom/my/target/core/parsers/c;->c(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/banners/i;->a(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_1
    const-string v0, "Duration"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_1
    if-eqz v0, :cond_6

    const-string v1, "TrackingEvents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5699
    const-string v0, "TrackingEvents"

    invoke-interface {p1, v6, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 5700
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 5702
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 5706
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5707
    if-eqz v0, :cond_4

    const-string v1, "Tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5709
    const-string v0, "event"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5710
    const-string v1, "offset"

    invoke-interface {p1, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5711
    const-string v2, "Tracking"

    invoke-interface {p1, v6, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 5712
    const-string v2, "progress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5714
    iget-object v2, p2, Lcom/my/target/core/parsers/c$b;->b:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p1}, Lcom/my/target/core/parsers/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5720
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added VAST tracking \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 5721
    const-string v0, "Tracking"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5718
    :cond_3
    iget-object v1, p2, Lcom/my/target/core/parsers/c$b;->a:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Lcom/my/target/core/parsers/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5725
    :cond_4
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 5728
    :cond_5
    const-string v0, "TrackingEvents"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 669
    :cond_6
    if-eqz v0, :cond_8

    const-string v1, "MediaFiles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    invoke-static {p1, v0}, Lcom/my/target/core/parsers/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 673
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 675
    invoke-virtual {p2}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/my/target/core/models/banners/i;->a(Ljava/util/List;)V

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/parsers/c;->b:Z

    goto/16 :goto_0

    .line 680
    :cond_7
    const-string v0, "Mediafiles array is empty!"

    iget-object v1, p0, Lcom/my/target/core/parsers/c;->i:Lcom/my/target/core/parsers/a$a;

    const-string v2, "Empty mediafiles"

    invoke-static {v0, v1, v2}, Lcom/my/target/core/parsers/a;->b(Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 684
    :cond_8
    if-eqz v0, :cond_9

    const-string v1, "VideoClicks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 686
    invoke-static {p1, p2}, Lcom/my/target/core/parsers/c;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/core/parsers/c$b;)V

    goto/16 :goto_0

    .line 690
    :cond_9
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 693
    :cond_a
    const-string v0, "Linear"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 694
    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/nativeads/models/VideoData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/my/target/core/parsers/c$a;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 734
    const-string v0, "MediaFiles"

    invoke-interface {p0, v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v9, :cond_6

    .line 737
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 741
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_5

    const-string v2, "MediaFile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 745
    const-string v0, "MediaFile"

    invoke-interface {p0, v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v0, "type"

    invoke-interface {p0, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    const-string v2, "bitrate"

    invoke-interface {p0, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 748
    const-string v3, "width"

    invoke-interface {p0, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 749
    const-string v4, "height"

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 750
    invoke-static {p0}, Lcom/my/target/core/parsers/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&lt;"

    const-string v7, "<"

    .line 751
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&gt;"

    const-string v7, ">"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 752
    if-eqz v0, :cond_1

    const-string v6, "video/mp4"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    new-instance v6, Lcom/my/target/nativeads/models/VideoData;

    invoke-direct {v6, v5}, Lcom/my/target/nativeads/models/VideoData;-><init>(Ljava/lang/String;)V

    .line 755
    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-virtual {v6, v0}, Lcom/my/target/nativeads/models/VideoData;->setWidth(I)V

    .line 756
    if-eqz v4, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    invoke-virtual {v6, v0}, Lcom/my/target/nativeads/models/VideoData;->setHeight(I)V

    .line 757
    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    invoke-virtual {v6, v0}, Lcom/my/target/nativeads/models/VideoData;->setBitrate(I)V

    .line 759
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_1
    const-string v0, "MediaFile"

    invoke-interface {p0, v10, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 755
    goto :goto_1

    :cond_3
    move v0, v1

    .line 756
    goto :goto_2

    :cond_4
    move v0, v1

    .line 757
    goto :goto_3

    .line 765
    :cond_5
    invoke-static {p0}, Lcom/my/target/core/parsers/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 768
    :cond_6
    const-string v0, "MediaFiles"

    invoke-interface {p0, v10, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "<VAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<?xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/my/target/core/parsers/c$a;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 354
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 355
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 356
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 357
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 359
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v3, v1, :cond_0

    const-string v1, "VAST"

    .line 360
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    :cond_0
    const-string v0, "Server responded with non-VAST XML"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 366
    :cond_1
    const-string v1, "VAST"

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 369
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 373
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    invoke-direct {p0, v0}, Lcom/my/target/core/parsers/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 378
    :cond_3
    const/4 v1, 0x3

    const-string v2, "VAST"

    invoke-interface {v0, v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/my/target/core/parsers/c$a;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 453
    const-string v0, "Wrapper"

    invoke-interface {p1, v4, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 456
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 460
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_2

    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    const-string v0, "Impression"

    invoke-interface {p1, v4, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/my/target/core/parsers/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Impression tracker url for wrapper: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 472
    :cond_1
    const-string v0, "Impression"

    invoke-interface {p1, v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "Creatives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 476
    invoke-direct {p0, p1}, Lcom/my/target/core/parsers/c;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 477
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "Extensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 479
    invoke-direct {p0, p1}, Lcom/my/target/core/parsers/c;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 481
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "VASTAdTagURI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3831
    const-string v0, "VASTAdTagURI"

    invoke-interface {p1, v4, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3832
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 3833
    const-string v1, "VASTAdTagURI"

    invoke-interface {p1, v5, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3834
    iput-object v0, p0, Lcom/my/target/core/parsers/c;->c:Ljava/lang/String;

    goto :goto_0

    .line 487
    :cond_5
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 490
    :cond_6
    const-string v0, "Wrapper"

    invoke-interface {p1, v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/core/parsers/c$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 774
    const-string v0, "VideoClicks"

    invoke-interface {p0, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 777
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 781
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 782
    if-eqz v0, :cond_1

    const-string v1, "ClickThrough"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    const-string v0, "ClickThrough"

    invoke-interface {p0, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {p1}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-static {p0}, Lcom/my/target/core/parsers/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/i;->c(Ljava/lang/String;)V

    .line 788
    const-string v0, "ClickThrough"

    invoke-interface {p0, v6, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "ClickTracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 792
    const-string v0, "ClickTracking"

    invoke-interface {p0, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v0, p1, Lcom/my/target/core/parsers/c$b;->a:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ClickTracking"

    invoke-static {p0}, Lcom/my/target/core/parsers/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    const-string v0, "ClickTracking"

    invoke-interface {p0, v6, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 800
    :cond_2
    invoke-static {p0}, Lcom/my/target/core/parsers/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 803
    :cond_3
    const-string v0, "VideoClicks"

    invoke-interface {p0, v6, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 804
    return-void
.end method

.method private static c(Ljava/lang/String;)F
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x3c

    .line 948
    const-wide/16 v2, 0x0

    .line 953
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 955
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 958
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 959
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 962
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 963
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 965
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 966
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 968
    const/4 v6, 0x0

    const-string v7, ":"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 969
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 971
    mul-long/2addr v0, v10

    add-long/2addr v0, v2

    mul-long v2, v4, v8

    mul-long/2addr v2, v10

    add-long/2addr v0, v2

    mul-long v2, v6, v8

    mul-long/2addr v2, v8

    mul-long/2addr v2, v10

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 974
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 496
    const-string v0, ""

    .line 497
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 499
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 506
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 504
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/my/target/core/parsers/c$a;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 512
    const-string v0, "Creatives"

    invoke-interface {p1, v5, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 515
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 519
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_7

    const-string v1, "Creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 522
    const-string v0, "id"

    invoke-interface {p1, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4592
    const-string v1, "Creative"

    invoke-interface {p1, v5, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4593
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 4595
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 4599
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4601
    if-eqz v1, :cond_5

    const-string v2, "Linear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4603
    new-instance v1, Lcom/my/target/core/parsers/c$b;

    invoke-direct {v1}, Lcom/my/target/core/parsers/c$b;-><init>()V

    .line 4604
    invoke-virtual {v1}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/my/target/core/models/banners/i;->j(Ljava/lang/String;)V

    .line 4605
    iget-object v2, p0, Lcom/my/target/core/parsers/c;->i:Lcom/my/target/core/parsers/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creative id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/my/target/core/parsers/a$a;->e:Ljava/lang/String;

    .line 4606
    const-string v2, "skipoffset"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4607
    if-eqz v2, :cond_4

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4609
    const/4 v3, 0x0

    .line 4610
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 4609
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/my/target/core/parsers/c$b;->c:I

    .line 4611
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Linear skipoffset is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/my/target/core/parsers/c$b;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [%]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 4626
    :cond_2
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/my/target/core/parsers/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/core/parsers/c$b;)V

    .line 4627
    invoke-virtual {v1}, Lcom/my/target/core/parsers/c$b;->a()Lcom/my/target/core/models/banners/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/models/banners/i;->n()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 4629
    const-string v2, "Cannot parse videobanner duration "

    iget-object v3, p0, Lcom/my/target/core/parsers/c;->i:Lcom/my/target/core/parsers/a$a;

    const-string v4, "No duration"

    invoke-static {v2, v3, v4}, Lcom/my/target/core/parsers/a;->b(Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;)V

    .line 4632
    :cond_3
    iget-object v2, p0, Lcom/my/target/core/parsers/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4613
    :cond_4
    if-eqz v2, :cond_2

    const-string v3, ":"

    .line 4614
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4618
    :try_start_0
    invoke-static {v2}, Lcom/my/target/core/parsers/c;->c(Ljava/lang/String;)F

    move-result v3

    iput v3, v1, Lcom/my/target/core/parsers/c$b;->d:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4621
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to add linear skipoffset, cannot parse \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/my/target/core/parsers/c;->i:Lcom/my/target/core/parsers/a$a;

    const-string v4, "Time format convert exception"

    invoke-static {v2, v3, v4}, Lcom/my/target/core/parsers/a;->b(Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;)V

    goto :goto_2

    .line 4636
    :cond_5
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 4639
    :cond_6
    const-string v0, "Creative"

    invoke-interface {p1, v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    :cond_7
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 530
    :cond_8
    const-string v0, "Creatives"

    invoke-interface {p1, v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/my/target/core/parsers/c$a;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 536
    const-string v0, "Extensions"

    invoke-interface {p1, v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 539
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 543
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_3

    const-string v1, "Extension"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 546
    const-string v0, "type"

    invoke-interface {p1, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 547
    sget-object v2, Lcom/my/target/core/parsers/c;->d:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 548
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5563
    const-string v4, "Extension"

    invoke-interface {p1, v9, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 5564
    const-string v4, "linkTxt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5566
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 5580
    :try_start_0
    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/my/target/core/parsers/c;->f:Ljava/lang/String;

    .line 5581
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VAST linkTxt decoded text = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/my/target/core/parsers/c;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5569
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VAST linkTxt raw text: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 5572
    :cond_1
    const-string v4, "Extension"

    invoke-interface {p1, v10, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 547
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5584
    :catch_0
    move-exception v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to decode linkTxt extention: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/my/target/core/parsers/c;->i:Lcom/my/target/core/parsers/a$a;

    const-string v7, "Decoding exception"

    invoke-static {v5, v6, v7}, Lcom/my/target/core/parsers/a;->b(Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;)V

    goto :goto_2

    .line 551
    :cond_2
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 554
    :cond_3
    invoke-static {p1}, Lcom/my/target/core/parsers/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 557
    :cond_4
    const-string v0, "Extensions"

    invoke-interface {p1, v10, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method private static f(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 811
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 813
    :cond_0
    const/4 v0, 0x1

    .line 814
    :goto_0
    if-eqz v0, :cond_1

    .line 816
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 822
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 820
    goto :goto_0

    .line 826
    :cond_1
    return-void

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
