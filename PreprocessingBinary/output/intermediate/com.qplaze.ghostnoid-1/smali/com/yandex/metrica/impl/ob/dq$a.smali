.class Lcom/yandex/metrica/impl/ob/dq$a;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dq;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/dq;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dq$a;->a:Lcom/yandex/metrica/impl/ob/dq;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/dq;B)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dq$a;-><init>(Lcom/yandex/metrica/impl/ob/dq;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq$a;->a:Lcom/yandex/metrica/impl/ob/dq;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/dq;->a(Lcom/yandex/metrica/impl/ob/dq;Landroid/telephony/SignalStrength;)V

    .line 172
    return-void
.end method
