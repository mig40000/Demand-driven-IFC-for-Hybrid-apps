.class public final Lcom/yandex/metrica/c$a$g$a;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile m:[Lcom/yandex/metrica/c$a$g$a;


# instance fields
.field public b:J

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:[B

.field public g:Lcom/yandex/metrica/c$a$d;

.field public h:Lcom/yandex/metrica/c$a$e;

.field public i:Ljava/lang/String;

.field public j:Lcom/yandex/metrica/c$a$a;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1543
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1544
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$g$a;->e()Lcom/yandex/metrica/c$a$g$a;

    .line 1545
    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$g$a;
    .locals 2

    .prologue
    .line 1497
    sget-object v0, Lcom/yandex/metrica/c$a$g$a;->m:[Lcom/yandex/metrica/c$a$g$a;

    if-nez v0, :cond_1

    .line 1498
    sget-object v1, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1500
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/c$a$g$a;->m:[Lcom/yandex/metrica/c$a$g$a;

    if-nez v0, :cond_0

    .line 1501
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$g$a;

    sput-object v0, Lcom/yandex/metrica/c$a$g$a;->m:[Lcom/yandex/metrica/c$a$g$a;

    .line 1503
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    :cond_1
    sget-object v0, Lcom/yandex/metrica/c$a$g$a;->m:[Lcom/yandex/metrica/c$a$g$a;

    return-object v0

    .line 1503
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1566
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$g$a;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1567
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$g$a;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1568
    const/4 v0, 0x3

    iget v1, p0, Lcom/yandex/metrica/c$a$g$a;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 1569
    iget-object v0, p0, Lcom/yandex/metrica/c$a$g$a;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1570
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1572
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/c$a$g$a;->f:[B

    sget-object v1, Lcom/yandex/metrica/impl/ob/f;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1573
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->f:[B

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(I[B)V

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/c$a$g$a;->g:Lcom/yandex/metrica/c$a$d;

    if-eqz v0, :cond_2

    .line 1576
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->g:Lcom/yandex/metrica/c$a$d;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1578
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/c$a$g$a;->h:Lcom/yandex/metrica/c$a$e;

    if-eqz v0, :cond_3

    .line 1579
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->h:Lcom/yandex/metrica/c$a$e;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1581
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/c$a$g$a;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1582
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1584
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/c$a$g$a;->j:Lcom/yandex/metrica/c$a$a;

    if-eqz v0, :cond_5

    .line 1585
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->j:Lcom/yandex/metrica/c$a$a;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1587
    :cond_5
    iget v0, p0, Lcom/yandex/metrica/c$a$g$a;->k:I

    if-eqz v0, :cond_6

    .line 1588
    const/16 v0, 0xa

    iget v1, p0, Lcom/yandex/metrica/c$a$g$a;->k:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 1590
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/c$a$g$a;->l:I

    if-eqz v0, :cond_7

    .line 1591
    const/16 v0, 0xc

    iget v1, p0, Lcom/yandex/metrica/c$a$g$a;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1593
    :cond_7
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 1594
    return-void
.end method

.method protected c()I
    .locals 4

    .prologue
    .line 1598
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 1599
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$g$a;->b:J

    .line 1600
    invoke-static {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1601
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$g$a;->c:J

    .line 1602
    invoke-static {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1603
    const/4 v1, 0x3

    iget v2, p0, Lcom/yandex/metrica/c$a$g$a;->d:I

    .line 1604
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1605
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1606
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g$a;->e:Ljava/lang/String;

    .line 1607
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1609
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->f:[B

    sget-object v2, Lcom/yandex/metrica/impl/ob/f;->b:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1610
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g$a;->f:[B

    .line 1611
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1613
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->g:Lcom/yandex/metrica/c$a$d;

    if-eqz v1, :cond_2

    .line 1614
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g$a;->g:Lcom/yandex/metrica/c$a$d;

    .line 1615
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1617
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->h:Lcom/yandex/metrica/c$a$e;

    if-eqz v1, :cond_3

    .line 1618
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g$a;->h:Lcom/yandex/metrica/c$a$e;

    .line 1619
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1621
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1622
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g$a;->i:Ljava/lang/String;

    .line 1623
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1625
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g$a;->j:Lcom/yandex/metrica/c$a$a;

    if-eqz v1, :cond_5

    .line 1626
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g$a;->j:Lcom/yandex/metrica/c$a$a;

    .line 1627
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1629
    :cond_5
    iget v1, p0, Lcom/yandex/metrica/c$a$g$a;->k:I

    if-eqz v1, :cond_6

    .line 1630
    const/16 v1, 0xa

    iget v2, p0, Lcom/yandex/metrica/c$a$g$a;->k:I

    .line 1631
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1633
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/c$a$g$a;->l:I

    if-eqz v1, :cond_7

    .line 1634
    const/16 v1, 0xc

    iget v2, p0, Lcom/yandex/metrica/c$a$g$a;->l:I

    .line 1635
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1637
    :cond_7
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$g$a;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1548
    iput-wide v4, p0, Lcom/yandex/metrica/c$a$g$a;->b:J

    .line 1549
    iput-wide v4, p0, Lcom/yandex/metrica/c$a$g$a;->c:J

    .line 1550
    iput v1, p0, Lcom/yandex/metrica/c$a$g$a;->d:I

    .line 1551
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$g$a;->e:Ljava/lang/String;

    .line 1552
    sget-object v0, Lcom/yandex/metrica/impl/ob/f;->b:[B

    iput-object v0, p0, Lcom/yandex/metrica/c$a$g$a;->f:[B

    .line 1553
    iput-object v2, p0, Lcom/yandex/metrica/c$a$g$a;->g:Lcom/yandex/metrica/c$a$d;

    .line 1554
    iput-object v2, p0, Lcom/yandex/metrica/c$a$g$a;->h:Lcom/yandex/metrica/c$a$e;

    .line 1555
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$g$a;->i:Ljava/lang/String;

    .line 1556
    iput-object v2, p0, Lcom/yandex/metrica/c$a$g$a;->j:Lcom/yandex/metrica/c$a$a;

    .line 1557
    iput v1, p0, Lcom/yandex/metrica/c$a$g$a;->k:I

    .line 1558
    iput v1, p0, Lcom/yandex/metrica/c$a$g$a;->l:I

    .line 1559
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$g$a;->a:I

    .line 1560
    return-object p0
.end method
