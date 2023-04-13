.class Lcom/yandex/metrica/impl/ob/de$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/j",
        "<",
        "Lcom/yandex/metrica/impl/ob/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/de;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/de;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/de$11;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .prologue
    .line 253
    check-cast p1, Lcom/yandex/metrica/impl/ob/o;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/de$11;->a(Lcom/yandex/metrica/impl/ob/o;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/o;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de$11;->a:Lcom/yandex/metrica/impl/ob/de;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/o;->a:Lcom/yandex/metrica/impl/ob/dh;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/de;->a(Lcom/yandex/metrica/impl/ob/dh;)V

    .line 256
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de$11;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de;->c()V

    .line 257
    return-void
.end method
