.class Lcom/yandex/metrica/impl/ob/dq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/dq;-><init>(Landroid/content/Context;)V
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
    .line 102
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dq$2;->a:Lcom/yandex/metrica/impl/ob/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq$2;->a:Lcom/yandex/metrica/impl/ob/dq;

    new-instance v1, Lcom/yandex/metrica/impl/ob/dq$a;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dq$2;->a:Lcom/yandex/metrica/impl/ob/dq;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/dq$a;-><init>(Lcom/yandex/metrica/impl/ob/dq;B)V

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/dq;->a(Lcom/yandex/metrica/impl/ob/dq;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 105
    return-void
.end method
