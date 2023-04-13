.class public abstract Lcom/yandex/metrica/impl/ob/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/aa",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/aa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/aa",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/v;->a:Lcom/yandex/metrica/impl/ob/aa;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/v;->b(Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/ob/x;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/v;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/x;)Z

    move-result v0

    return v0
.end method

.method protected abstract a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/x;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/h;",
            "Lcom/yandex/metrica/impl/ob/x",
            "<TT;>;)Z"
        }
    .end annotation
.end method

.method b(Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/ob/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/h;",
            ")",
            "Lcom/yandex/metrica/impl/ob/x",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/v;->a:Lcom/yandex/metrica/impl/ob/aa;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/aa;->a(I)Lcom/yandex/metrica/impl/ob/x;

    move-result-object v0

    return-object v0
.end method
