.class Lcom/yandex/metrica/impl/az$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yandex/metrica/impl/az$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/yandex/metrica/impl/ob/cx;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cx;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ce;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/ce;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/cx;->b(Landroid/content/Context;)V

    .line 79
    :cond_0
    return-void
.end method
