.class Lcom/yandex/metrica/impl/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lcom/yandex/metrica/CounterConfiguration;

.field protected c:Lcom/yandex/metrica/impl/o;

.field protected d:Lcom/yandex/metrica/impl/ak;

.field private e:Lcom/yandex/metrica/impl/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/as$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/as$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/as;->a:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/q;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/q;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/as;->e:Lcom/yandex/metrica/impl/q;

    .line 40
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/as;->b:Lcom/yandex/metrica/CounterConfiguration;

    .line 46
    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ak;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yandex/metrica/impl/as;->d:Lcom/yandex/metrica/impl/ak;

    .line 102
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/j;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/os/ResultReceiver;)V

    .line 86
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/dl;)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/as;->b(Lcom/yandex/metrica/impl/ob/dl;)V

    .line 62
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/utils/e$a;)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/yandex/metrica/impl/o;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/o;-><init>(Lcom/yandex/metrica/impl/utils/e$a;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/as;->c:Lcom/yandex/metrica/impl/o;

    .line 50
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->c:Lcom/yandex/metrica/impl/o;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->e:Lcom/yandex/metrica/impl/q;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/q;->c()Z

    move-result v0

    return v0
.end method

.method b()Lcom/yandex/metrica/CounterConfiguration;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->b:Lcom/yandex/metrica/CounterConfiguration;

    return-object v0
.end method

.method b(Lcom/yandex/metrica/impl/ob/dl;)V
    .locals 2

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/dl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->d(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/dl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->e(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/dl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->f(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->E()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->e:Lcom/yandex/metrica/impl/q;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/q;->b()V

    .line 66
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->e:Lcom/yandex/metrica/impl/q;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/q;->a()Z

    move-result v0

    return v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->c:Lcom/yandex/metrica/impl/o;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/o;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/yandex/metrica/impl/ak;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/as;->d:Lcom/yandex/metrica/impl/ak;

    return-object v0
.end method
