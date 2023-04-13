.class Lcom/yandex/metrica/impl/ob/ei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/en;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/eq;

.field private final b:Lcom/yandex/metrica/impl/ob/eq;

.field private final c:Lcom/yandex/metrica/impl/ob/eq;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/yandex/metrica/impl/ob/eh;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/eh;-><init>()V

    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/eq;

    const-string v2, "BLACK"

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/eq;-><init>(Lcom/yandex/metrica/impl/ob/ek;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ei;->a:Lcom/yandex/metrica/impl/ob/eq;

    .line 12
    new-instance v1, Lcom/yandex/metrica/impl/ob/eq;

    const-string v2, "WHITE"

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/eq;-><init>(Lcom/yandex/metrica/impl/ob/ek;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ei;->b:Lcom/yandex/metrica/impl/ob/eq;

    .line 13
    new-instance v1, Lcom/yandex/metrica/impl/ob/eq;

    const-string v2, "TRUST"

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/eq;-><init>(Lcom/yandex/metrica/impl/ob/ek;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ei;->c:Lcom/yandex/metrica/impl/ob/eq;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/eq;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->a:Lcom/yandex/metrica/impl/ob/eq;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/eq;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->b:Lcom/yandex/metrica/impl/ob/eq;

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/eq;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->c:Lcom/yandex/metrica/impl/ob/eq;

    return-object v0
.end method
