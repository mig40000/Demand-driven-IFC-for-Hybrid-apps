.class public Lcom/yandex/metrica/impl/ob/z;
.super Lcom/yandex/metrica/impl/ob/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/aa",
        "<",
        "Lcom/yandex/metrica/impl/ob/af;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ay;

.field private final b:Lcom/yandex/metrica/impl/ob/ax;

.field private final c:Lcom/yandex/metrica/impl/ob/aw;

.field private final d:Lcom/yandex/metrica/impl/ob/am;

.field private final e:Lcom/yandex/metrica/impl/ob/au;

.field private final f:Lcom/yandex/metrica/impl/ob/aj;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/aa;-><init>()V

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/ay;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ay;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->a:Lcom/yandex/metrica/impl/ob/ay;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/ax;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ax;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->b:Lcom/yandex/metrica/impl/ob/ax;

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/ob/aw;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/aw;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->c:Lcom/yandex/metrica/impl/ob/aw;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/am;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/am;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->d:Lcom/yandex/metrica/impl/ob/am;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/au;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/au;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->e:Lcom/yandex/metrica/impl/ob/au;

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/aj;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/aj;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->f:Lcom/yandex/metrica/impl/ob/aj;

    .line 43
    return-void
.end method


# virtual methods
.method a(I)Lcom/yandex/metrica/impl/ob/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/impl/ob/x",
            "<",
            "Lcom/yandex/metrica/impl/ob/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/yandex/metrica/impl/p$a;->a(I)Lcom/yandex/metrica/impl/p$a;

    move-result-object v1

    .line 49
    sget-object v2, Lcom/yandex/metrica/impl/ob/z$1;->a:[I

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 73
    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/w;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/w;-><init>(Ljava/util/List;)V

    return-object v1

    .line 51
    :pswitch_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z;->e:Lcom/yandex/metrica/impl/ob/au;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z;->e:Lcom/yandex/metrica/impl/ob/au;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z;->d:Lcom/yandex/metrica/impl/ob/am;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z;->a:Lcom/yandex/metrica/impl/ob/ay;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z;->b:Lcom/yandex/metrica/impl/ob/ax;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z;->c:Lcom/yandex/metrica/impl/ob/aw;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :pswitch_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z;->d:Lcom/yandex/metrica/impl/ob/am;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :pswitch_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z;->f:Lcom/yandex/metrica/impl/ob/aj;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
