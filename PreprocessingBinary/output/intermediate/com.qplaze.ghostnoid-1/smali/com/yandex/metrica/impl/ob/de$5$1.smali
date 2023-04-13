.class Lcom/yandex/metrica/impl/ob/de$5$1;
.super Lcom/yandex/metrica/impl/ob/de$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/de$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/de$5;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/de$5;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/de$5$1;->a:Lcom/yandex/metrica/impl/ob/de$5;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/de$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/net/Socket;)Lcom/yandex/metrica/impl/ob/de$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/net/Socket;",
            ")",
            "Lcom/yandex/metrica/impl/ob/de$b;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcom/yandex/metrica/impl/ob/de$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de$5$1;->a:Lcom/yandex/metrica/impl/ob/de$5;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/de$5;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-direct {v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/de$a;-><init>(Lcom/yandex/metrica/impl/ob/de;Landroid/net/Uri;Ljava/net/Socket;)V

    return-object v0
.end method
