.class public final Lcom/my/target/core/factories/d;
.super Ljava/lang/Object;
.source "SectionsFactory.java"


# direct methods
.method public static a(Ljava/lang/String;I)Lcom/my/target/core/models/sections/f;
    .locals 2

    .prologue
    .line 24
    invoke-static {p0}, Lcom/my/target/core/enums/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_5

    .line 27
    sget-object v1, Lcom/my/target/core/enums/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/my/target/core/models/sections/g;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/g;-><init>(Ljava/lang/String;I)V

    .line 33
    :goto_0
    return-object v0

    .line 28
    :cond_0
    sget-object v1, Lcom/my/target/core/enums/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/my/target/core/enums/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Lcom/my/target/core/models/sections/b;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/b;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 29
    :cond_2
    sget-object v1, Lcom/my/target/core/enums/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/my/target/core/models/sections/c;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/c;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 30
    :cond_3
    sget-object v1, Lcom/my/target/core/enums/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/my/target/core/models/sections/e;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/e;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 31
    :cond_4
    sget-object v1, Lcom/my/target/core/enums/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/my/target/core/models/sections/d;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/sections/d;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 33
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
