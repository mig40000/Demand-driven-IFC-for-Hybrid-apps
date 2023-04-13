.class public Lcom/yandex/metrica/impl/ob/bl;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected final a:Lcom/yandex/metrica/impl/ob/bo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bo;)V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    sget v1, Lcom/yandex/metrica/impl/ob/bj;->b:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bo;

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bo;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bo;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bo;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 35
    return-void
.end method
