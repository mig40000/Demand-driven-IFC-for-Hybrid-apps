.class Lcom/chartboost/sdk/impl/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ah;


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/chartboost/sdk/impl/au;->a:I

    .line 12
    iput-object p2, p0, Lcom/chartboost/sdk/impl/au;->b:[B

    .line 13
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->b:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/chartboost/sdk/impl/au;->a:I

    return v0
.end method
