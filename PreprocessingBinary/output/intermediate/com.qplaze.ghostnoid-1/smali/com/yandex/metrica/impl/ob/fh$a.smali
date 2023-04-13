.class Lcom/yandex/metrica/impl/ob/fh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/fj$a;

.field private b:Lcom/yandex/metrica/impl/ob/fg;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/fj$a;Lcom/yandex/metrica/impl/ob/fg;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fh$a;->a:Lcom/yandex/metrica/impl/ob/fj$a;

    .line 103
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fh$a;->b:Lcom/yandex/metrica/impl/ob/fg;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/fj$a;Lcom/yandex/metrica/impl/ob/fg;B)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fh$a;-><init>(Lcom/yandex/metrica/impl/ob/fj$a;Lcom/yandex/metrica/impl/ob/fg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh$a;->a:Lcom/yandex/metrica/impl/ob/fj$a;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh$a;->a:Lcom/yandex/metrica/impl/ob/fj$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fh$a;->b:Lcom/yandex/metrica/impl/ob/fg;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/fj$a;->a(Lcom/yandex/metrica/impl/ob/fg;)V

    .line 111
    :cond_0
    return-void
.end method
