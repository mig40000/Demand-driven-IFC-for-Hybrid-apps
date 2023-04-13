.class public final Lcom/yandex/metrica/impl/ob/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/metrica/impl/ob/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/yandex/metrica/impl/ob/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/metrica/impl/ob/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/j",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/k$a;)Lcom/yandex/metrica/impl/ob/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/k$a;->b:Lcom/yandex/metrica/impl/ob/j;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/h;)Lcom/yandex/metrica/impl/ob/k$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/h",
            "<TT;>;)",
            "Lcom/yandex/metrica/impl/ob/k$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/k$a;->a:Lcom/yandex/metrica/impl/ob/h;

    .line 55
    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/j",
            "<TT;>;)",
            "Lcom/yandex/metrica/impl/ob/k$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/k$a;->b:Lcom/yandex/metrica/impl/ob/j;

    .line 50
    return-object p0
.end method

.method public a()Lcom/yandex/metrica/impl/ob/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/k;-><init>(Lcom/yandex/metrica/impl/ob/k$a;B)V

    return-object v0
.end method
