.class Lcom/yandex/metrica/impl/ob/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/cf;

.field private c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/ca;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/ca;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/ca;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cf;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Lcom/yandex/metrica/impl/ob/cf;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->d:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->e:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->f:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ca;)V
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:I

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ca;->c()Lcom/yandex/metrica/impl/ba$a;

    move-result-object v1

    iget v1, v1, Lcom/yandex/metrica/impl/ba$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:I

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/yandex/metrica/impl/ob/cb$1;->a:[I

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Lcom/yandex/metrica/impl/ob/cf;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/ca;->a(Lcom/yandex/metrica/impl/ob/cf;)Lcom/yandex/metrica/impl/ob/ca$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ca$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 36
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/ca;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 63
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cb;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ca;

    .line 65
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ca;->c()Lcom/yandex/metrica/impl/ba$a;

    move-result-object v0

    iget-wide v4, v0, Lcom/yandex/metrica/impl/ba$a;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v3

    if-gez v3, :cond_0

    :goto_1
    move-object v1, v0

    .line 67
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 73
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 78
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 74
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_2
    check-cast p1, Lcom/yandex/metrica/impl/ob/cb;

    .line 78
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/cb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
