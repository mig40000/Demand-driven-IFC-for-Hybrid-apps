.class Lcom/yandex/metrica/impl/ob/cg$3;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/cg;->a(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cg$3;->a:Ljava/lang/String;

    iput p2, p0, Lcom/yandex/metrica/impl/ob/cg$3;->b:I

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 249
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cg$3;->a:Ljava/lang/String;

    new-instance v1, Lcom/yandex/metrica/impl/ob/cg$3$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/cg$3$1;-><init>(Lcom/yandex/metrica/impl/ob/cg$3;)V

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/cg$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method
