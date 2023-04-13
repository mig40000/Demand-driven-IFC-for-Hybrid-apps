.class Lcom/yandex/metrica/impl/ob/de$7;
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
        "Lcom/yandex/metrica/impl/ob/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/de;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/de;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/de$7;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .prologue
    .line 229
    check-cast p1, Lcom/yandex/metrica/impl/ob/p;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/de$7;->a(Lcom/yandex/metrica/impl/ob/p;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/p;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de$7;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/de;->d(Lcom/yandex/metrica/impl/ob/de;)Lcom/yandex/metrica/impl/ob/df;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;)V

    .line 232
    return-void
.end method
