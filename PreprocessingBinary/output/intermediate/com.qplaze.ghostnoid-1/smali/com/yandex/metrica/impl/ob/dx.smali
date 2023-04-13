.class Lcom/yandex/metrica/impl/ob/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/eg;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/dz;

.field private final b:Lcom/yandex/metrica/impl/ob/dz;

.field private final c:Lcom/yandex/metrica/impl/ob/dz;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/en;)V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/dz;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/en;->a()Lcom/yandex/metrica/impl/ob/eq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dz;-><init>(Lcom/yandex/metrica/impl/ob/eq;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->a:Lcom/yandex/metrica/impl/ob/dz;

    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/ed;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/en;->b()Lcom/yandex/metrica/impl/ob/eq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ed;-><init>(Lcom/yandex/metrica/impl/ob/eq;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->b:Lcom/yandex/metrica/impl/ob/dz;

    .line 14
    new-instance v0, Lcom/yandex/metrica/impl/ob/dz;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/en;->c()Lcom/yandex/metrica/impl/ob/eq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dz;-><init>(Lcom/yandex/metrica/impl/ob/eq;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->c:Lcom/yandex/metrica/impl/ob/dz;

    .line 15
    return-void
.end method


# virtual methods
.method public a([Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->a:Lcom/yandex/metrica/impl/ob/dz;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dz;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method public b([Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->b:Lcom/yandex/metrica/impl/ob/dz;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dz;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method public c([Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->c:Lcom/yandex/metrica/impl/ob/dz;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dz;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method
