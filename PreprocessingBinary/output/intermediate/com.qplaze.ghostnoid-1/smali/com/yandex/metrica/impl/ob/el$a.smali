.class Lcom/yandex/metrica/impl/ob/el$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/et;

.field private final b:Lcom/yandex/metrica/impl/ob/es;

.field private volatile c:[Lcom/yandex/metrica/impl/ob/eg;

.field private volatile d:Lcom/yandex/metrica/impl/ob/er;

.field private volatile e:Lcom/yandex/metrica/impl/ob/ej;

.field private volatile f:Lcom/yandex/metrica/impl/ob/dy;

.field private volatile g:Lcom/yandex/metrica/impl/ob/ef;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/et;Lcom/yandex/metrica/impl/ob/es;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/el$a;->a:Lcom/yandex/metrica/impl/ob/et;

    .line 229
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/el$a;->b:Lcom/yandex/metrica/impl/ob/es;

    .line 230
    return-void
.end method

.method private a()Lcom/yandex/metrica/impl/ob/ef;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->g:Lcom/yandex/metrica/impl/ob/ef;

    if-nez v0, :cond_1

    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->g:Lcom/yandex/metrica/impl/ob/ef;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/yandex/metrica/impl/ob/ef;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/el$a;->a:Lcom/yandex/metrica/impl/ob/et;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/el$a;->b:Lcom/yandex/metrica/impl/ob/es;

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ef;-><init>(Lcom/yandex/metrica/impl/ob/et;Lcom/yandex/metrica/impl/ob/es;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->g:Lcom/yandex/metrica/impl/ob/ef;

    .line 238
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->g:Lcom/yandex/metrica/impl/ob/ef;

    return-object v0

    .line 238
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/el$a;)Lcom/yandex/metrica/impl/ob/er;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/el$a;->d()Lcom/yandex/metrica/impl/ob/er;

    move-result-object v0

    return-object v0
.end method

.method private b()Lcom/yandex/metrica/impl/ob/dy;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->f:Lcom/yandex/metrica/impl/ob/dy;

    if-nez v0, :cond_1

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->f:Lcom/yandex/metrica/impl/ob/dy;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/yandex/metrica/impl/ob/dy;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dy;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->f:Lcom/yandex/metrica/impl/ob/dy;

    .line 249
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->f:Lcom/yandex/metrica/impl/ob/dy;

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/el$a;)Lcom/yandex/metrica/impl/ob/ej;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/el$a;->c()Lcom/yandex/metrica/impl/ob/ej;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/el$a;)Lcom/yandex/metrica/impl/ob/ef;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/el$a;->a()Lcom/yandex/metrica/impl/ob/ef;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/yandex/metrica/impl/ob/ej;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->e:Lcom/yandex/metrica/impl/ob/ej;

    if-nez v0, :cond_1

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->e:Lcom/yandex/metrica/impl/ob/ej;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/yandex/metrica/impl/ob/ej;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/el$a;->b()Lcom/yandex/metrica/impl/ob/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dy;->b()Lcom/yandex/metrica/impl/ob/eq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ej;-><init>(Lcom/yandex/metrica/impl/ob/eq;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->e:Lcom/yandex/metrica/impl/ob/ej;

    .line 260
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->e:Lcom/yandex/metrica/impl/ob/ej;

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()Lcom/yandex/metrica/impl/ob/er;
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->d:Lcom/yandex/metrica/impl/ob/er;

    if-nez v0, :cond_1

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->d:Lcom/yandex/metrica/impl/ob/er;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 270
    :try_start_1
    new-instance v0, Lcom/yandex/metrica/impl/ob/er;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/er;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->d:Lcom/yandex/metrica/impl/ob/er;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->d:Lcom/yandex/metrica/impl/ob/er;

    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t get system trust manager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/el$a;)[Lcom/yandex/metrica/impl/ob/eg;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/el$a;->e()[Lcom/yandex/metrica/impl/ob/eg;

    move-result-object v0

    return-object v0
.end method

.method private e()[Lcom/yandex/metrica/impl/ob/eg;
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->c:[Lcom/yandex/metrica/impl/ob/eg;

    if-nez v0, :cond_1

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->c:[Lcom/yandex/metrica/impl/ob/eg;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lcom/yandex/metrica/impl/ob/ee;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/el$a;->a()Lcom/yandex/metrica/impl/ob/ef;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ee;-><init>(Lcom/yandex/metrica/impl/ob/en;)V

    .line 285
    new-instance v1, Lcom/yandex/metrica/impl/ob/dx;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/el$a;->b()Lcom/yandex/metrica/impl/ob/dy;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/dx;-><init>(Lcom/yandex/metrica/impl/ob/en;)V

    .line 286
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/eg;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/el$a;->c:[Lcom/yandex/metrica/impl/ob/eg;

    .line 288
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el$a;->c:[Lcom/yandex/metrica/impl/ob/eg;

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
