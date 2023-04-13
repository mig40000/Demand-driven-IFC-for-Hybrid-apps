.class final Lcom/my/target/core/engines/g$9;
.super Ljava/lang/Object;
.source "StandardAdEngine.java"

# interfaces
.implements Lcom/my/target/core/communication/js/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/g;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/g;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/my/target/core/engines/g$9;->a:Lcom/my/target/core/engines/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/my/target/core/communication/js/events/f;)V
    .locals 5

    .prologue
    .line 432
    check-cast p1, Lcom/my/target/core/communication/js/events/d;

    .line 433
    iget-object v0, p0, Lcom/my/target/core/engines/g$9;->a:Lcom/my/target/core/engines/g;

    invoke-static {v0}, Lcom/my/target/core/engines/g;->e(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/my/target/core/communication/js/events/d;->b()[Ljava/lang/String;

    move-result-object v2

    .line 1119
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1121
    invoke-virtual {v1, v4}, Lcom/my/target/core/facades/h;->b(Ljava/lang/String;)V

    .line 1119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method
