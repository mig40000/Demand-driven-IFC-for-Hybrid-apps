.class public Lcom/yandex/metrica/impl/ob/dc;
.super Lcom/yandex/metrica/impl/ob/dd;
.source "SourceFile"


# instance fields
.field private b:Lcom/yandex/metrica/impl/ob/db;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dd;-><init>(I)V

    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/db;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/db;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->b:Lcom/yandex/metrica/impl/ob/db;

    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->b:Lcom/yandex/metrica/impl/ob/db;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/db;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/dd;->a()V

    .line 24
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
