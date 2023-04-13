.class Lcom/yandex/metrica/impl/al$b;
.super Lcom/yandex/metrica/impl/al$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/yandex/metrica/impl/al$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/yandex/metrica/impl/al$b;->i:Ljava/lang/Integer;

    return-object v0
.end method
