.class Lcom/yandex/metrica/impl/az$1;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/az;->a()Landroid/util/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/yandex/metrica/impl/af$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 45
    const/16 v0, 0x1d

    new-instance v1, Lcom/yandex/metrica/impl/az$a;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/az$a;-><init>(B)V

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/az$1;->put(ILjava/lang/Object;)V

    .line 46
    const/16 v0, 0x27

    new-instance v1, Lcom/yandex/metrica/impl/az$b;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/az$b;-><init>(B)V

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/az$1;->put(ILjava/lang/Object;)V

    .line 47
    const/16 v0, 0x2e

    new-instance v1, Lcom/yandex/metrica/impl/az$c;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/az$c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/az$1;->put(ILjava/lang/Object;)V

    .line 48
    return-void
.end method
