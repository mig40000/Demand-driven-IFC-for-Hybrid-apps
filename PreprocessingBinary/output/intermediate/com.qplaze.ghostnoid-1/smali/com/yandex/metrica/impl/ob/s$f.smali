.class abstract Lcom/yandex/metrica/impl/ob/s$f;
.super Lcom/yandex/metrica/impl/ob/s$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/cq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cq;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/s$e;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 241
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/s$f;->a:Lcom/yandex/metrica/impl/ob/cq;

    .line 242
    return-void
.end method


# virtual methods
.method public e()Lcom/yandex/metrica/impl/ob/cq;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$f;->a:Lcom/yandex/metrica/impl/ob/cq;

    return-object v0
.end method
