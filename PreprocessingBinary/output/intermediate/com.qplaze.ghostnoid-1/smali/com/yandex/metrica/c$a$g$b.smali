.class public final Lcom/yandex/metrica/c$a$g$b;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:Lcom/yandex/metrica/c$b;

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1377
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1378
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$g$b;->d()Lcom/yandex/metrica/c$a$g$b;

    .line 1379
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/yandex/metrica/c$a$g$b;->b:Lcom/yandex/metrica/c$b;

    if-eqz v0, :cond_0

    .line 1393
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$b;->b:Lcom/yandex/metrica/c$b;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1395
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1396
    iget v0, p0, Lcom/yandex/metrica/c$a$g$b;->d:I

    if-eqz v0, :cond_1

    .line 1397
    const/4 v0, 0x5

    iget v1, p0, Lcom/yandex/metrica/c$a$g$b;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1399
    :cond_1
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 1400
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 1404
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 1405
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$b;->b:Lcom/yandex/metrica/c$b;

    if-eqz v1, :cond_0

    .line 1406
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g$b;->b:Lcom/yandex/metrica/c$b;

    .line 1407
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1409
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g$b;->c:Ljava/lang/String;

    .line 1410
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1411
    iget v1, p0, Lcom/yandex/metrica/c$a$g$b;->d:I

    if-eqz v1, :cond_1

    .line 1412
    const/4 v1, 0x5

    iget v2, p0, Lcom/yandex/metrica/c$a$g$b;->d:I

    .line 1413
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1415
    :cond_1
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$g$b;
    .locals 1

    .prologue
    .line 1382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$g$b;->b:Lcom/yandex/metrica/c$b;

    .line 1383
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$g$b;->c:Ljava/lang/String;

    .line 1384
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/c$a$g$b;->d:I

    .line 1385
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$g$b;->a:I

    .line 1386
    return-object p0
.end method
