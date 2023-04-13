.class Lcom/chartboost/sdk/Libraries/f$q;
.super Lcom/chartboost/sdk/Libraries/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "q"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private final b:[Lcom/chartboost/sdk/Libraries/f$a;


# direct methods
.method public constructor <init>([Lcom/chartboost/sdk/Libraries/f$a;)V
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/f$a;-><init>()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f$q;->a:Ljava/lang/String;

    .line 308
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/f$q;->b:[Lcom/chartboost/sdk/Libraries/f$a;

    .line 309
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$q;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f$q;->a:Ljava/lang/String;

    .line 331
    :goto_0
    return-object v0

    .line 322
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    const-string v0, "object must match ALL of the following: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$q;->b:[Lcom/chartboost/sdk/Libraries/f$a;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 325
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$q;->b:[Lcom/chartboost/sdk/Libraries/f$a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$q;->b:[Lcom/chartboost/sdk/Libraries/f$a;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 329
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 311
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f$q;->b:[Lcom/chartboost/sdk/Libraries/f$a;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 312
    invoke-virtual {v4, p1}, Lcom/chartboost/sdk/Libraries/f$a;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object failed to match: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/f$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/f$q;->a:Ljava/lang/String;

    .line 317
    :goto_1
    return v0

    .line 311
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
