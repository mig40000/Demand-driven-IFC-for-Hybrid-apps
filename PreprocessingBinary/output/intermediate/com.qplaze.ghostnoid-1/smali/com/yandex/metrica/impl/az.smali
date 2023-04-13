.class public Lcom/yandex/metrica/impl/az;
.super Lcom/yandex/metrica/impl/af;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/az$c;,
        Lcom/yandex/metrica/impl/az$b;,
        Lcom/yandex/metrica/impl/az$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/by;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yandex/metrica/impl/af;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->b()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/yandex/metrica/impl/ob/by;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/by;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/az;->a:Lcom/yandex/metrica/impl/ob/by;

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/cv;)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cv;->a()I

    move-result v0

    .line 55
    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/az;->a:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/by;->a(I)I

    move-result v0

    .line 58
    :cond_0
    return v0
.end method

.method a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/af$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/az$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/az$1;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/cv;I)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yandex/metrica/impl/az;->a:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/by;->b(I)Lcom/yandex/metrica/impl/ob/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/by;->h()V

    .line 64
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cv;->b()Lcom/yandex/metrica/impl/ob/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cv;->k()V

    .line 65
    return-void
.end method
