.class Lcom/yandex/metrica/impl/ob/fh$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/fh;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/fh;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fh$b;->a:Lcom/yandex/metrica/impl/ob/fh;

    .line 54
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/fh;Landroid/os/Looper;B)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fh$b;-><init>(Lcom/yandex/metrica/impl/ob/fh;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/fj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yandex/metrica/impl/ob/fj",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 73
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/fh$b;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yandex/metrica/impl/ob/fj;

    .line 60
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fj;->e()Lcom/yandex/metrica/impl/ob/fj$b;

    move-result-object v1

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fh$b;->a:Lcom/yandex/metrica/impl/ob/fh;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/fh;->a(Lcom/yandex/metrica/impl/ob/fh;)Lcom/yandex/metrica/impl/ob/ff;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/ff;->a(Lcom/yandex/metrica/impl/ob/fj;)Lcom/yandex/metrica/impl/ob/fi;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/fj;->b(Lcom/yandex/metrica/impl/ob/fi;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/fh$b;->a:Lcom/yandex/metrica/impl/ob/fh;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/fh;->b(Lcom/yandex/metrica/impl/ob/fh;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/fh$c;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lcom/yandex/metrica/impl/ob/fh$c;-><init>(Lcom/yandex/metrica/impl/ob/fj$b;Ljava/lang/Object;B)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/yandex/metrica/impl/ob/fg; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 66
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fj;->f()Lcom/yandex/metrica/impl/ob/fj$a;

    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fh$b;->a:Lcom/yandex/metrica/impl/ob/fh;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/fh;->b(Lcom/yandex/metrica/impl/ob/fh;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/fh$a;

    invoke-direct {v3, v0, v1, v6}, Lcom/yandex/metrica/impl/ob/fh$a;-><init>(Lcom/yandex/metrica/impl/ob/fj$a;Lcom/yandex/metrica/impl/ob/fg;B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
