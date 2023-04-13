.class public Lcom/yandex/metrica/impl/ob/co;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/co;->a:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ck;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/co;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ci;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/cm;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Ljava/lang/String;)V

    .line 31
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/cl;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cl;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
