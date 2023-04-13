.class public final Lcom/yandex/metrica/c$a$h;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field private static volatile g:[Lcom/yandex/metrica/c$a$h;


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2443
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 2444
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$h;->e()Lcom/yandex/metrica/c$a$h;

    .line 2445
    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$h;
    .locals 2

    .prologue
    .line 2415
    sget-object v0, Lcom/yandex/metrica/c$a$h;->g:[Lcom/yandex/metrica/c$a$h;

    if-nez v0, :cond_1

    .line 2416
    sget-object v1, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2418
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/c$a$h;->g:[Lcom/yandex/metrica/c$a$h;

    if-nez v0, :cond_0

    .line 2419
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$h;

    sput-object v0, Lcom/yandex/metrica/c$a$h;->g:[Lcom/yandex/metrica/c$a$h;

    .line 2421
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2423
    :cond_1
    sget-object v0, Lcom/yandex/metrica/c$a$h;->g:[Lcom/yandex/metrica/c$a$h;

    return-object v0

    .line 2421
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2460
    iget v0, p0, Lcom/yandex/metrica/c$a$h;->b:I

    if-eqz v0, :cond_0

    .line 2461
    const/4 v0, 0x1

    iget v1, p0, Lcom/yandex/metrica/c$a$h;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 2463
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/c$a$h;->c:I

    if-eqz v0, :cond_1

    .line 2464
    const/4 v0, 0x2

    iget v1, p0, Lcom/yandex/metrica/c$a$h;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 2466
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/c$a$h;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2467
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/yandex/metrica/c$a$h;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 2469
    :cond_2
    iget-boolean v0, p0, Lcom/yandex/metrica/c$a$h;->e:Z

    if-eqz v0, :cond_3

    .line 2470
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$h;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 2472
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/c$a$h;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2473
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/yandex/metrica/c$a$h;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 2475
    :cond_4
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 2476
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 2480
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 2481
    iget v1, p0, Lcom/yandex/metrica/c$a$h;->b:I

    if-eqz v1, :cond_0

    .line 2482
    const/4 v1, 0x1

    iget v2, p0, Lcom/yandex/metrica/c$a$h;->b:I

    .line 2483
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2485
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/c$a$h;->c:I

    if-eqz v1, :cond_1

    .line 2486
    const/4 v1, 0x2

    iget v2, p0, Lcom/yandex/metrica/c$a$h;->c:I

    .line 2487
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2489
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/c$a$h;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2490
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yandex/metrica/c$a$h;->d:Ljava/lang/String;

    .line 2491
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2493
    :cond_2
    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$h;->e:Z

    if-eqz v1, :cond_3

    .line 2494
    const/4 v1, 0x4

    .line 2495
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2497
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/c$a$h;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2498
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/yandex/metrica/c$a$h;->f:Ljava/lang/String;

    .line 2499
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2501
    :cond_4
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$h;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2448
    iput v1, p0, Lcom/yandex/metrica/c$a$h;->b:I

    .line 2449
    iput v1, p0, Lcom/yandex/metrica/c$a$h;->c:I

    .line 2450
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$h;->d:Ljava/lang/String;

    .line 2451
    iput-boolean v1, p0, Lcom/yandex/metrica/c$a$h;->e:Z

    .line 2452
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$h;->f:Ljava/lang/String;

    .line 2453
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$h;->a:I

    .line 2454
    return-object p0
.end method
