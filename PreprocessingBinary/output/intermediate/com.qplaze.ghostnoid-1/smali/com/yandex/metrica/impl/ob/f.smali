.class public final Lcom/yandex/metrica/impl/ob/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/yandex/metrica/impl/ob/f;->a:[Ljava/lang/String;

    .line 82
    new-array v0, v1, [B

    sput-object v0, Lcom/yandex/metrica/impl/ob/f;->b:[B

    return-void
.end method

.method static a(II)I
    .locals 1

    .prologue
    .line 72
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
