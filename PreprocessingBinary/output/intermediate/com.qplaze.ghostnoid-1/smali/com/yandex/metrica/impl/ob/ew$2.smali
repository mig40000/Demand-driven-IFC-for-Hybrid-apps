.class Lcom/yandex/metrica/impl/ob/ew$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/fj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ew;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/ew;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ew;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ew$2;->a:Lcom/yandex/metrica/impl/ob/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/fg;)V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ew;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t update pins on schedule: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fg;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$2;->a:Lcom/yandex/metrica/impl/ob/ew;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ew;->a(Lcom/yandex/metrica/impl/ob/ew;)V

    .line 92
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$2;->a:Lcom/yandex/metrica/impl/ob/ew;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/ew;->a(Lcom/yandex/metrica/impl/ob/ew;Lcom/yandex/metrica/impl/ob/ex;)Lcom/yandex/metrica/impl/ob/ex;

    .line 93
    return-void
.end method
