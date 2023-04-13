.class public final Lcom/yandex/metrica/c$a$f;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field private static volatile d:[Lcom/yandex/metrica/c$a$f;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2341
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 2342
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$f;->e()Lcom/yandex/metrica/c$a$f;

    .line 2343
    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$f;
    .locals 2

    .prologue
    .line 2322
    sget-object v0, Lcom/yandex/metrica/c$a$f;->d:[Lcom/yandex/metrica/c$a$f;

    if-nez v0, :cond_1

    .line 2323
    sget-object v1, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2325
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/c$a$f;->d:[Lcom/yandex/metrica/c$a$f;

    if-nez v0, :cond_0

    .line 2326
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$f;

    sput-object v0, Lcom/yandex/metrica/c$a$f;->d:[Lcom/yandex/metrica/c$a$f;

    .line 2328
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2330
    :cond_1
    sget-object v0, Lcom/yandex/metrica/c$a$f;->d:[Lcom/yandex/metrica/c$a$f;

    return-object v0

    .line 2328
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
    .line 2355
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 2356
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 2357
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 2358
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 2362
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 2363
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f;->b:Ljava/lang/String;

    .line 2364
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2365
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f;->c:Ljava/lang/String;

    .line 2366
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2367
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$f;
    .locals 1

    .prologue
    .line 2346
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$f;->b:Ljava/lang/String;

    .line 2347
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$f;->c:Ljava/lang/String;

    .line 2348
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$f;->a:I

    .line 2349
    return-object p0
.end method
