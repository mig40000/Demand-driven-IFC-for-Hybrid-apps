.class final Lcom/yandex/metrica/impl/ob/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/g;-><init>(B)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/g$a;->a:Lcom/yandex/metrica/impl/ob/g;

    return-void
.end method

.method static synthetic a()Lcom/yandex/metrica/impl/ob/g;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yandex/metrica/impl/ob/g$a;->a:Lcom/yandex/metrica/impl/ob/g;

    return-object v0
.end method
