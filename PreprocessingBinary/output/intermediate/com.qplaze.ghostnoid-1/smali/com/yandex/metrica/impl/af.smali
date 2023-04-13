.class public abstract Lcom/yandex/metrica/impl/af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/af$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/yandex/metrica/impl/ob/cv;)I
.end method

.method abstract a()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/af$a;",
            ">;"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 28
    new-instance v2, Lcom/yandex/metrica/impl/ob/cv;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/cv;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/impl/ob/cv;)I

    move-result v0

    .line 30
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/af;->b()I

    move-result v3

    .line 32
    if-ge v0, v3, :cond_2

    .line 1049
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/af;->a()Landroid/util/SparseArray;

    move-result-object v4

    move v1, v0

    .line 1050
    :goto_0
    if-gt v1, v3, :cond_1

    .line 1051
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/af$a;

    .line 1052
    if-eqz v0, :cond_0

    .line 1054
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/af$a;->a(Landroid/content/Context;)V

    .line 1050
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/impl/ob/cv;I)V

    .line 36
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cv;->k()V

    .line 38
    :cond_2
    return-void
.end method

.method protected abstract a(Lcom/yandex/metrica/impl/ob/cv;I)V
.end method

.method b()I
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v0

    return v0
.end method
