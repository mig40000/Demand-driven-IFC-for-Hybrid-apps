.class Lcom/yandex/metrica/impl/utils/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static a:Lcom/yandex/metrica/impl/utils/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/utils/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/utils/j;-><init>(B)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/j$a;->a:Lcom/yandex/metrica/impl/utils/j;

    return-void
.end method
