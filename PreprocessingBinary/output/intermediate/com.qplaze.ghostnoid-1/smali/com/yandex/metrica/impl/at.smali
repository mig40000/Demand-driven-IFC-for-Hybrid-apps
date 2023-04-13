.class Lcom/yandex/metrica/impl/at;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/at$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/au;

.field private c:Lcom/yandex/metrica/impl/j;

.field private d:Landroid/os/Handler;

.field private e:Lcom/yandex/metrica/impl/ob/dl;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/at;->f:Ljava/util/Map;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yandex/metrica/impl/at;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/at;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/at;->a:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/at;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/at;->d:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/at;Lcom/yandex/metrica/impl/au;)Lcom/yandex/metrica/impl/au;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/at;->b:Lcom/yandex/metrica/impl/au;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/at;Lcom/yandex/metrica/impl/j;)Lcom/yandex/metrica/impl/j;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/j;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/at;Lcom/yandex/metrica/impl/ob/dl;)Lcom/yandex/metrica/impl/ob/dl;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/at;->e:Lcom/yandex/metrica/impl/ob/dl;

    return-object p1
.end method

.method private a(Lcom/yandex/metrica/impl/b;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/yandex/metrica/impl/w;

    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/w;-><init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;)V

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/w;)V

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/j;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/j;)V

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->e:Lcom/yandex/metrica/impl/ob/dl;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/ob/dl;)V

    .line 76
    return-void
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)Lcom/yandex/metrica/b;
    .locals 4

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/b;

    .line 61
    if-nez v0, :cond_0

    .line 62
    new-instance v1, Lcom/yandex/metrica/impl/aa;

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->a:Landroid/content/Context;

    sget-object v0, Lcom/yandex/metrica/impl/as;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/at;->b:Lcom/yandex/metrica/impl/au;

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/yandex/metrica/impl/aa;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/au;)V

    .line 63
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/b;)V

    .line 64
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aa;->a()V

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 69
    :cond_0
    monitor-exit p0

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/yandex/metrica/e;Z)Lcom/yandex/metrica/impl/z;
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to activate AppMetrica with provided API Key. API Key %s has already been used by another reporter."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 43
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 41
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/z;

    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->b:Lcom/yandex/metrica/impl/au;

    invoke-direct {v0, v1, p1, v2}, Lcom/yandex/metrica/impl/z;-><init>(Landroid/content/Context;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/au;)V

    .line 47
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/b;)V

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/z;->a(Lcom/yandex/metrica/e;Z)V

    .line 49
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/z;->a()V

    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->b:Lcom/yandex/metrica/impl/au;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/z;)V

    .line 53
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-object v0
.end method
