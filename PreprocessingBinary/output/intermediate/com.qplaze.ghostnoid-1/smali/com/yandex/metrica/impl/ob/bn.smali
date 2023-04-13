.class public Lcom/yandex/metrica/impl/ob/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bn$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/yandex/metrica/impl/ob/bn$a;

.field private volatile e:Z

.field private final f:Lcom/yandex/metrica/impl/ob/br;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bl;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/ob/bt;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/bt;-><init>(Lcom/yandex/metrica/impl/ob/bl;)V

    invoke-direct {p0, p2, v0}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/br;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/br;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/Map;

    .line 54
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Lcom/yandex/metrica/impl/ob/br;

    .line 55
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/yandex/metrica/impl/ob/bn$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/bn$a;-><init>(Lcom/yandex/metrica/impl/ob/bn;B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bn$a;

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bn$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bn$a;->start()V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bn;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bn;Ljava/util/Map;)V
    .locals 7

    .prologue
    .line 33
    .line 1145
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Landroid/content/ContentValues;

    .line 1146
    const/4 v0, 0x0

    .line 1147
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1148
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1149
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1153
    const-string v6, "key"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    if-ne v0, p0, :cond_1

    .line 1155
    const-string v0, "value"

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1171
    :cond_0
    :goto_1
    aput-object v5, v3, v2

    .line 1147
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1156
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1157
    const-string v1, "value"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string v0, "type"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1159
    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 1160
    const-string v1, "value"

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1161
    const-string v0, "type"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1162
    :cond_3
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1163
    const-string v1, "value"

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    const-string v0, "type"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1165
    :cond_4
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 1166
    const-string v1, "value"

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string v0, "type"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1168
    :cond_5
    if-eqz v0, :cond_0

    .line 1169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1173
    :cond_6
    invoke-direct {p0, v3}, Lcom/yandex/metrica/impl/ob/bn;->a([Landroid/content/ContentValues;)V

    .line 33
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/Map;

    monitor-enter v1

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bn;->c()V

    .line 283
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bn$a;

    monitor-enter v1

    .line 286
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bn$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 284
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 288
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private a([Landroid/content/ContentValues;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    if-nez p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 183
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Lcom/yandex/metrica/impl/ob/br;

    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/br;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 184
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 185
    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    .line 186
    const-string v4, "value"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 187
    const-string v4, "key"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bn;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bn;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 199
    :catch_0
    move-exception v1

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Lcom/yandex/metrica/impl/ob/br;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/br;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 195
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Lcom/yandex/metrica/impl/ob/br;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/br;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_3
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Lcom/yandex/metrica/impl/ob/br;

    invoke-interface {v2, v1}, Lcom/yandex/metrica/impl/ob/br;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 199
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bn;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/bn;->e:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 292
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/Map;

    monitor-enter v1

    .line 293
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bn;->c()V

    .line 294
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/bn;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 33
    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Lcom/yandex/metrica/impl/ob/br;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/br;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1098
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bn;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 1101
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1102
    const-string v1, "key"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1103
    const-string v1, "value"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1104
    const-string v4, "type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1105
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1107
    packed-switch v4, :pswitch_data_0

    move-object v1, v8

    .line 1121
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_0

    .line 1122
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v1

    move-object v8, v2

    :goto_2
    invoke-static {v8}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 1130
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Lcom/yandex/metrica/impl/ob/br;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/br;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1131
    :goto_3
    return-void

    .line 1109
    :pswitch_1
    :try_start_3
    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    move-object v1, v8

    goto :goto_1

    .line 1112
    :pswitch_2
    invoke-static {v1}, Lcom/yandex/metrica/impl/utils/h;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 1115
    :pswitch_3
    invoke-static {v1}, Lcom/yandex/metrica/impl/utils/h;->a(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v1

    goto :goto_1

    .line 1129
    :cond_3
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 1130
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Lcom/yandex/metrica/impl/ob/br;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/br;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    .line 1129
    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_4
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Landroid/database/Cursor;)V

    .line 1130
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Lcom/yandex/metrica/impl/ob/br;

    invoke-interface {v1, v8}, Lcom/yandex/metrica/impl/ob/br;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 1129
    :catchall_1
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    .line 1107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/bn;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/Map;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/bn;->e:Z

    if-nez v0, :cond_0

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bn;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 223
    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bn;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 229
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 234
    :cond_0
    return-wide p2
.end method

.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bn;
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/Map;

    monitor-enter v1

    .line 250
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bn;->c()V

    .line 251
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bn$a;

    monitor-enter v1

    .line 254
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bn$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    return-object p0

    .line 252
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 256
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bn;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 207
    check-cast v0, Ljava/lang/String;

    .line 212
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bn;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 239
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 240
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 245
    :cond_0
    return p2
.end method

.method public declared-synchronized b(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/bn;
    .locals 1

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-object p0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bn;
    .locals 2

    .prologue
    .line 266
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    return-object p0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bn;
    .locals 1

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-object p0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/bn;
    .locals 1

    .prologue
    .line 276
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    return-object p0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bn$a;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bn$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 141
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
