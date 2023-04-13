.class Lcom/yandex/metrica/impl/ob/ci$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/ci;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ci;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ci$1;->a:Lcom/yandex/metrica/impl/ob/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci$1;->a:Lcom/yandex/metrica/impl/ob/ci;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ci;->a(Lcom/yandex/metrica/impl/ob/ci;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
