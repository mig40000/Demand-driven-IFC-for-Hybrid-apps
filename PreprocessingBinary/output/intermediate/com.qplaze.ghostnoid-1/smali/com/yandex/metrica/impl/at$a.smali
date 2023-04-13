.class Lcom/yandex/metrica/impl/at$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/yandex/metrica/impl/at;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/yandex/metrica/impl/at;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/at;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/at$a;->a:Lcom/yandex/metrica/impl/at;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/yandex/metrica/impl/at$a;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/at$a;->a:Lcom/yandex/metrica/impl/at;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/at;Landroid/content/Context;)Landroid/content/Context;

    .line 84
    return-object p0
.end method

.method a(Landroid/os/Handler;)Lcom/yandex/metrica/impl/at$a;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/at$a;->a:Lcom/yandex/metrica/impl/at;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/at;Landroid/os/Handler;)Landroid/os/Handler;

    .line 99
    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/au;)Lcom/yandex/metrica/impl/at$a;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/at$a;->a:Lcom/yandex/metrica/impl/at;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/at;Lcom/yandex/metrica/impl/au;)Lcom/yandex/metrica/impl/au;

    .line 89
    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/j;)Lcom/yandex/metrica/impl/at$a;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/at$a;->a:Lcom/yandex/metrica/impl/at;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/at;Lcom/yandex/metrica/impl/j;)Lcom/yandex/metrica/impl/j;

    .line 94
    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/ob/dl;)Lcom/yandex/metrica/impl/at$a;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yandex/metrica/impl/at$a;->a:Lcom/yandex/metrica/impl/at;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/at;Lcom/yandex/metrica/impl/ob/dl;)Lcom/yandex/metrica/impl/ob/dl;

    .line 104
    return-object p0
.end method

.method a()Lcom/yandex/metrica/impl/at;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yandex/metrica/impl/at$a;->a:Lcom/yandex/metrica/impl/at;

    return-object v0
.end method
