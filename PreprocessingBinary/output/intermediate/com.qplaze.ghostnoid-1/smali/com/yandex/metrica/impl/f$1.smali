.class Lcom/yandex/metrica/impl/f$1;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/f;->a()Landroid/util/SparseArray;
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


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/f;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/f;)V
    .locals 3

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yandex/metrica/impl/f$1;->a:Lcom/yandex/metrica/impl/f;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 33
    const/16 v0, 0x2e

    new-instance v1, Lcom/yandex/metrica/impl/f$a;

    iget-object v2, p0, Lcom/yandex/metrica/impl/f$1;->a:Lcom/yandex/metrica/impl/f;

    invoke-static {v2}, Lcom/yandex/metrica/impl/f;->a(Lcom/yandex/metrica/impl/f;)Lcom/yandex/metrica/impl/ob/bv;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/f$a;-><init>(Lcom/yandex/metrica/impl/ob/bv;)V

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/f$1;->put(ILjava/lang/Object;)V

    .line 34
    return-void
.end method
