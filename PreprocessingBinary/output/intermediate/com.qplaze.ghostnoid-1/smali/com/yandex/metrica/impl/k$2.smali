.class Lcom/yandex/metrica/impl/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/k;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/k;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/yandex/metrica/impl/k$2;->a:Lcom/yandex/metrica/impl/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/dv;)V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yandex/metrica/impl/k$2;->a:Lcom/yandex/metrica/impl/k;

    invoke-static {v0}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/k;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "cellular_connection_type"

    .line 194
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dv;->b()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/do;->g()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method
