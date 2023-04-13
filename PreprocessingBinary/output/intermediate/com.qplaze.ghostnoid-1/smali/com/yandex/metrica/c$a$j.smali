.class public final Lcom/yandex/metrica/c$a$j;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# static fields
.field private static volatile f:[Lcom/yandex/metrica/c$a$j;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 363
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$j;->e()Lcom/yandex/metrica/c$a$j;

    .line 364
    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$j;
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/yandex/metrica/c$a$j;->f:[Lcom/yandex/metrica/c$a$j;

    if-nez v0, :cond_1

    .line 338
    sget-object v1, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/c$a$j;->f:[Lcom/yandex/metrica/c$a$j;

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$j;

    sput-object v0, Lcom/yandex/metrica/c$a$j;->f:[Lcom/yandex/metrica/c$a$j;

    .line 343
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_1
    sget-object v0, Lcom/yandex/metrica/c$a$j;->f:[Lcom/yandex/metrica/c$a$j;

    return-object v0

    .line 343
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
    .line 378
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yandex/metrica/c$a$j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 379
    iget v0, p0, Lcom/yandex/metrica/c$a$j;->c:I

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x2

    iget v1, p0, Lcom/yandex/metrica/c$a$j;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->c(II)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/c$a$j;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/yandex/metrica/c$a$j;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 385
    :cond_1
    iget-boolean v0, p0, Lcom/yandex/metrica/c$a$j;->e:Z

    if-eqz v0, :cond_2

    .line 386
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$j;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 388
    :cond_2
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 389
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 393
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 394
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yandex/metrica/c$a$j;->b:Ljava/lang/String;

    .line 395
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    iget v1, p0, Lcom/yandex/metrica/c$a$j;->c:I

    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x2

    iget v2, p0, Lcom/yandex/metrica/c$a$j;->c:I

    .line 398
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/c$a$j;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yandex/metrica/c$a$j;->d:Ljava/lang/String;

    .line 402
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    :cond_1
    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$j;->e:Z

    if-eqz v1, :cond_2

    .line 405
    const/4 v1, 0x4

    .line 406
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 408
    :cond_2
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$j;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$j;->b:Ljava/lang/String;

    .line 368
    iput v1, p0, Lcom/yandex/metrica/c$a$j;->c:I

    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$j;->d:Ljava/lang/String;

    .line 370
    iput-boolean v1, p0, Lcom/yandex/metrica/c$a$j;->e:Z

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$j;->a:I

    .line 372
    return-object p0
.end method
