.class Lcom/yandex/metrica/impl/ob/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/en;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/en;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/ei;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ei;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dy;->a:Lcom/yandex/metrica/impl/ob/en;

    .line 9
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/eq;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dy;->a:Lcom/yandex/metrica/impl/ob/en;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/en;->a()Lcom/yandex/metrica/impl/ob/eq;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/eq;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dy;->a:Lcom/yandex/metrica/impl/ob/en;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/en;->b()Lcom/yandex/metrica/impl/ob/eq;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/eq;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dy;->a:Lcom/yandex/metrica/impl/ob/en;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/en;->c()Lcom/yandex/metrica/impl/ob/eq;

    move-result-object v0

    return-object v0
.end method
