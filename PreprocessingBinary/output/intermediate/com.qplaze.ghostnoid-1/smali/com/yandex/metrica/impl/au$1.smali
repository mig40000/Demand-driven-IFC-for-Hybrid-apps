.class Lcom/yandex/metrica/impl/au$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/av$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/yandex/metrica/impl/as;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/yandex/metrica/impl/as;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yandex/metrica/impl/au$1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/yandex/metrica/impl/au$1;->b:Lcom/yandex/metrica/impl/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/h;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yandex/metrica/impl/au$1;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/au$1;->b:Lcom/yandex/metrica/impl/as;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/au;->b(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    return-object v0
.end method
