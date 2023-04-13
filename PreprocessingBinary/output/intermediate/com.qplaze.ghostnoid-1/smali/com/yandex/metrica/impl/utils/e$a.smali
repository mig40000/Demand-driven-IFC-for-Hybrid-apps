.class public Lcom/yandex/metrica/impl/utils/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/yandex/metrica/impl/utils/e$a;->a:I

    .line 30
    iput p2, p0, Lcom/yandex/metrica/impl/utils/e$a;->b:I

    .line 31
    iput p3, p0, Lcom/yandex/metrica/impl/utils/e$a;->c:I

    .line 32
    return-void
.end method

.method public static d()Lcom/yandex/metrica/impl/utils/e$a;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/utils/e$a;

    const/16 v1, 0x1e

    const/16 v2, 0x32

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/utils/e$a;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/yandex/metrica/impl/utils/e$a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yandex/metrica/impl/utils/e$a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/yandex/metrica/impl/utils/e$a;->c:I

    return v0
.end method
