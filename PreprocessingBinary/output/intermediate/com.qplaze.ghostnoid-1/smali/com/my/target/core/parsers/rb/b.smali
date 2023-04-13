.class public Lcom/my/target/core/parsers/rb/b;
.super Ljava/lang/Object;
.source "RBBannerParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/my/target/core/models/sections/f;Ljava/util/ArrayList;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/core/models/banners/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/my/target/core/models/sections/f;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/my/target/core/parsers/a$a;",
            ")",
            "Lcom/my/target/core/models/banners/c;"
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 57
    const-string v0, "Parsing banner"

    iput-object v0, p3, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Banner_id = \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "bannerID"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/my/target/core/parsers/a$a;->e:Ljava/lang/String;

    .line 60
    const-class v0, Lcom/my/target/core/parsers/rb/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 62
    const-string v0, "id"

    const-string v2, ""

    invoke-static {p0, v0, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string v0, "bannerID"

    const-string v2, ""

    invoke-static {p0, v0, p3, v2, v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    const-string v2, "type"

    const-string v3, ""

    invoke-static {p0, v2, p3, v3, v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v7, v1

    .line 152
    :goto_0
    return-object v7

    .line 78
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v7, v1

    .line 80
    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {p1, v0}, Lcom/my/target/core/models/sections/f;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/c;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v7, v1

    goto :goto_0

    .line 85
    :cond_3
    invoke-interface {p1}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/my/target/core/factories/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/banners/c;

    move-result-object v7

    .line 87
    if-nez v7, :cond_4

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mismatch for banner type <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">, banner id <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">, section type <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-interface {p1}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MismatchBannerType"

    .line 89
    invoke-static {v0, p3, v2}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;)V

    move-object v7, v1

    .line 92
    goto :goto_0

    .line 95
    :cond_4
    const-string v0, "bundle_id"

    const-string v2, ""

    invoke-static {p0, v0, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 99
    invoke-interface {v7, v0}, Lcom/my/target/core/models/banners/c;->b(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    invoke-interface {v7}, Lcom/my/target/core/models/banners/c;->d()V

    .line 107
    :cond_5
    invoke-static {v7, p0, p3, p1}, Lcom/my/target/core/parsers/rb/b;->c(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/sections/f;)V

    .line 109
    instance-of v0, v7, Lcom/my/target/core/models/banners/g;

    if-eqz v0, :cond_7

    .line 1604
    const-string v0, "Parsing standard banner"

    iput-object v0, p3, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    move-object v0, v7

    .line 1606
    check-cast v0, Lcom/my/target/core/models/banners/g;

    .line 1607
    const-string v2, "title"

    const-string v3, ""

    .line 1608
    invoke-static {p0, v2, p3, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1607
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->j(Ljava/lang/String;)V

    .line 1610
    const-string v2, "description"

    const-string v3, ""

    .line 1611
    invoke-static {p0, v2, p3, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1610
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->k(Ljava/lang/String;)V

    .line 1613
    const-string v2, "disclaimer"

    const-string v3, ""

    .line 1614
    invoke-static {p0, v2, p3, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1613
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->l(Ljava/lang/String;)V

    .line 1616
    const-string v2, "votes"

    .line 1617
    invoke-static {p0, v2, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v2

    .line 1616
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->d(I)V

    .line 1619
    const-string v2, "category"

    const-string v3, ""

    .line 1620
    invoke-static {p0, v2, p3, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1619
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->m(Ljava/lang/String;)V

    .line 1622
    const-string v2, "domain"

    const-string v3, ""

    .line 1623
    invoke-static {p0, v2, p3, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1622
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->n(Ljava/lang/String;)V

    .line 1625
    const-string v2, "iconLink"

    const-string v3, ""

    .line 1626
    invoke-static {p0, v2, p3, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1625
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->o(Ljava/lang/String;)V

    .line 1628
    const-string v2, "iconWidth"

    .line 1629
    invoke-static {p0, v2, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v2

    .line 1628
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->e(I)V

    .line 1631
    const-string v2, "iconHeight"

    .line 1632
    invoke-static {p0, v2, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v2

    .line 1631
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->f(I)V

    .line 1634
    const-string v2, "rating"

    .line 1635
    invoke-static {p0, v2, p3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)F

    move-result v2

    .line 1634
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->a(F)V

    .line 1638
    const-string v2, "imageLink"

    const-string v3, "imageHeight"

    const-string v4, "imageWidth"

    invoke-static {p0, v2, v3, v4, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/g;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1642
    invoke-interface {v7}, Lcom/my/target/core/models/banners/c;->f()I

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/my/target/core/enums/a;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1644
    check-cast p1, Lcom/my/target/core/models/sections/g;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/g;->j()I

    move-result v0

    invoke-interface {v7, v0}, Lcom/my/target/core/models/banners/c;->a(I)V

    .line 113
    :cond_6
    const-string v0, "banner"

    invoke-interface {v7}, Lcom/my/target/core/models/banners/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v7

    check-cast v0, Lcom/my/target/core/models/banners/g;

    .line 114
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    const-string v0, "Banner with type \'banner\' has no image"

    const-string v2, "No image in banner"

    invoke-static {v0, p3, v2}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;)V

    move-object v7, v1

    .line 119
    goto/16 :goto_0

    .line 123
    :cond_7
    instance-of v0, v7, Lcom/my/target/core/models/banners/b;

    if-eqz v0, :cond_a

    .line 2512
    const-string v0, "Parsing appwall banner"

    iput-object v0, p3, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    move-object v0, v7

    .line 2514
    check-cast v0, Lcom/my/target/core/models/banners/b;

    .line 2515
    const-string v1, "hasNotification"

    .line 2516
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v1

    .line 2515
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->c(Z)V

    .line 2518
    const-string v1, "Banner"

    .line 2519
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v1

    .line 2518
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->g(Z)V

    .line 2521
    const-string v1, "bubble_id"

    const-string v2, ""

    .line 2522
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2521
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->l(Ljava/lang/String;)V

    .line 2524
    const-string v1, "RequireCategoryHighlight"

    .line 2525
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v1

    .line 2524
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->e(Z)V

    .line 2527
    const-string v1, "icon_hd"

    .line 2528
    invoke-static {p0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 2527
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->b(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2530
    const-string v1, "ItemHighlight"

    .line 2531
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v1

    .line 2530
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->f(Z)V

    .line 2533
    const-string v1, "Main"

    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->d(Z)V

    .line 2535
    const-string v1, "mrgs_id"

    .line 2536
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 2535
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->d(I)V

    .line 2538
    const-string v1, "votes"

    .line 2539
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 2538
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->e(I)V

    .line 2541
    const-string v1, "rating"

    .line 2542
    invoke-static {p0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)F

    move-result v1

    .line 2541
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->a(F)V

    .line 2543
    const-string v1, "RequireWifi"

    .line 2544
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v1

    .line 2543
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->h(Z)V

    .line 2546
    const-string v1, "title"

    const-string v2, ""

    .line 2547
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2546
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->j(Ljava/lang/String;)V

    .line 2549
    const-string v1, "description"

    const-string v2, ""

    .line 2550
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2549
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->k(Ljava/lang/String;)V

    .line 2552
    const-string v1, "labelType"

    const-string v2, ""

    .line 2553
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2552
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->m(Ljava/lang/String;)V

    .line 2555
    const-string v1, "status"

    const-string v2, ""

    .line 2556
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2555
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->n(Ljava/lang/String;)V

    .line 2558
    const-string v1, "paidType"

    const-string v2, ""

    .line 2559
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2558
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->o(Ljava/lang/String;)V

    .line 2561
    const-string v1, "subitem"

    .line 2562
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v1

    .line 2561
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->i(Z)V

    .line 2564
    const-string v1, "coins"

    .line 2565
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 2564
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->f(I)V

    .line 2567
    const-string v1, "coins_icon_hd"

    .line 2568
    invoke-static {p0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 2567
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->c(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2570
    const-string v1, "coins_icon_bgcolor"

    const v2, -0x86de2

    .line 2571
    invoke-static {p0, v1, p3, v2}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 2570
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->g(I)V

    .line 2573
    const-string v1, "coins_icon_textcolor"

    .line 2574
    invoke-static {p0, v1, p3, v4}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 2573
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->h(I)V

    .line 2576
    const-string v1, "cross_notif_icon_hd"

    .line 2577
    invoke-static {p0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 2576
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->h(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2580
    sget-object v1, Lcom/my/target/core/enums/a;->c:Ljava/lang/String;

    invoke-interface {p1}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2582
    check-cast p1, Lcom/my/target/core/models/sections/b;

    .line 2583
    new-instance v1, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;)V

    .line 2584
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->f(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2586
    new-instance v1, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->e(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2589
    new-instance v1, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->d(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2592
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/b;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/my/target/core/models/sections/b;->o(Ljava/lang/String;)Lcom/my/target/core/models/e;

    move-result-object v1

    .line 2593
    if-eqz v1, :cond_8

    .line 2594
    new-instance v2, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v1}, Lcom/my/target/core/models/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/b;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 2596
    :cond_8
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/b;->isItemHighlight()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2597
    new-instance v1, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/b;->g(Lcom/my/target/nativeads/models/ImageData;)V

    .line 150
    :cond_9
    :goto_1
    invoke-static {v7, p0, p3}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;)V

    goto/16 :goto_0

    .line 127
    :cond_a
    instance-of v0, v7, Lcom/my/target/core/models/banners/d;

    if-eqz v0, :cond_b

    .line 129
    invoke-static {v7, p0, p3, p1}, Lcom/my/target/core/parsers/rb/b;->b(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/sections/f;)V

    goto :goto_1

    .line 132
    :cond_b
    instance-of v0, v7, Lcom/my/target/core/models/banners/e;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/my/target/core/enums/a;->d:Ljava/lang/String;

    invoke-interface {p1}, Lcom/my/target/core/models/sections/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3335
    const-string v0, "Parsing fs promo banner"

    iput-object v0, p3, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    move-object v0, v7

    .line 3337
    check-cast v0, Lcom/my/target/core/models/banners/e;

    .line 3338
    const-string v1, "title"

    const-string v2, ""

    .line 3339
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3338
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->j(Ljava/lang/String;)V

    .line 3341
    const-string v1, "description"

    const-string v2, ""

    .line 3342
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3341
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->k(Ljava/lang/String;)V

    .line 3344
    const-string v1, "disclaimer"

    const-string v2, ""

    .line 3345
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3344
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->l(Ljava/lang/String;)V

    .line 3347
    const-string v1, "votes"

    .line 3348
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 3347
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->i(I)V

    .line 3350
    const-string v1, "category"

    const-string v2, ""

    .line 3351
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3350
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->m(Ljava/lang/String;)V

    .line 3353
    const-string v1, "rating"

    .line 3354
    invoke-static {p0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)F

    move-result v1

    .line 3353
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->b(F)V

    .line 3355
    const-string v1, "domain"

    const-string v2, ""

    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->q(Ljava/lang/String;)V

    .line 3357
    const-string v1, "subcategory"

    const-string v2, ""

    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->n(Ljava/lang/String;)V

    .line 3359
    const-string v1, "iconLink"

    const-string v2, ""

    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->o(Ljava/lang/String;)V

    .line 3361
    const-string v1, "iconWidth"

    .line 3362
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 3361
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->l(I)V

    .line 3364
    const-string v1, "iconHeight"

    .line 3365
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 3364
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->m(I)V

    .line 3367
    const-string v1, "imageLink"

    const-string v2, ""

    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->p(Ljava/lang/String;)V

    .line 3369
    const-string v1, "imageWidth"

    .line 3370
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 3369
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->j(I)V

    .line 3372
    const-string v1, "imageHeight"

    .line 3373
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 3372
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->k(I)V

    .line 3375
    const-string v1, "finalLink"

    const-string v2, ""

    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->d(Ljava/lang/String;)V

    .line 3378
    const-string v1, "footerColor"

    const v2, -0x999a

    .line 3379
    invoke-static {p0, v1, p3, v2}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 3378
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->d(I)V

    .line 3381
    const-string v1, "ctaButtonColor"

    const v2, -0xff540e

    .line 3382
    invoke-static {p0, v1, p3, v2}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 3381
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->e(I)V

    .line 3384
    const-string v1, "ctaButtonTouchColor"

    const v2, -0xff8957

    .line 3385
    invoke-static {p0, v1, p3, v2}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 3384
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->f(I)V

    .line 3387
    const-string v1, "ctaButtonTextColor"

    .line 3388
    invoke-static {p0, v1, p3, v4}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 3387
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->g(I)V

    move-object v8, p1

    .line 3391
    check-cast v8, Lcom/my/target/core/models/sections/c;

    .line 3393
    const-string v1, "style"

    .line 3395
    invoke-virtual {v8}, Lcom/my/target/core/models/sections/c;->o()I

    move-result v2

    .line 3394
    invoke-static {p0, v1, p3, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 3393
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->h(I)V

    .line 3397
    const-string v2, "allowCloseDelay"

    .line 3400
    invoke-virtual {v8}, Lcom/my/target/core/models/sections/c;->i()F

    move-result v1

    float-to-double v4, v1

    move-object v1, p0

    move-object v3, p3

    .line 3397
    invoke-static/range {v1 .. v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;DZ)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->a(F)V

    .line 3403
    const-string v1, "close_icon_hd"

    invoke-static {p0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 3405
    if-nez v1, :cond_c

    invoke-virtual {v8}, Lcom/my/target/core/models/sections/c;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 3406
    :cond_c
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 3408
    const-string v1, "play_icon_hd"

    invoke-static {p0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 3410
    if-nez v1, :cond_d

    invoke-virtual {v8}, Lcom/my/target/core/models/sections/c;->l()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 3411
    :cond_d
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->b(Lcom/my/target/nativeads/models/ImageData;)V

    .line 3413
    const-string v1, "store_icon_hd"

    invoke-static {p0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 3416
    if-nez v1, :cond_e

    .line 3417
    invoke-virtual {v8}, Lcom/my/target/core/models/sections/c;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 3418
    :cond_e
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->c(Lcom/my/target/nativeads/models/ImageData;)V

    .line 3420
    invoke-virtual {v8}, Lcom/my/target/core/models/sections/c;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->c(Z)V

    .line 3421
    invoke-virtual {v8}, Lcom/my/target/core/models/sections/c;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->d(Z)V

    .line 3423
    const-string v1, "video"

    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 3426
    invoke-static {v9}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 3429
    invoke-interface {v7}, Lcom/my/target/core/models/banners/c;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "video"

    sget-object v4, Lcom/my/target/core/enums/a;->g:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/my/target/core/factories/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/banners/c;

    move-result-object v1

    .line 3431
    instance-of v3, v1, Lcom/my/target/core/models/banners/i;

    if-eqz v3, :cond_9

    .line 3433
    invoke-static {v1, v2, p3, p1}, Lcom/my/target/core/parsers/rb/b;->c(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/sections/f;)V

    .line 3434
    invoke-static {v1, v2, p3, p1}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/sections/f;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3438
    invoke-static {v1, v2, p3}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;)V

    .line 3439
    check-cast v1, Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/e;->a(Lcom/my/target/core/models/banners/i;)V

    goto/16 :goto_1

    .line 137
    :cond_f
    instance-of v0, v7, Lcom/my/target/core/models/banners/f;

    if-eqz v0, :cond_10

    .line 4266
    const-string v0, "Parsing native banner"

    iput-object v0, p3, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    move-object v0, v7

    .line 4268
    check-cast v0, Lcom/my/target/core/models/banners/f;

    .line 4269
    const-string v1, "title"

    const-string v2, ""

    .line 4270
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4269
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->j(Ljava/lang/String;)V

    .line 4272
    const-string v1, "description"

    const-string v2, ""

    .line 4273
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4272
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->k(Ljava/lang/String;)V

    .line 4275
    const-string v1, "disclaimer"

    const-string v2, ""

    .line 4276
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4275
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->l(Ljava/lang/String;)V

    .line 4278
    const-string v1, "votes"

    .line 4279
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 4278
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->i(I)V

    .line 4281
    const-string v1, "category"

    const-string v2, ""

    .line 4282
    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4281
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->m(Ljava/lang/String;)V

    .line 4284
    const-string v1, "rating"

    .line 4285
    invoke-static {p0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)F

    move-result v1

    .line 4284
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->b(F)V

    .line 4286
    const-string v1, "domain"

    const-string v2, ""

    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->q(Ljava/lang/String;)V

    .line 4288
    const-string v1, "subcategory"

    const-string v2, ""

    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->n(Ljava/lang/String;)V

    .line 4290
    const-string v1, "iconLink"

    const-string v2, ""

    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->o(Ljava/lang/String;)V

    .line 4292
    const-string v1, "iconWidth"

    .line 4293
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 4292
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->l(I)V

    .line 4295
    const-string v1, "iconHeight"

    .line 4296
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 4295
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->m(I)V

    .line 4298
    const-string v1, "imageLink"

    const-string v2, ""

    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->p(Ljava/lang/String;)V

    .line 4300
    const-string v1, "imageWidth"

    .line 4301
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 4300
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->j(I)V

    .line 4303
    const-string v1, "imageHeight"

    .line 4304
    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v1

    .line 4303
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->k(I)V

    .line 4306
    const-string v1, "finalLink"

    const-string v2, ""

    invoke-static {p0, v1, p3, v2, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->d(Ljava/lang/String;)V

    .line 4309
    const-string v1, "video"

    invoke-static {p0, v1, p3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 4312
    invoke-static {v9}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 4315
    invoke-interface {v7}, Lcom/my/target/core/models/banners/c;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "video"

    sget-object v4, Lcom/my/target/core/enums/a;->g:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/my/target/core/factories/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/banners/c;

    move-result-object v1

    .line 4319
    instance-of v3, v1, Lcom/my/target/core/models/banners/i;

    if-eqz v3, :cond_9

    .line 4321
    invoke-static {v1, v2, p3, p1}, Lcom/my/target/core/parsers/rb/b;->c(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/sections/f;)V

    .line 4323
    invoke-static {v1, v2, p3, p1}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/sections/f;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4327
    invoke-static {v1, v2, p3}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;)V

    .line 4328
    check-cast v1, Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->a(Lcom/my/target/core/models/banners/i;)V

    goto/16 :goto_1

    .line 141
    :cond_10
    const-string v0, "video"

    invoke-interface {v7}, Lcom/my/target/core/models/banners/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "statistics"

    .line 142
    invoke-interface {v7}, Lcom/my/target/core/models/banners/c;->a()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    :cond_11
    invoke-static {v7, p0, p3, p1}, Lcom/my/target/core/parsers/rb/b;->a(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/sections/f;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v7, v1

    .line 146
    goto/16 :goto_0
.end method

.method private static a(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;)V
    .locals 2

    .prologue
    .line 157
    invoke-static {p1, p2}, Lcom/my/target/core/parsers/rb/e;->a(Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->a(Ljava/util/ArrayList;)V

    .line 160
    :cond_0
    return-void
.end method

.method private static a(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/sections/f;)Z
    .locals 12

    .prologue
    .line 165
    const-string v0, "Parsing video banner"

    iput-object v0, p2, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    move-object v0, p0

    .line 167
    check-cast v0, Lcom/my/target/core/models/banners/i;

    .line 168
    const/4 v1, 0x0

    .line 169
    instance-of v2, p3, Lcom/my/target/core/models/sections/h;

    if-eqz v2, :cond_5

    .line 171
    check-cast p3, Lcom/my/target/core/models/sections/h;

    invoke-virtual {p3}, Lcom/my/target/core/models/sections/h;->i()Lcom/my/target/core/models/j;

    move-result-object v1

    .line 215
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 217
    const-string v2, "allowClose"

    .line 218
    invoke-virtual {v1}, Lcom/my/target/core/models/j;->a()Z

    move-result v3

    .line 217
    invoke-static {p1, v2, p2, v3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->f(Z)V

    .line 219
    const-string v2, "allowCloseDelay"

    .line 221
    invoke-virtual {v1}, Lcom/my/target/core/models/j;->b()F

    move-result v1

    float-to-double v4, v1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    .line 219
    invoke-static/range {v1 .. v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;DZ)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/i;->b(F)V

    .line 224
    :cond_1
    const-string v1, "statistics"

    invoke-interface {p0}, Lcom/my/target/core/models/banners/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    const-string v2, "duration"

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;DZ)D

    move-result-wide v2

    double-to-float v1, v2

    .line 228
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 229
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/i;->a(F)V

    .line 233
    :cond_2
    const-string v1, "autoplay"

    const/4 v2, 0x1

    invoke-static {p1, v1, p2, v2}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/i;->g(Z)V

    .line 235
    const-string v1, "hasCtaButton"

    const/4 v2, 0x1

    invoke-static {p1, v1, p2, v2}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/i;->h(Z)V

    .line 237
    const-string v1, "previewLink"

    const-string v2, "previewHeight"

    const-string v3, "previewWidth"

    invoke-static {p1, v1, v2, v3, p2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_3

    .line 243
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/i;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 246
    :cond_3
    const-string v1, "statistics"

    invoke-interface {p0}, Lcom/my/target/core/models/banners/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 248
    const-string v3, "mediafiles"

    .line 4713
    const-string v1, "Parsing banner mediafiles"

    iput-object v1, p2, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 4715
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4717
    invoke-static {p1, v3, p2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONArray;

    move-result-object v5

    .line 4719
    if-eqz v5, :cond_4

    .line 4721
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 4723
    if-nez v6, :cond_8

    .line 4725
    const-string v1, "Empty mediafiles array"

    const-string v2, "Empty mediafiles array"

    invoke-static {v1, p2, v2}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;)V

    .line 251
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 253
    const/4 v0, 0x0

    .line 260
    :goto_1
    return v0

    .line 173
    :cond_5
    instance-of v2, p3, Lcom/my/target/core/models/sections/c;

    if-eqz v2, :cond_6

    move-object v1, p3

    .line 175
    check-cast v1, Lcom/my/target/core/models/sections/c;

    invoke-virtual {v1}, Lcom/my/target/core/models/sections/c;->p()Lcom/my/target/core/models/j;

    move-result-object v1

    .line 176
    check-cast p3, Lcom/my/target/core/models/sections/c;

    .line 177
    const-string v2, "closeActionText"

    .line 179
    invoke-virtual {p3}, Lcom/my/target/core/models/sections/c;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 178
    invoke-static {p1, v2, p2, v3, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->k(Ljava/lang/String;)V

    .line 180
    const-string v2, "replayActionText"

    .line 182
    invoke-virtual {p3}, Lcom/my/target/core/models/sections/c;->m()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 181
    invoke-static {p1, v2, p2, v3, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->l(Ljava/lang/String;)V

    .line 183
    const-string v2, "allowBackButton"

    .line 186
    invoke-virtual {p3}, Lcom/my/target/core/models/sections/c;->q()Z

    move-result v3

    .line 183
    invoke-static {p1, v2, p2, v3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->c(Z)V

    .line 188
    const-string v2, "allowReplay"

    .line 191
    invoke-virtual {p3}, Lcom/my/target/core/models/sections/c;->r()Z

    move-result v3

    .line 188
    invoke-static {p1, v2, p2, v3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->d(Z)V

    .line 193
    const-string v2, "automute"

    .line 196
    invoke-virtual {p3}, Lcom/my/target/core/models/sections/c;->s()Z

    move-result v3

    .line 193
    invoke-static {p1, v2, p2, v3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->e(Z)V

    .line 198
    invoke-virtual {p3}, Lcom/my/target/core/models/sections/c;->v()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->i(Z)V

    goto/16 :goto_0

    .line 199
    :cond_6
    instance-of v2, p3, Lcom/my/target/core/models/sections/e;

    if-eqz v2, :cond_0

    .line 201
    check-cast p3, Lcom/my/target/core/models/sections/e;

    .line 203
    const-string v2, "closeActionText"

    .line 205
    invoke-virtual {p3}, Lcom/my/target/core/models/sections/e;->k()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 204
    invoke-static {p1, v2, p2, v3, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->k(Ljava/lang/String;)V

    .line 206
    const-string v2, "replayActionText"

    .line 208
    invoke-virtual {p3}, Lcom/my/target/core/models/sections/e;->l()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 207
    invoke-static {p1, v2, p2, v3, v4}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->l(Ljava/lang/String;)V

    .line 209
    const-string v2, "automute"

    .line 211
    invoke-virtual {p3}, Lcom/my/target/core/models/sections/e;->i()Z

    move-result v3

    .line 210
    invoke-static {p1, v2, p2, v3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v2

    .line 209
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->e(Z)V

    .line 212
    invoke-virtual {p3}, Lcom/my/target/core/models/sections/e;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/i;->i(Z)V

    goto/16 :goto_0

    .line 230
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 4730
    :cond_8
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_4

    .line 4732
    invoke-static {v2, v5, v3, p2}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONObject;

    move-result-object v7

    .line 4734
    const-string v1, "src"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v1, p2, v8, v9}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4738
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xc

    if-ge v8, v9, :cond_9

    if-eqz v1, :cond_9

    const-string v8, "https"

    .line 4740
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4742
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4743
    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4746
    :cond_9
    const-string v8, "width"

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v8

    .line 4748
    const-string v9, "height"

    const/4 v10, 0x0

    invoke-static {v7, v9, p2, v10}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v9

    .line 4750
    const-string v10, "bitrate"

    const/4 v11, 0x0

    invoke-static {v7, v10, p2, v11}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v7

    .line 4754
    if-eqz v1, :cond_a

    if-lez v8, :cond_a

    if-lez v9, :cond_a

    if-lez v7, :cond_a

    .line 4757
    new-instance v10, Lcom/my/target/nativeads/models/VideoData;

    invoke-direct {v10, v1}, Lcom/my/target/nativeads/models/VideoData;-><init>(Ljava/lang/String;)V

    .line 4758
    invoke-virtual {v10, v7}, Lcom/my/target/nativeads/models/VideoData;->setBitrate(I)V

    .line 4759
    invoke-virtual {v10, v8}, Lcom/my/target/nativeads/models/VideoData;->setWidth(I)V

    .line 4760
    invoke-virtual {v10, v9}, Lcom/my/target/nativeads/models/VideoData;->setHeight(I)V

    .line 4761
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4730
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 4765
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Some of mediafile\'s params are invalid: src = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " width = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " height = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " bitrate = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4770
    const-string v7, "Wrong mediafile"

    invoke-static {v1, p2, v7}, Lcom/my/target/core/parsers/a;->a(Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;)V

    goto :goto_3

    .line 257
    :cond_b
    invoke-virtual {v0, v4}, Lcom/my/target/core/models/banners/i;->a(Ljava/util/List;)V

    .line 260
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method private static b(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/sections/f;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 446
    const-string v0, "Parsing fs image banner"

    iput-object v0, p2, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 448
    check-cast p0, Lcom/my/target/core/models/banners/d;

    .line 449
    const-string v0, "allowClose"

    .line 450
    invoke-static {p1, v0, p2, v1}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v0

    .line 449
    invoke-virtual {p0, v0}, Lcom/my/target/core/models/banners/d;->c(Z)V

    .line 452
    const-string v0, "close_icon_hd"

    invoke-static {p1, v0, p2}, Lcom/my/target/core/parsers/rb/a;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 454
    if-nez v0, :cond_0

    .line 455
    const-string v0, "close_icon"

    invoke-static {p1, v0, p2}, Lcom/my/target/core/parsers/rb/a;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 457
    :cond_0
    if-nez v0, :cond_1

    check-cast p3, Lcom/my/target/core/models/sections/c;

    invoke-virtual {p3}, Lcom/my/target/core/models/sections/c;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 459
    :cond_1
    invoke-virtual {p0, v0}, Lcom/my/target/core/models/banners/d;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 461
    const-string v0, "portrait"

    invoke-static {p1, v0, p2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONArray;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_4

    .line 465
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 466
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v1

    .line 467
    :goto_0
    if-ge v0, v4, :cond_3

    .line 469
    const-string v5, "portrait"

    invoke-static {v0, v2, v5, p2}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONObject;

    move-result-object v5

    .line 471
    if-eqz v5, :cond_2

    .line 472
    const-string v6, "imageLink"

    const-string v7, "height"

    const-string v8, "width"

    invoke-static {v5, v6, v7, v8, p2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v5

    .line 477
    if-eqz v5, :cond_2

    .line 479
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_3
    invoke-virtual {p0, v3}, Lcom/my/target/core/models/banners/d;->a(Ljava/util/List;)V

    .line 484
    :cond_4
    const-string v0, "landscape"

    invoke-static {p1, v0, p2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONArray;

    move-result-object v2

    .line 486
    if-eqz v2, :cond_7

    .line 488
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 489
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v1

    .line 490
    :goto_1
    if-ge v0, v4, :cond_6

    .line 492
    const-string v1, "landscape"

    invoke-static {v0, v2, v1, p2}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lorg/json/JSONObject;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_5

    .line 495
    const-string v5, "imageLink"

    const-string v6, "height"

    const-string v7, "width"

    invoke-static {v1, v5, v6, v7, p2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_5

    .line 502
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 505
    :cond_6
    invoke-virtual {p0, v3}, Lcom/my/target/core/models/banners/d;->b(Ljava/util/List;)V

    .line 507
    :cond_7
    return-void
.end method

.method private static c(Lcom/my/target/core/models/banners/c;Lorg/json/JSONObject;Lcom/my/target/core/parsers/a$a;Lcom/my/target/core/models/sections/f;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    const-string v0, "Parsing common banner"

    iput-object v0, p2, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 653
    const-string v0, "trackingLink"

    const-string v1, ""

    .line 654
    invoke-static {p1, v0, p2, v1, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->c(Ljava/lang/String;)V

    .line 657
    const-string v0, "finalLink"

    const-string v1, ""

    .line 658
    invoke-static {p1, v0, p2, v1, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->d(Ljava/lang/String;)V

    .line 661
    const-string v0, "timeout"

    .line 662
    invoke-static {p1, v0, p2, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v0

    .line 661
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->a(I)V

    .line 665
    const-string v0, "urlscheme"

    const-string v1, ""

    .line 666
    invoke-static {p1, v0, p2, v1, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->a(Ljava/lang/String;)V

    .line 669
    const-string v0, "width"

    .line 670
    invoke-static {p1, v0, p2, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v0

    .line 669
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->b(I)V

    .line 673
    const-string v0, "height"

    .line 674
    invoke-static {p1, v0, p2, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;I)I

    move-result v0

    .line 673
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->c(I)V

    .line 677
    const-string v0, "ageRestrictions"

    const-string v1, ""

    .line 678
    invoke-static {p1, v0, p2, v1, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 677
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->e(Ljava/lang/String;)V

    .line 681
    const-string v0, "bundle_id"

    const-string v1, ""

    .line 682
    invoke-static {p1, v0, p2, v1, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->b(Ljava/lang/String;)V

    .line 685
    const-string v0, "deeplink"

    const-string v1, ""

    .line 686
    invoke-static {p1, v0, p2, v1, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->i(Ljava/lang/String;)V

    .line 689
    const-string v0, "openInBrowser"

    .line 690
    invoke-static {p1, v0, p2, v2}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v0

    .line 689
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->a(Z)V

    .line 693
    const-string v0, "usePlayStoreAction"

    .line 694
    invoke-static {p1, v0, p2, v2}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Z)Z

    move-result v0

    .line 693
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->b(Z)V

    .line 697
    const-string v0, "navigationType"

    const-string v1, ""

    invoke-static {p1, v0, p2, v1, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 699
    const-string v1, "deeplink"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const-string v0, "store"

    .line 701
    :cond_0
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->f(Ljava/lang/String;)V

    .line 703
    const-string v0, "ctaText"

    const-string v1, ""

    .line 704
    invoke-static {p1, v0, p2, v1, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/my/target/core/parsers/a$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 703
    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->g(Ljava/lang/String;)V

    .line 707
    invoke-interface {p3}, Lcom/my/target/core/models/sections/f;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/my/target/core/models/banners/c;->h(Ljava/lang/String;)V

    .line 708
    return-void
.end method
