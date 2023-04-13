.class Lcom/yandex/metrica/impl/al$e;
.super Lcom/yandex/metrica/impl/al$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/yandex/metrica/impl/al$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()[B
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/yandex/metrica/impl/al$e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
