.class Lcom/yandex/metrica/impl/ob/de$a$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/de$a;->a()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 180
    const-string v0, "Content-Type"

    const-string v1, "text/plain; charset=utf-8"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/de$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/de$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "Access-Control-Allow-Methods"

    const-string v1, "GET"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/de$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method
