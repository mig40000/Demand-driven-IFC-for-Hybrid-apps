.class public abstract Lcom/yandex/metrica/impl/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ah$a;
    }
.end annotation


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:[B

.field protected h:I

.field protected i:[B

.field protected j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ah;->f:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ah;->k:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/yandex/metrica/impl/ah;->h:I

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->d:Ljava/lang/String;

    .line 111
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->j:Ljava/util/Map;

    .line 152
    return-void
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/yandex/metrica/impl/ah;->f:I

    .line 127
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->g:[B

    .line 128
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->e:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public b([B)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->i:[B

    .line 144
    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method abstract d()Lcom/yandex/metrica/impl/ob/ck;
.end method

.method public e()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/yandex/metrica/impl/ah;->f:I

    return v0
.end method

.method public j()[B
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->g:[B

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/yandex/metrica/impl/ah;->h:I

    return v0
.end method

.method l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->j:Ljava/util/Map;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->e:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method
