.class Lcom/yandex/metrica/impl/ob/dq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/dq;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/dq;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dq$3;->a:Lcom/yandex/metrica/impl/ob/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq$3;->a:Lcom/yandex/metrica/impl/ob/dq;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dq;->a(Lcom/yandex/metrica/impl/ob/dq;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq$3;->a:Lcom/yandex/metrica/impl/ob/dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/dq;->a(Lcom/yandex/metrica/impl/ob/dq;Z)Z

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq$3;->a:Lcom/yandex/metrica/impl/ob/dq;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dq;->b(Lcom/yandex/metrica/impl/ob/dq;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq$3;->a:Lcom/yandex/metrica/impl/ob/dq;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dq;->c(Lcom/yandex/metrica/impl/ob/dq;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dq$3;->a:Lcom/yandex/metrica/impl/ob/dq;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/dq;->b(Lcom/yandex/metrica/impl/ob/dq;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
