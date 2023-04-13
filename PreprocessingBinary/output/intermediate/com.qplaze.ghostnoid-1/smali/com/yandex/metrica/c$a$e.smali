.class public final Lcom/yandex/metrica/c$a$e;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public b:[Lcom/yandex/metrica/c$a$b;

.field public c:[Lcom/yandex/metrica/c$a$j;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Lcom/yandex/metrica/c$a$i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 822
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$e;->d()Lcom/yandex/metrica/c$a$e;

    .line 823
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 838
    iget-object v0, p0, Lcom/yandex/metrica/c$a$e;->b:[Lcom/yandex/metrica/c$a$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/c$a$e;->b:[Lcom/yandex/metrica/c$a$b;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 839
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->b:[Lcom/yandex/metrica/c$a$b;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 840
    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->b:[Lcom/yandex/metrica/c$a$b;

    aget-object v2, v2, v0

    .line 841
    if-eqz v2, :cond_0

    .line 842
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 839
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/c$a$e;->c:[Lcom/yandex/metrica/c$a$j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/metrica/c$a$e;->c:[Lcom/yandex/metrica/c$a$j;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 847
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/c$a$e;->c:[Lcom/yandex/metrica/c$a$j;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 848
    iget-object v0, p0, Lcom/yandex/metrica/c$a$e;->c:[Lcom/yandex/metrica/c$a$j;

    aget-object v0, v0, v1

    .line 849
    if-eqz v0, :cond_2

    .line 850
    invoke-virtual {p1, v4, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 847
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 854
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/c$a$e;->d:I

    if-eq v0, v4, :cond_4

    .line 855
    const/4 v0, 0x3

    iget v1, p0, Lcom/yandex/metrica/c$a$e;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 857
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/c$a$e;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 858
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/yandex/metrica/c$a$e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 860
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/c$a$e;->f:Lcom/yandex/metrica/c$a$i;

    if-eqz v0, :cond_6

    .line 861
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/yandex/metrica/c$a$e;->f:Lcom/yandex/metrica/c$a$i;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 863
    :cond_6
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 864
    return-void
.end method

.method protected c()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 868
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 869
    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->b:[Lcom/yandex/metrica/c$a$b;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->b:[Lcom/yandex/metrica/c$a$b;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 870
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/c$a$e;->b:[Lcom/yandex/metrica/c$a$b;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 871
    iget-object v3, p0, Lcom/yandex/metrica/c$a$e;->b:[Lcom/yandex/metrica/c$a$b;

    aget-object v3, v3, v0

    .line 872
    if-eqz v3, :cond_0

    .line 873
    const/4 v4, 0x1

    .line 874
    invoke-static {v4, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v3

    add-int/2addr v2, v3

    .line 870
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 878
    :cond_2
    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->c:[Lcom/yandex/metrica/c$a$j;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->c:[Lcom/yandex/metrica/c$a$j;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 879
    :goto_1
    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->c:[Lcom/yandex/metrica/c$a$j;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 880
    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->c:[Lcom/yandex/metrica/c$a$j;

    aget-object v2, v2, v1

    .line 881
    if-eqz v2, :cond_3

    .line 883
    invoke-static {v5, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v2

    add-int/2addr v0, v2

    .line 879
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 887
    :cond_4
    iget v1, p0, Lcom/yandex/metrica/c$a$e;->d:I

    if-eq v1, v5, :cond_5

    .line 888
    const/4 v1, 0x3

    iget v2, p0, Lcom/yandex/metrica/c$a$e;->d:I

    .line 889
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 891
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/c$a$e;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 892
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->e:Ljava/lang/String;

    .line 893
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 895
    :cond_6
    iget-object v1, p0, Lcom/yandex/metrica/c$a$e;->f:Lcom/yandex/metrica/c$a$i;

    if-eqz v1, :cond_7

    .line 896
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->f:Lcom/yandex/metrica/c$a$i;

    .line 897
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 899
    :cond_7
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$e;
    .locals 1

    .prologue
    .line 826
    invoke-static {}, Lcom/yandex/metrica/c$a$b;->d()[Lcom/yandex/metrica/c$a$b;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$e;->b:[Lcom/yandex/metrica/c$a$b;

    .line 827
    invoke-static {}, Lcom/yandex/metrica/c$a$j;->d()[Lcom/yandex/metrica/c$a$j;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$e;->c:[Lcom/yandex/metrica/c$a$j;

    .line 828
    const/4 v0, 0x2

    iput v0, p0, Lcom/yandex/metrica/c$a$e;->d:I

    .line 829
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$e;->e:Ljava/lang/String;

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$e;->f:Lcom/yandex/metrica/c$a$i;

    .line 831
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$e;->a:I

    .line 832
    return-object p0
.end method
