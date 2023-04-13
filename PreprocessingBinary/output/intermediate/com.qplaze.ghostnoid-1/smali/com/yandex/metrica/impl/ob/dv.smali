.class public final Lcom/yandex/metrica/impl/ob/dv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/dt;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/do;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/do;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/do;",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/dt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dv;->b:Lcom/yandex/metrica/impl/ob/do;

    .line 25
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dv;->a:Ljava/util/List;

    .line 26
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/dt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/do;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->b:Lcom/yandex/metrica/impl/ob/do;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dv;->c:Ljava/util/List;

    return-object v0
.end method
