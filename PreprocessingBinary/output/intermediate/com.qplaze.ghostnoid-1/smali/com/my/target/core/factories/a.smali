.class public final Lcom/my/target/core/factories/a;
.super Ljava/lang/Object;
.source "BannersFactory.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/banners/c;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/my/target/core/enums/a;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    const-string v0, "promo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "banner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "teaser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    :cond_0
    new-instance v0, Lcom/my/target/core/models/banners/f;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-object v0

    .line 26
    :cond_1
    sget-object v0, Lcom/my/target/core/enums/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    const-string v0, "fullscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "banner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    :cond_2
    new-instance v0, Lcom/my/target/core/models/banners/d;

    const-string v1, "banner"

    invoke-direct {v0, p0, v1}, Lcom/my/target/core/models/banners/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_3
    const-string v0, "promo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    new-instance v0, Lcom/my/target/core/models/banners/e;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_4
    sget-object v0, Lcom/my/target/core/enums/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    const-string v0, "banner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "teaser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    :cond_5
    new-instance v0, Lcom/my/target/core/models/banners/g;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_6
    sget-object v0, Lcom/my/target/core/enums/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/my/target/core/enums/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 40
    :cond_7
    const-string v0, "showcase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "teaser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    :cond_8
    new-instance v0, Lcom/my/target/core/models/banners/b;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_9
    sget-object v0, Lcom/my/target/core/enums/a;->g:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    const-string v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    new-instance v0, Lcom/my/target/core/models/banners/i;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :cond_a
    const-string v0, "statistics"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    new-instance v0, Lcom/my/target/core/models/banners/h;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
