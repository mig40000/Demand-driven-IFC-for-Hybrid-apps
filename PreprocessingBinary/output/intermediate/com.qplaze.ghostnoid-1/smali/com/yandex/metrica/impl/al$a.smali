.class Lcom/yandex/metrica/impl/al$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yandex/metrica/impl/p$a;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yandex/metrica/impl/p$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:J

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/Integer;

.field protected i:Ljava/lang/Integer;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:I

.field protected m:I

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 392
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->c:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->d:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->f:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->o:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->g:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->r:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->s:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->k:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->l:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->y:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->C:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->D:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/al$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/al$a;->p:Ljava/util/Map;

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->b:Lcom/yandex/metrica/impl/p$a;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->c:Lcom/yandex/metrica/impl/p$a;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->d:Lcom/yandex/metrica/impl/p$a;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->f:Lcom/yandex/metrica/impl/p$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->y:Lcom/yandex/metrica/impl/p$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->o:Lcom/yandex/metrica/impl/p$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->g:Lcom/yandex/metrica/impl/p$a;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->r:Lcom/yandex/metrica/impl/p$a;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->s:Lcom/yandex/metrica/impl/p$a;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->k:Lcom/yandex/metrica/impl/p$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->l:Lcom/yandex/metrica/impl/p$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->A:Lcom/yandex/metrica/impl/p$a;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->D:Lcom/yandex/metrica/impl/p$a;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->E:Lcom/yandex/metrica/impl/p$a;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/al$a;->q:Ljava/util/Map;

    .line 428
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IZ)Lcom/yandex/metrica/impl/al$a;
    .locals 3

    .prologue
    .line 431
    invoke-static {p0}, Lcom/yandex/metrica/impl/p$a;->a(I)Lcom/yandex/metrica/impl/p$a;

    move-result-object v2

    .line 1448
    sget-object v0, Lcom/yandex/metrica/impl/al$1;->a:[I

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/p$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1459
    sget-object v0, Lcom/yandex/metrica/impl/al$a;->p:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 433
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/al$a;->q:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 437
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/al$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_1
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/al$a;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v0

    return-object v0

    .line 1452
    :pswitch_0
    if-eqz p1, :cond_0

    .line 1453
    const-class v0, Lcom/yandex/metrica/impl/al$d;

    move-object v1, v0

    goto :goto_0

    .line 1455
    :cond_0
    const-class v0, Lcom/yandex/metrica/impl/al$c;

    move-object v1, v0

    .line 1457
    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    new-instance v1, Lcom/yandex/metrica/impl/al$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/al$a;-><init>()V

    goto :goto_1

    .line 1448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a(I)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 493
    iput p1, p0, Lcom/yandex/metrica/impl/al$a;->c:I

    .line 494
    return-object p0
.end method

.method a(J)Lcom/yandex/metrica/impl/al$a;
    .locals 1

    .prologue
    .line 498
    iput-wide p1, p0, Lcom/yandex/metrica/impl/al$a;->d:J

    .line 499
    return-object p0
.end method

.method a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->h:Ljava/lang/Integer;

    .line 519
    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->a:Ljava/lang/String;

    .line 484
    return-object p0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    const-string v0, ""

    return-object v0
.end method

.method b(I)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 543
    iput p1, p0, Lcom/yandex/metrica/impl/al$a;->l:I

    .line 544
    return-object p0
.end method

.method b(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->i:Ljava/lang/Integer;

    .line 529
    return-object p0
.end method

.method b(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->b:Ljava/lang/String;

    .line 489
    return-object p0
.end method

.method protected b()[B
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method c(I)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 548
    iput p1, p0, Lcom/yandex/metrica/impl/al$a;->m:I

    .line 549
    return-object p0
.end method

.method c(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->e:Ljava/lang/String;

    .line 504
    return-object p0
.end method

.method protected c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/yandex/metrica/impl/al$a;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method d(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->g:Ljava/lang/String;

    .line 509
    return-object p0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/yandex/metrica/impl/al$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method e()Lcom/yandex/metrica/c$a$g$a;
    .locals 6

    .prologue
    .line 578
    new-instance v0, Lcom/yandex/metrica/c$a$g$a;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$g$a;-><init>()V

    .line 580
    iget v1, p0, Lcom/yandex/metrica/impl/al$a;->m:I

    iget-object v2, p0, Lcom/yandex/metrica/impl/al$a;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/al$a;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/yandex/metrica/impl/al$a;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/yandex/metrica/impl/al$a;->o:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/al;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/c$a$e;

    move-result-object v1

    .line 582
    iget-object v2, p0, Lcom/yandex/metrica/impl/al$a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/yandex/metrica/impl/al;->d(Ljava/lang/String;)Lcom/yandex/metrica/c$a$d;

    move-result-object v2

    .line 583
    iget-object v3, p0, Lcom/yandex/metrica/impl/al$a;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/al;->e(Ljava/lang/String;)Lcom/yandex/metrica/c$a$a;

    move-result-object v3

    .line 586
    if-eqz v1, :cond_0

    .line 587
    iput-object v1, v0, Lcom/yandex/metrica/c$a$g$a;->h:Lcom/yandex/metrica/c$a$e;

    .line 589
    :cond_0
    if-eqz v2, :cond_1

    .line 590
    iput-object v2, v0, Lcom/yandex/metrica/c$a$g$a;->g:Lcom/yandex/metrica/c$a$d;

    .line 592
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/al$a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 593
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/al$a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$g$a;->e:Ljava/lang/String;

    .line 595
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/al$a;->b()[B

    move-result-object v1

    if-eqz v1, :cond_3

    .line 596
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/al$a;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$g$a;->f:[B

    .line 598
    :cond_3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/al$a;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 599
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/al$a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$g$a;->i:Ljava/lang/String;

    .line 601
    :cond_4
    if-eqz v3, :cond_5

    .line 602
    iput-object v3, v0, Lcom/yandex/metrica/c$a$g$a;->j:Lcom/yandex/metrica/c$a$a;

    .line 605
    :cond_5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/al$a;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$g$a;->d:I

    .line 606
    iget v1, p0, Lcom/yandex/metrica/impl/al$a;->c:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/yandex/metrica/c$a$g$a;->b:J

    .line 607
    iget-wide v2, p0, Lcom/yandex/metrica/impl/al$a;->d:J

    iput-wide v2, v0, Lcom/yandex/metrica/c$a$g$a;->c:J

    .line 608
    iget v1, p0, Lcom/yandex/metrica/impl/al$a;->l:I

    iput v1, v0, Lcom/yandex/metrica/c$a$g$a;->k:I

    .line 609
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/al$a;->f()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$g$a;->l:I

    .line 611
    return-object v0
.end method

.method e(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->f:Ljava/lang/String;

    .line 514
    return-object p0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method f(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->o:Ljava/lang/String;

    .line 524
    return-object p0
.end method

.method g(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->j:Ljava/lang/String;

    .line 534
    return-object p0
.end method

.method h(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->k:Ljava/lang/String;

    .line 539
    return-object p0
.end method

.method i(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/yandex/metrica/impl/al$a;->n:Ljava/lang/String;

    .line 554
    return-object p0
.end method
