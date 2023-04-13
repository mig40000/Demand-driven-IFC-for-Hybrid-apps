.class public final Lcom/yandex/metrica/c$a$i;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 709
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$i;->d()Lcom/yandex/metrica/c$a$i;

    .line 710
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yandex/metrica/c$a$i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 723
    iget v0, p0, Lcom/yandex/metrica/c$a$i;->c:I

    if-eqz v0, :cond_0

    .line 724
    const/4 v0, 0x2

    iget v1, p0, Lcom/yandex/metrica/c$a$i;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 726
    :cond_0
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 727
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 731
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 732
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yandex/metrica/c$a$i;->b:Ljava/lang/String;

    .line 733
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    iget v1, p0, Lcom/yandex/metrica/c$a$i;->c:I

    if-eqz v1, :cond_0

    .line 735
    const/4 v1, 0x2

    iget v2, p0, Lcom/yandex/metrica/c$a$i;->c:I

    .line 736
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    :cond_0
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$i;
    .locals 1

    .prologue
    .line 713
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$i;->b:Ljava/lang/String;

    .line 714
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/c$a$i;->c:I

    .line 715
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$i;->a:I

    .line 716
    return-object p0
.end method
