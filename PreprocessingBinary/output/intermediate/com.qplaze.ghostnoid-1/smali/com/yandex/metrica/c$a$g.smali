.class public final Lcom/yandex/metrica/c$a$g;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/c$a$g$a;,
        Lcom/yandex/metrica/c$a$g$b;
    }
.end annotation


# static fields
.field private static volatile e:[Lcom/yandex/metrica/c$a$g;


# instance fields
.field public b:J

.field public c:Lcom/yandex/metrica/c$a$g$b;

.field public d:[Lcom/yandex/metrica/c$a$g$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1755
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1756
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$g;->e()Lcom/yandex/metrica/c$a$g;

    .line 1757
    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$g;
    .locals 2

    .prologue
    .line 1733
    sget-object v0, Lcom/yandex/metrica/c$a$g;->e:[Lcom/yandex/metrica/c$a$g;

    if-nez v0, :cond_1

    .line 1734
    sget-object v1, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1736
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/c$a$g;->e:[Lcom/yandex/metrica/c$a$g;

    if-nez v0, :cond_0

    .line 1737
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$g;

    sput-object v0, Lcom/yandex/metrica/c$a$g;->e:[Lcom/yandex/metrica/c$a$g;

    .line 1739
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    :cond_1
    sget-object v0, Lcom/yandex/metrica/c$a$g;->e:[Lcom/yandex/metrica/c$a$g;

    return-object v0

    .line 1739
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1770
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$g;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1771
    iget-object v0, p0, Lcom/yandex/metrica/c$a$g;->c:Lcom/yandex/metrica/c$a$g$b;

    if-eqz v0, :cond_0

    .line 1772
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g;->c:Lcom/yandex/metrica/c$a$g$b;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1775
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1776
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;

    aget-object v1, v1, v0

    .line 1777
    if-eqz v1, :cond_1

    .line 1778
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1775
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1782
    :cond_2
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 1783
    return-void
.end method

.method protected c()I
    .locals 5

    .prologue
    .line 1787
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 1788
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$g;->b:J

    .line 1789
    invoke-static {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1790
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g;->c:Lcom/yandex/metrica/c$a$g$b;

    if-eqz v1, :cond_0

    .line 1791
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g;->c:Lcom/yandex/metrica/c$a$g$b;

    .line 1792
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1794
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1795
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1796
    iget-object v2, p0, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;

    aget-object v2, v2, v0

    .line 1797
    if-eqz v2, :cond_1

    .line 1798
    const/4 v3, 0x3

    .line 1799
    invoke-static {v3, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1795
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1803
    :cond_3
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$g;
    .locals 2

    .prologue
    .line 1760
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yandex/metrica/c$a$g;->b:J

    .line 1761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$g;->c:Lcom/yandex/metrica/c$a$g$b;

    .line 1762
    invoke-static {}, Lcom/yandex/metrica/c$a$g$a;->d()[Lcom/yandex/metrica/c$a$g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$g;->d:[Lcom/yandex/metrica/c$a$g$a;

    .line 1763
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$g;->a:I

    .line 1764
    return-object p0
.end method
