.class public final Lcom/yandex/metrica/impl/ob/dt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Ljava/lang/Integer;

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/telephony/SubscriptionInfo;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/dt;->a:Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/dt;->b:Ljava/lang/Integer;

    .line 43
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dt;->c:Z

    .line 44
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dt;->d:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dt;->e:Ljava/lang/String;

    .line 46
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dt;->a:Ljava/lang/Integer;

    .line 33
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dt;->b:Ljava/lang/Integer;

    .line 34
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/dt;->c:Z

    .line 35
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/dt;->d:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/dt;->e:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dt;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dt;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dt;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dt;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dt;->e:Ljava/lang/String;

    return-object v0
.end method
