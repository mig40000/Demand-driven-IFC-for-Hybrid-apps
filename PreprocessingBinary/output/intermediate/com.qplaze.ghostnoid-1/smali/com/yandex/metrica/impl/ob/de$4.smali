.class Lcom/yandex/metrica/impl/ob/de$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/de;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/de;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/de$4;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de$4;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de;->e()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de$4;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/de;->a(Lcom/yandex/metrica/impl/ob/de;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de$4;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/de;->b(Lcom/yandex/metrica/impl/ob/de;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de$4;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/de;->a(Lcom/yandex/metrica/impl/ob/de;)Landroid/content/Context;

    move-result-object v0

    .line 1022
    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {v0, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 158
    const-string v1, "socket_unbind_has_thrown_exception"

    invoke-interface {v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
