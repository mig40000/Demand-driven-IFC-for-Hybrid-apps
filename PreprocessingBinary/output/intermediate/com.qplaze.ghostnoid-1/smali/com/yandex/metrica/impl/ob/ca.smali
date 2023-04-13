.class Lcom/yandex/metrica/impl/ob/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ca$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/cd;

.field private final b:Lcom/yandex/metrica/impl/ba$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ba$a;Lcom/yandex/metrica/impl/ob/cd;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/cd;

    .line 16
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ca;->b:Lcom/yandex/metrica/impl/ba$a;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/cf;)Lcom/yandex/metrica/impl/ob/ca$a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca$a;->a:Lcom/yandex/metrica/impl/ob/ca$a;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/cd;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/cd;

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ba$a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ca;->b:Lcom/yandex/metrica/impl/ba$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bid{mCredentials=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ca;->b:Lcom/yandex/metrica/impl/ba$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
