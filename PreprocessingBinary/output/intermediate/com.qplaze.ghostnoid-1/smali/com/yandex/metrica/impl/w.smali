.class Lcom/yandex/metrica/impl/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/yandex/metrica/impl/b;

.field private final c:Lcom/yandex/metrica/impl/x;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yandex/metrica/impl/w;->a:Landroid/os/Handler;

    .line 27
    iput-object p2, p0, Lcom/yandex/metrica/impl/w;->b:Lcom/yandex/metrica/impl/b;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/x;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/x;-><init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/w;->c:Lcom/yandex/metrica/impl/x;

    .line 29
    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/b;->d()Lcom/yandex/metrica/impl/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/yandex/metrica/impl/w;->b(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;Ljava/lang/Runnable;)V

    .line 44
    invoke-static {p1}, Lcom/yandex/metrica/impl/w;->a(Lcom/yandex/metrica/impl/b;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1060
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/b;->d()Lcom/yandex/metrica/impl/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/CounterConfiguration;->d()I

    move-result v1

    mul-int/lit16 v1, v1, 0x1f4

    .line 1048
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 44
    invoke-virtual {p0, p2, v0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 45
    return-void
.end method

.method private static b(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 52
    invoke-static {p1}, Lcom/yandex/metrica/impl/w;->a(Lcom/yandex/metrica/impl/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 53
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/w;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/w;->b:Lcom/yandex/metrica/impl/b;

    iget-object v2, p0, Lcom/yandex/metrica/impl/w;->c:Lcom/yandex/metrica/impl/x;

    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/w;->b(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/w;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/w;->b:Lcom/yandex/metrica/impl/b;

    iget-object v2, p0, Lcom/yandex/metrica/impl/w;->c:Lcom/yandex/metrica/impl/x;

    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/w;->a(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method
