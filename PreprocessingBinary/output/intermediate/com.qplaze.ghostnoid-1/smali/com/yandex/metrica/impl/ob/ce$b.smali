.class Lcom/yandex/metrica/impl/ob/ce$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/ce;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/ob/ce;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ce;-><init>(B)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ce$b;->a:Lcom/yandex/metrica/impl/ob/ce;

    return-void
.end method

.method static synthetic a()Lcom/yandex/metrica/impl/ob/ce;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/yandex/metrica/impl/ob/ce$b;->a:Lcom/yandex/metrica/impl/ob/ce;

    return-object v0
.end method
