.class public final Lcom/yandex/metrica/c$a$b;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static volatile k:[Lcom/yandex/metrica/c$a$b;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 512
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$b;->e()Lcom/yandex/metrica/c$a$b;

    .line 513
    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$b;
    .locals 2

    .prologue
    .line 471
    sget-object v0, Lcom/yandex/metrica/c$a$b;->k:[Lcom/yandex/metrica/c$a$b;

    if-nez v0, :cond_1

    .line 472
    sget-object v1, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/c$a$b;->k:[Lcom/yandex/metrica/c$a$b;

    if-nez v0, :cond_0

    .line 475
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$b;

    sput-object v0, Lcom/yandex/metrica/c$a$b;->k:[Lcom/yandex/metrica/c$a$b;

    .line 477
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_1
    sget-object v0, Lcom/yandex/metrica/c$a$b;->k:[Lcom/yandex/metrica/c$a$b;

    return-object v0

    .line 477
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 532
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->b:I

    if-eq v0, v2, :cond_0

    .line 533
    const/4 v0, 0x1

    iget v1, p0, Lcom/yandex/metrica/c$a$b;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 535
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->c:I

    if-eqz v0, :cond_1

    .line 536
    const/4 v0, 0x2

    iget v1, p0, Lcom/yandex/metrica/c$a$b;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->c(II)V

    .line 538
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->d:I

    if-eq v0, v2, :cond_2

    .line 539
    const/4 v0, 0x3

    iget v1, p0, Lcom/yandex/metrica/c$a$b;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 541
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->e:I

    if-eq v0, v2, :cond_3

    .line 542
    const/4 v0, 0x4

    iget v1, p0, Lcom/yandex/metrica/c$a$b;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 544
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->f:I

    if-eq v0, v2, :cond_4

    .line 545
    const/4 v0, 0x5

    iget v1, p0, Lcom/yandex/metrica/c$a$b;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 547
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/c$a$b;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 548
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/yandex/metrica/c$a$b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 550
    :cond_5
    iget-boolean v0, p0, Lcom/yandex/metrica/c$a$b;->h:Z

    if-eqz v0, :cond_6

    .line 551
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$b;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 553
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->i:I

    if-eqz v0, :cond_7

    .line 554
    const/16 v0, 0x8

    iget v1, p0, Lcom/yandex/metrica/c$a$b;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 556
    :cond_7
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->j:I

    if-eq v0, v2, :cond_8

    .line 557
    const/16 v0, 0x9

    iget v1, p0, Lcom/yandex/metrica/c$a$b;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 559
    :cond_8
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 560
    return-void
.end method

.method protected c()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 564
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 565
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->b:I

    if-eq v1, v3, :cond_0

    .line 566
    const/4 v1, 0x1

    iget v2, p0, Lcom/yandex/metrica/c$a$b;->b:I

    .line 567
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->c:I

    if-eqz v1, :cond_1

    .line 570
    const/4 v1, 0x2

    iget v2, p0, Lcom/yandex/metrica/c$a$b;->c:I

    .line 571
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->d:I

    if-eq v1, v3, :cond_2

    .line 574
    const/4 v1, 0x3

    iget v2, p0, Lcom/yandex/metrica/c$a$b;->d:I

    .line 575
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 577
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->e:I

    if-eq v1, v3, :cond_3

    .line 578
    const/4 v1, 0x4

    iget v2, p0, Lcom/yandex/metrica/c$a$b;->e:I

    .line 579
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 581
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->f:I

    if-eq v1, v3, :cond_4

    .line 582
    const/4 v1, 0x5

    iget v2, p0, Lcom/yandex/metrica/c$a$b;->f:I

    .line 583
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 585
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/c$a$b;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 586
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/yandex/metrica/c$a$b;->g:Ljava/lang/String;

    .line 587
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 589
    :cond_5
    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$b;->h:Z

    if-eqz v1, :cond_6

    .line 590
    const/4 v1, 0x7

    .line 591
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->i:I

    if-eqz v1, :cond_7

    .line 594
    const/16 v1, 0x8

    iget v2, p0, Lcom/yandex/metrica/c$a$b;->i:I

    .line 595
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 597
    :cond_7
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->j:I

    if-eq v1, v3, :cond_8

    .line 598
    const/16 v1, 0x9

    iget v2, p0, Lcom/yandex/metrica/c$a$b;->j:I

    .line 599
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 601
    :cond_8
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 516
    iput v1, p0, Lcom/yandex/metrica/c$a$b;->b:I

    .line 517
    iput v2, p0, Lcom/yandex/metrica/c$a$b;->c:I

    .line 518
    iput v1, p0, Lcom/yandex/metrica/c$a$b;->d:I

    .line 519
    iput v1, p0, Lcom/yandex/metrica/c$a$b;->e:I

    .line 520
    iput v1, p0, Lcom/yandex/metrica/c$a$b;->f:I

    .line 521
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$b;->g:Ljava/lang/String;

    .line 522
    iput-boolean v2, p0, Lcom/yandex/metrica/c$a$b;->h:Z

    .line 523
    iput v2, p0, Lcom/yandex/metrica/c$a$b;->i:I

    .line 524
    iput v1, p0, Lcom/yandex/metrica/c$a$b;->j:I

    .line 525
    iput v1, p0, Lcom/yandex/metrica/c$a$b;->a:I

    .line 526
    return-object p0
.end method
