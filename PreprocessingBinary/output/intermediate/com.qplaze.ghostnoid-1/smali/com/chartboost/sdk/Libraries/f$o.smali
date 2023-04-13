.class Lcom/chartboost/sdk/Libraries/f$o;
.super Lcom/chartboost/sdk/Libraries/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# instance fields
.field private final a:[Lcom/chartboost/sdk/Libraries/f$a;


# direct methods
.method public constructor <init>([Lcom/chartboost/sdk/Libraries/f$a;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/f$a;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/f$o;->a:[Lcom/chartboost/sdk/Libraries/f$a;

    .line 279
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    const-string v0, "object must match one of the following: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$o;->a:[Lcom/chartboost/sdk/Libraries/f$a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 291
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$o;->a:[Lcom/chartboost/sdk/Libraries/f$a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$o;->a:[Lcom/chartboost/sdk/Libraries/f$a;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 295
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 281
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$o;->a:[Lcom/chartboost/sdk/Libraries/f$a;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 282
    invoke-virtual {v4, p1}, Lcom/chartboost/sdk/Libraries/f$a;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    const/4 v0, 0x1

    .line 285
    :cond_0
    return v0

    .line 281
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
