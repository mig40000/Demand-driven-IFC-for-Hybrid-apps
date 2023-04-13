.class Lcom/yandex/metrica/impl/ob/do$a;
.super Lcom/yandex/metrica/impl/ob/do$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/do$b;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/telephony/CellInfo;)Lcom/yandex/metrica/impl/ob/do;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 99
    check-cast p1, Landroid/telephony/CellInfoCdma;

    .line 100
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    .line 101
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->isRegistered()Z

    move-result v6

    const/4 v7, 0x2

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v8, v1

    .line 100
    invoke-virtual/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/do$a;->a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/telephony/CellSignalStrength;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Integer;)Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    return-object v0
.end method
