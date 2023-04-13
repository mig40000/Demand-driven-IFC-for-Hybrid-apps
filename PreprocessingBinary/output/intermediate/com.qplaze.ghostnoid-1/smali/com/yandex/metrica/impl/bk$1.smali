.class Lcom/yandex/metrica/impl/bk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bk;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bk;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yandex/metrica/impl/bk$1;->a:Lcom/yandex/metrica/impl/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$1;->a:Lcom/yandex/metrica/impl/bk;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Lcom/yandex/metrica/impl/bk;)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/z;->f()Z

    move-result v0

    return v0
.end method
