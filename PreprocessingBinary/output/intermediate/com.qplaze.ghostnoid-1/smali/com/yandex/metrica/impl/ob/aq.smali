.class public Lcom/yandex/metrica/impl/ob/aq;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/av;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/av;

    new-instance v1, Lcom/yandex/metrica/impl/ob/z;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/z;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/av;-><init>(Lcom/yandex/metrica/impl/ob/aa;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/aq;->a:Lcom/yandex/metrica/impl/ob/av;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aq;->a:Lcom/yandex/metrica/impl/ob/av;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/av;->a(Lcom/yandex/metrica/impl/h;)Z

    move-result v0

    return v0
.end method
