.class public Lcom/yandex/metrica/impl/ob/dg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/metrica/impl/ob/dg;


# instance fields
.field private c:Lcom/yandex/metrica/impl/ob/de;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/de;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/de;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->c:Lcom/yandex/metrica/impl/ob/de;

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/dg;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/yandex/metrica/impl/ob/dg;->b:Lcom/yandex/metrica/impl/ob/dg;

    if-nez v0, :cond_1

    .line 25
    sget-object v1, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/dg;->b:Lcom/yandex/metrica/impl/ob/dg;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/dg;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/dg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dg;->b:Lcom/yandex/metrica/impl/ob/dg;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/dg;->b:Lcom/yandex/metrica/impl/ob/dg;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->c:Lcom/yandex/metrica/impl/ob/de;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de;->b()V

    .line 42
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->c:Lcom/yandex/metrica/impl/ob/de;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de;->a()V

    .line 46
    return-void
.end method
