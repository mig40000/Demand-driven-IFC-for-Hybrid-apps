.class Lcom/yandex/metrica/impl/ap;
.super Lcom/yandex/metrica/impl/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ap$a;,
        Lcom/yandex/metrica/impl/ap$b;,
        Lcom/yandex/metrica/impl/ap$c;
    }
.end annotation


# instance fields
.field l:Lcom/yandex/metrica/c$a;

.field m:Lcom/yandex/metrica/impl/aw;

.field n:Lcom/yandex/metrica/impl/ob/bk;

.field o:Lcom/yandex/metrica/impl/ob/t;

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field q:I

.field r:I

.field private s:Lcom/yandex/metrica/impl/ap$c;

.field private final t:Lcom/yandex/metrica/impl/utils/e;

.field private u:Z


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 6

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yandex/metrica/impl/l;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ap;->r:I

    .line 80
    new-instance v0, Lcom/yandex/metrica/impl/utils/e;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/e;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ap;->t:Lcom/yandex/metrica/impl/utils/e;

    .line 84
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap;->o:Lcom/yandex/metrica/impl/ob/t;

    .line 85
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->i()Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ap;->n:Lcom/yandex/metrica/impl/ob/bk;

    .line 86
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    .line 1154
    const/4 v0, 0x1

    .line 2029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1155
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1156
    invoke-static {}, Lcom/yandex/metrica/impl/utils/l;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1154
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/al;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v0

    .line 87
    iput v0, p0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 88
    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/a$a;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 447
    .line 448
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-static {v0}, Lcom/yandex/metrica/impl/ap;->a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/c$a$c;

    move-result-object v4

    .line 450
    if-eqz v4, :cond_1

    .line 451
    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v4, v2

    .line 452
    const/4 v6, 0x7

    invoke-static {v6, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/2addr v3, v0

    .line 451
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/c$a$c;
    .locals 5

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    .line 236
    if-lez v0, :cond_1

    .line 237
    new-array v2, v0, [Lcom/yandex/metrica/c$a$c;

    .line 238
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 239
    const/4 v0, 0x0

    move v1, v0

    .line 240
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    :try_start_0
    new-instance v4, Lcom/yandex/metrica/c$a$c;

    invoke-direct {v4}, Lcom/yandex/metrica/c$a$c;-><init>()V

    .line 244
    iput-object v0, v4, Lcom/yandex/metrica/c$a$c;->b:Ljava/lang/String;

    .line 245
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/yandex/metrica/c$a$c;->c:Ljava/lang/String;

    .line 246
    aput-object v4, v2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 251
    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 254
    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static w()Lcom/yandex/metrica/impl/ap$a;
    .locals 1

    .prologue
    .line 602
    new-instance v0, Lcom/yandex/metrica/impl/ap$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ap$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a(JLcom/yandex/metrica/impl/ob/bi;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->n:Lcom/yandex/metrica/impl/ob/bk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bk;->b(JLcom/yandex/metrica/impl/ob/bi;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/ap$c;[Lcom/yandex/metrica/c$a$f;)Lcom/yandex/metrica/c$a;
    .locals 3

    .prologue
    .line 104
    new-instance v1, Lcom/yandex/metrica/c$a;

    invoke-direct {v1}, Lcom/yandex/metrica/c$a;-><init>()V

    .line 105
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ap;->a(Lcom/yandex/metrica/c$a;)V

    .line 106
    iget-object v0, p1, Lcom/yandex/metrica/impl/ap$c;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ap$c;->a:Ljava/util/List;

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/yandex/metrica/c$a$g;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/c$a$g;

    iput-object v0, v1, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$g;

    .line 108
    iget-object v0, p1, Lcom/yandex/metrica/impl/ap$c;->c:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ap;->a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/c$a$c;

    move-result-object v0

    iput-object v0, v1, Lcom/yandex/metrica/c$a;->d:[Lcom/yandex/metrica/c$a$c;

    .line 109
    iput-object p2, v1, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$f;

    .line 110
    iget v0, p0, Lcom/yandex/metrica/impl/ap;->q:I

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 111
    return-object v1
.end method

.method protected a(JLcom/yandex/metrica/c$a$g$b;)Lcom/yandex/metrica/impl/ap$b;
    .locals 15

    .prologue
    .line 463
    new-instance v7, Lcom/yandex/metrica/c$a$g;

    invoke-direct {v7}, Lcom/yandex/metrica/c$a$g;-><init>()V

    .line 464
    move-wide/from16 v0, p1

    iput-wide v0, v7, Lcom/yandex/metrica/c$a$g;->b:J

    .line 465
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/yandex/metrica/c$a$g;->c:Lcom/yandex/metrica/c$a$g$b;

    .line 466
    const/4 v4, 0x0

    .line 467
    move-object/from16 v0, p3

    iget v2, v0, Lcom/yandex/metrica/c$a$g$b;->d:I

    invoke-static {v2}, Lcom/yandex/metrica/impl/al;->a(I)Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v5

    .line 468
    const/4 v2, 0x0

    .line 469
    const/4 v3, 0x0

    .line 472
    :try_start_0
    move-wide/from16 v0, p1

    invoke-virtual {p0, v0, v1, v5}, Lcom/yandex/metrica/impl/ap;->a(JLcom/yandex/metrica/impl/ob/bi;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 474
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 476
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 477
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 478
    invoke-static {v5, v9}, Lcom/yandex/metrica/impl/utils/d;->a(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 3550
    const/4 v4, 0x0

    .line 4530
    const-string v6, "type"

    invoke-virtual {v9, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 4532
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-boolean v10, p0, Lcom/yandex/metrica/impl/ap;->u:Z

    invoke-static {v6, v10}, Lcom/yandex/metrica/impl/al$a;->a(IZ)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "custom_type"

    .line 4533
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->b(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "name"

    .line 4534
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "value"

    .line 4535
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "time"

    .line 4536
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/yandex/metrica/impl/al$a;->a(J)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "number"

    .line 4537
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->a(I)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "cell_info"

    .line 4538
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "location_info"

    .line 4539
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "wifi_network_info"

    .line 4540
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "error_environment"

    .line 4541
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "user_info"

    .line 4542
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "truncated"

    .line 4543
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->b(I)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "connection_type"

    .line 4544
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->c(I)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "cellular_connection_type"

    .line 4545
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    const-string v10, "wifi_access_point"

    .line 4546
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/yandex/metrica/impl/al$a;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    .line 3553
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/al$a;->c()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 3554
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/al$a;->e()Lcom/yandex/metrica/c$a$g$a;

    move-result-object v4

    move-object v6, v4

    .line 480
    :goto_1
    if-eqz v6, :cond_0

    .line 5440
    new-instance v4, Lcom/yandex/metrica/impl/a$a;

    const-string v10, "app_environment"

    .line 5441
    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "app_environment_revision"

    .line 5442
    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v4, v10, v12, v13}, Lcom/yandex/metrica/impl/a$a;-><init>(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 482
    if-nez v2, :cond_3

    .line 484
    :try_start_3
    iget v2, p0, Lcom/yandex/metrica/impl/ap;->r:I

    if-gez v2, :cond_7

    .line 485
    invoke-static {v4}, Lcom/yandex/metrica/impl/ap;->a(Lcom/yandex/metrica/impl/a$a;)I

    move-result v2

    iput v2, p0, Lcom/yandex/metrica/impl/ap;->r:I

    .line 486
    iget v2, p0, Lcom/yandex/metrica/impl/ap;->q:I

    iget v9, p0, Lcom/yandex/metrica/impl/ap;->r:I

    add-int/2addr v2, v9

    iput v2, p0, Lcom/yandex/metrica/impl/ap;->q:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v4

    .line 5522
    :cond_1
    :goto_2
    :try_start_4
    iget-object v4, p0, Lcom/yandex/metrica/impl/ap;->t:Lcom/yandex/metrica/impl/utils/e;

    iget-object v9, v6, Lcom/yandex/metrica/c$a$g$a;->f:[B

    const v10, 0x3c000

    invoke-virtual {v4, v9, v10}, Lcom/yandex/metrica/impl/utils/e;->a([BI)[B

    move-result-object v4

    .line 5523
    iget-object v9, v6, Lcom/yandex/metrica/c$a$g$a;->f:[B

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 5524
    iput-object v4, v6, Lcom/yandex/metrica/c$a$g$a;->f:[B

    .line 5525
    iget v9, v6, Lcom/yandex/metrica/c$a$g$a;->k:I

    iget-object v10, v6, Lcom/yandex/metrica/c$a$g$a;->f:[B

    array-length v10, v10

    array-length v4, v4

    sub-int v4, v10, v4

    add-int/2addr v4, v9

    iput v4, v6, Lcom/yandex/metrica/c$a$g$a;->k:I

    .line 495
    :cond_2
    iget v4, p0, Lcom/yandex/metrica/impl/ap;->q:I

    const/4 v9, 0x3

    invoke-static {v9, v6}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v9

    add-int/2addr v4, v9

    iput v4, p0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 497
    iget v4, p0, Lcom/yandex/metrica/impl/ap;->q:I

    const v9, 0x3d400

    if-ge v4, v9, :cond_6

    .line 501
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 515
    :catch_0
    move-exception v4

    move-object v4, v5

    move-object v14, v2

    move v2, v3

    move-object v3, v14

    :goto_3
    invoke-static {v4}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 518
    :goto_4
    new-instance v4, Lcom/yandex/metrica/impl/ap$b;

    invoke-direct {v4, v7, v3, v2}, Lcom/yandex/metrica/impl/ap$b;-><init>(Lcom/yandex/metrica/c$a$g;Lcom/yandex/metrica/impl/a$a;Z)V

    move-object v2, v4

    :goto_5
    return-object v2

    .line 488
    :cond_3
    :try_start_5
    invoke-virtual {v2, v4}, Lcom/yandex/metrica/impl/a$a;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    if-nez v4, :cond_1

    .line 489
    const/4 v3, 0x1

    move-object v4, v2

    .line 505
    :goto_6
    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 506
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/yandex/metrica/c$a$g$a;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/yandex/metrica/c$a$g$a;

    iput-object v2, v7, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 515
    invoke-static {v5}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    move v2, v3

    move-object v3, v4

    .line 516
    goto :goto_4

    .line 515
    :cond_4
    invoke-static {v5}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    const/4 v2, 0x0

    goto :goto_5

    :catchall_0
    move-exception v2

    move-object v5, v4

    :goto_7
    invoke-static {v5}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_7

    :catch_1
    move-exception v5

    move v14, v3

    move-object v3, v2

    move v2, v14

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v4, v5

    move-object v14, v2

    move v2, v3

    move-object v3, v14

    goto :goto_3

    :catch_3
    move-exception v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_3

    :cond_5
    move-object v6, v4

    goto/16 :goto_1

    :cond_6
    move-object v4, v2

    goto :goto_6

    :cond_7
    move-object v2, v4

    goto/16 :goto_2
.end method

.method a(Lcom/yandex/metrica/c$a;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->o:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/du;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/du;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ap$1;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ap$1;-><init>(Lcom/yandex/metrica/impl/ap;Lcom/yandex/metrica/c$a;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/du;->a(Lcom/yandex/metrica/impl/ob/dw;)V

    .line 151
    return-void
.end method

.method protected a(J)Z
    .locals 3

    .prologue
    .line 572
    const-wide/16 v0, -0x2

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->J()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yandex/metrica/impl/ap;->p:Ljava/util/List;

    .line 168
    iget-object v1, p0, Lcom/yandex/metrica/impl/ap;->o:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/t;->A()Z

    move-result v1

    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ap;->u:Z

    .line 171
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap;->s()[Lcom/yandex/metrica/c$a$f;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap;->t()Lcom/yandex/metrica/impl/ap$c;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/metrica/impl/ap;->s:Lcom/yandex/metrica/impl/ap$c;

    .line 175
    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->s:Lcom/yandex/metrica/impl/ap$c;

    iget-object v2, v2, Lcom/yandex/metrica/impl/ap$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->s:Lcom/yandex/metrica/impl/ap$c;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ap;->a(Lcom/yandex/metrica/impl/ap$c;[Lcom/yandex/metrica/c$a$f;)Lcom/yandex/metrica/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ap;->l:Lcom/yandex/metrica/c$a;

    .line 181
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap;->r()V

    .line 183
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->s:Lcom/yandex/metrica/impl/ap$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ap$c;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ap;->p:Ljava/util/List;

    .line 185
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap;->k()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ap;->k:Z

    .line 328
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap;->k()I

    move-result v0

    const/16 v3, 0x190

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 329
    :goto_1
    iget-boolean v3, p0, Lcom/yandex/metrica/impl/ap;->k:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    .line 331
    :cond_0
    :goto_2
    if-eqz v1, :cond_5

    .line 332
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->l:Lcom/yandex/metrica/c$a;

    iget-object v1, v0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$g;

    .line 334
    :goto_3
    array-length v0, v1

    if-ge v2, v0, :cond_4

    .line 335
    aget-object v3, v1, v2

    .line 336
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->p:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 337
    iget-object v0, v3, Lcom/yandex/metrica/c$a$g;->c:Lcom/yandex/metrica/c$a$g$b;

    iget v0, v0, Lcom/yandex/metrica/c$a$g$b;->d:I

    invoke-static {v0}, Lcom/yandex/metrica/impl/al;->a(I)Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v0

    .line 339
    iget-object v6, p0, Lcom/yandex/metrica/impl/ap;->n:Lcom/yandex/metrica/impl/ob/bk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bi;->a()I

    move-result v0

    iget-object v3, v3, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;

    array-length v3, v3

    invoke-virtual {v6, v4, v5, v0, v3}, Lcom/yandex/metrica/impl/ob/bk;->a(JII)V

    .line 340
    invoke-static {}, Lcom/yandex/metrica/impl/al;->a()V

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    move v0, v2

    .line 327
    goto :goto_0

    :cond_2
    move v0, v2

    .line 328
    goto :goto_1

    :cond_3
    move v1, v2

    .line 329
    goto :goto_2

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->n:Lcom/yandex/metrica/impl/ob/bk;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ap;->o:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/bf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bf;->c()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bk;->a([J)I

    .line 347
    :cond_5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ap;->k:Z

    return v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/ck;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lcom/yandex/metrica/impl/ob/cn;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cn;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ck;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 7

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->l:Lcom/yandex/metrica/c$a;

    .line 3029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 191
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 192
    invoke-static {}, Lcom/yandex/metrica/impl/utils/l;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 190
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/al;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$b;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$b;

    .line 194
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->l:Lcom/yandex/metrica/c$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/d;)[B

    move-result-object v2

    .line 3198
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3199
    const/4 v1, 0x0

    .line 3204
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3205
    const/4 v1, 0x0

    :try_start_1
    array-length v4, v2

    invoke-virtual {v0, v2, v1, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 3206
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 3208
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ap;->a([B)V

    .line 3209
    const-string v1, "gzip"

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ap;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3218
    invoke-static {v3}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 3219
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 3220
    :goto_0
    return-void

    .line 3213
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ap;->a([B)V

    .line 3214
    const-string v1, "identity"

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ap;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3218
    invoke-static {v3}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 3219
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 3218
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v3}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 3219
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    throw v0

    .line 3218
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 3213
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public f()V
    .locals 4

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ap;->k:Z

    if-eqz v0, :cond_0

    .line 3365
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->o:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->p()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v2

    .line 3366
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/utils/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3367
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->s:Lcom/yandex/metrica/impl/ap$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ap$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3368
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->s:Lcom/yandex/metrica/impl/ap$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ap$c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/c$a$g;

    const-string v3, "Event sent"

    invoke-virtual {v2, v0, v3}, Lcom/yandex/metrica/impl/utils/i;->a(Lcom/yandex/metrica/c$a$g;Ljava/lang/String;)V

    .line 3367
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 361
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ap;->s:Lcom/yandex/metrica/impl/ap$c;

    .line 362
    return-void
.end method

.method r()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2259
    const-string v0, "report"

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2262
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2263
    const-string v2, "deviceid"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2264
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2265
    const-string v2, "uuid"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2266
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2267
    const-string v2, "analytics_sdk_version"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2268
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2269
    const-string v2, "client_analytics_sdk_version"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2270
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->x()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2271
    const-string v2, "app_version_name"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2272
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->z()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2273
    const-string v2, "app_build_number"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2274
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2275
    const-string v2, "os_version"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2276
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->r()I

    move-result v0

    if-lez v0, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2278
    const-string v2, "os_api_level"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2280
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2281
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->k()Ljava/lang/String;

    move-result-object v0

    .line 2282
    const-string v2, "analytics_sdk_build_number"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2284
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2285
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->l()Ljava/lang/String;

    move-result-object v0

    .line 2286
    const-string v2, "analytics_sdk_build_type"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2288
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->w()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2289
    const-string v2, "locale"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2290
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->E()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2291
    const-string v2, "is_rooted"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2292
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2293
    const-string v2, "app_framework"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2296
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    .line 2298
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->j()I

    move-result v0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_5

    const-string v0, "api_key_128"

    .line 2301
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap;->u()Ljava/lang/String;

    move-result-object v2

    .line 2296
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2302
    const-string v0, "app_id"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->o:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2303
    const-string v0, "app_platform"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2304
    const-string v0, "protocol_version"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2305
    const-string v0, "model"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2306
    const-string v0, "manufacturer"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2307
    const-string v0, "screen_width"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2308
    const-string v0, "screen_height"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2309
    const-string v0, "screen_dpi"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->u()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2310
    const-string v0, "scalefactor"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->v()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2311
    const-string v0, "device_type"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2312
    const-string v0, "android_id"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/aw;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2313
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->o:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2315
    const-string v2, "adv_id"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2317
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->y()Ljava/lang/String;

    move-result-object v0

    .line 2318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2319
    const-string v2, "clids_set"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ap;->a(Ljava/lang/String;)V

    .line 100
    return-void

    .line 2298
    :cond_5
    const-string v0, "api_key"

    goto/16 :goto_0
.end method

.method s()[Lcom/yandex/metrica/c$a$f;
    .locals 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->o:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;)[Lcom/yandex/metrica/c$a$f;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_0

    .line 227
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 228
    iget v4, p0, Lcom/yandex/metrica/impl/ap;->q:I

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/b;->b(Lcom/yandex/metrica/impl/ob/d;)I

    move-result v3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-object v1
.end method

.method protected t()Lcom/yandex/metrica/impl/ap$c;
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 374
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 375
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 377
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 381
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap;->v()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 383
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 385
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/utils/d;->a(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 386
    const-string v6, "id"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 387
    const-string v8, "type"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/yandex/metrica/impl/ob/bi;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v8

    .line 390
    invoke-virtual {p0, v6, v7}, Lcom/yandex/metrica/impl/ap;->a(J)Z

    move-result v9

    if-nez v9, :cond_0

    .line 395
    invoke-static {v3}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/c$b;

    move-result-object v3

    .line 396
    invoke-static {v8}, Lcom/yandex/metrica/impl/al;->a(Lcom/yandex/metrica/impl/ob/bi;)I

    move-result v8

    .line 399
    iget-object v9, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    .line 400
    invoke-virtual {v9}, Lcom/yandex/metrica/impl/aw;->w()Ljava/lang/String;

    move-result-object v9

    .line 399
    invoke-static {v9, v8, v3}, Lcom/yandex/metrica/impl/al;->a(Ljava/lang/String;ILcom/yandex/metrica/c$b;)Lcom/yandex/metrica/c$a$g$b;

    move-result-object v3

    .line 404
    iget v8, p0, Lcom/yandex/metrica/impl/ap;->q:I

    const/4 v9, 0x1

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v9, v10, v11}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 405
    iget v8, p0, Lcom/yandex/metrica/impl/ap;->q:I

    const/4 v9, 0x2

    invoke-static {v9, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 407
    iget v8, p0, Lcom/yandex/metrica/impl/ap;->q:I

    const v9, 0x3d400

    if-ge v8, v9, :cond_1

    .line 411
    invoke-virtual {p0, v6, v7, v3}, Lcom/yandex/metrica/impl/ap;->a(JLcom/yandex/metrica/c$a$g$b;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v8

    .line 412
    if-eqz v8, :cond_0

    .line 413
    if-nez v1, :cond_2

    .line 414
    iget-object v1, v8, Lcom/yandex/metrica/impl/ap$b;->b:Lcom/yandex/metrica/impl/a$a;

    .line 418
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v3, v8, Lcom/yandex/metrica/impl/ap$b;->a:Lcom/yandex/metrica/c$a$g;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 421
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, v8, Lcom/yandex/metrica/impl/ap$b;->b:Lcom/yandex/metrica/impl/a$a;

    iget-object v6, v6, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v3

    .line 425
    :goto_1
    :try_start_3
    iget-boolean v3, v8, Lcom/yandex/metrica/impl/ap$b;->c:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    .line 433
    :cond_1
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 436
    :goto_2
    new-instance v1, Lcom/yandex/metrica/impl/ap$c;

    invoke-direct {v1, v4, v5, v0}, Lcom/yandex/metrica/impl/ap$c;-><init>(Ljava/util/List;Ljava/util/List;Lorg/json/JSONObject;)V

    return-object v1

    .line 415
    :cond_2
    :try_start_4
    iget-object v3, v8, Lcom/yandex/metrica/impl/ap$b;->b:Lcom/yandex/metrica/impl/a$a;

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/a$a;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 433
    :catch_0
    move-exception v2

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_3
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->m:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->n:Lcom/yandex/metrica/impl/ob/bk;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ap;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bk;->a(Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
