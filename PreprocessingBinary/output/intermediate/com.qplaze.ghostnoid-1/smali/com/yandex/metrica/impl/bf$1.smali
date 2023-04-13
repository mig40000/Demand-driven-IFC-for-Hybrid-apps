.class Lcom/yandex/metrica/impl/bf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bf;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yandex/metrica/impl/bf$1;->a:Lcom/yandex/metrica/impl/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf$1;->a:Lcom/yandex/metrica/impl/bf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bf;->a()V

    .line 45
    return-void
.end method
