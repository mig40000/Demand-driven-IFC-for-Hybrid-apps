.class public Lcom/yandex/metrica/impl/ba$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yandex/metrica/impl/ba$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Landroid/content/pm/ServiceInfo;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/ServiceInfo;IIJ)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p3, p0, Lcom/yandex/metrica/impl/ba$a;->a:I

    .line 53
    iput p2, p0, Lcom/yandex/metrica/impl/ba$a;->b:I

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba$a;->d:Landroid/content/pm/ServiceInfo;

    .line 55
    iput-wide p4, p0, Lcom/yandex/metrica/impl/ba$a;->c:J

    .line 56
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ba$a;->e:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ba$a;)I
    .locals 4

    .prologue
    .line 61
    iget v0, p0, Lcom/yandex/metrica/impl/ba$a;->b:I

    iget v1, p1, Lcom/yandex/metrica/impl/ba$a;->b:I

    if-eq v0, v1, :cond_0

    .line 62
    iget v0, p0, Lcom/yandex/metrica/impl/ba$a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/yandex/metrica/impl/ba$a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 67
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ba$a;->c:J

    iget-wide v2, p1, Lcom/yandex/metrica/impl/ba$a;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 65
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ba$a;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/yandex/metrica/impl/ba$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcom/yandex/metrica/impl/ba$a;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ba$a;->a(Lcom/yandex/metrica/impl/ba$a;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetricaServiceDescriptor{apiLevel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/yandex/metrica/impl/ba$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/metrica/impl/ba$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ba$a;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
