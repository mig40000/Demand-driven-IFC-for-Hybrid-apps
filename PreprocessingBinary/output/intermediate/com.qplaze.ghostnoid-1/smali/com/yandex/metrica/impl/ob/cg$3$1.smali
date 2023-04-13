.class Lcom/yandex/metrica/impl/ob/cg$3$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/cg$3;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/cg$3;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/cg$3;)V
    .locals 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cg$3$1;->a:Lcom/yandex/metrica/impl/ob/cg$3;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 251
    const-string v0, "candidates_count"

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cg$3$1;->a:Lcom/yandex/metrica/impl/ob/cg$3;

    iget v1, v1, Lcom/yandex/metrica/impl/ob/cg$3;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/cg$3$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method
