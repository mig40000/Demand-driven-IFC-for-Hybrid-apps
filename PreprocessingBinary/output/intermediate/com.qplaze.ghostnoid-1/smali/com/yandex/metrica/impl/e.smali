.class public Lcom/yandex/metrica/impl/e;
.super Lcom/yandex/metrica/impl/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/e$a;
    }
.end annotation


# instance fields
.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/yandex/metrica/impl/e$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yandex/metrica/impl/utils/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yandex/metrica/impl/h;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Ljava/util/HashMap;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/utils/e;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/e;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/e;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 40
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yandex/metrica/impl/h;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Ljava/util/HashMap;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/utils/e;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/e;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/e;

    .line 48
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->b:Ljava/lang/String;

    .line 49
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->a:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/yandex/metrica/impl/e;->c:I

    .line 51
    iput p4, p0, Lcom/yandex/metrica/impl/e;->d:I

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/e;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-static {p2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/impl/e;->e:I

    .line 1065
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1066
    iget v2, p0, Lcom/yandex/metrica/impl/e;->e:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/yandex/metrica/impl/e;->e:I

    goto :goto_1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/e;

    const/16 v1, 0x3e8

    const-string v2, "event name"

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/yandex/metrica/impl/e$a;->a:Lcom/yandex/metrica/impl/e$a;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V

    .line 73
    return-object v0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/e;

    const v1, 0x3c000

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/yandex/metrica/impl/e$a;->b:Lcom/yandex/metrica/impl/e$a;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->g:Lcom/yandex/metrica/impl/utils/e;

    const/16 v1, 0x2710

    const-string v2, "UserInfo"

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/yandex/metrica/impl/e$a;->c:Lcom/yandex/metrica/impl/e$a;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V

    .line 85
    invoke-super {p0, v0}, Lcom/yandex/metrica/impl/h;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/yandex/metrica/impl/h;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    return-object v0
.end method
