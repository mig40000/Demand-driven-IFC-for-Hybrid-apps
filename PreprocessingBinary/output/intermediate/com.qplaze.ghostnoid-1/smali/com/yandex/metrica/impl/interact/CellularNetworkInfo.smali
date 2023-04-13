.class public Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->a:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/du;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/du;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo$1;-><init>(Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/du;->a(Lcom/yandex/metrica/impl/ob/dw;)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCelluralInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->a:Ljava/lang/String;

    return-object v0
.end method
