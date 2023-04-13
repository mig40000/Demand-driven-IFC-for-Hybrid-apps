.class Lcom/yandex/metrica/impl/ob/de$5;
.super Ljava/util/HashMap;
.source "SourceFile"


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
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/yandex/metrica/impl/ob/de$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/de;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/de;)V
    .locals 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/de$5;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string v0, "p"

    new-instance v1, Lcom/yandex/metrica/impl/ob/de$5$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/de$5$1;-><init>(Lcom/yandex/metrica/impl/ob/de$5;)V

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/de$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method
