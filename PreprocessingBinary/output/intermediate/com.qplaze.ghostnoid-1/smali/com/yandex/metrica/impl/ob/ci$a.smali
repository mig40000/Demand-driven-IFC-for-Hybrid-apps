.class Lcom/yandex/metrica/impl/ob/ci$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/yandex/metrica/impl/ob/ci;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/ci;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ci;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ci$a;->a:Lcom/yandex/metrica/impl/ob/ci;

    return-void
.end method
