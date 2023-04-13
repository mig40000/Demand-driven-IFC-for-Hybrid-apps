.class public final Lcom/my/target/core/factories/c;
.super Ljava/lang/Object;
.source "EnginesFactory.java"


# direct methods
.method public static a(Lcom/my/target/core/facades/g;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/my/target/core/engines/b;
    .locals 2

    .prologue
    .line 30
    instance-of v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/my/target/core/engines/c;

    check-cast p0, Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/core/engines/c;-><init>(Lcom/my/target/nativeads/NativeAppwallAd;Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 44
    :goto_0
    return-object v0

    .line 31
    :cond_0
    instance-of v0, p0, Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/my/target/ads/MyTargetView;

    if-eqz v0, :cond_2

    .line 33
    const-string v0, "native"

    check-cast p0, Lcom/my/target/core/facades/h;

    invoke-virtual {p0}, Lcom/my/target/core/facades/h;->i()Lcom/my/target/core/models/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lcom/my/target/core/engines/h;

    check-cast p1, Lcom/my/target/ads/MyTargetView;

    invoke-direct {v0, p1, p2}, Lcom/my/target/core/engines/h;-><init>(Lcom/my/target/ads/MyTargetView;Landroid/content/Context;)V

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/my/target/core/engines/g;

    check-cast p1, Lcom/my/target/ads/MyTargetView;

    invoke-direct {v0, p1, p2}, Lcom/my/target/core/engines/g;-><init>(Lcom/my/target/ads/MyTargetView;Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :cond_2
    instance-of v0, p0, Lcom/my/target/core/facades/e;

    if-eqz v0, :cond_3

    .line 39
    new-instance v0, Lcom/my/target/core/engines/d;

    check-cast p0, Lcom/my/target/core/facades/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/core/engines/d;-><init>(Lcom/my/target/core/facades/e;Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto :goto_0

    .line 40
    :cond_3
    instance-of v0, p0, Lcom/my/target/core/facades/f;

    if-eqz v0, :cond_4

    .line 41
    new-instance v0, Lcom/my/target/core/engines/e;

    check-cast p0, Lcom/my/target/core/facades/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/core/engines/e;-><init>(Lcom/my/target/core/facades/f;Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto :goto_0

    .line 42
    :cond_4
    instance-of v0, p0, Lcom/my/target/core/facades/d;

    if-eqz v0, :cond_5

    .line 43
    new-instance v0, Lcom/my/target/core/engines/f;

    check-cast p0, Lcom/my/target/core/facades/d;

    check-cast p1, Lcom/my/target/ads/MyTargetVideoView;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/core/engines/f;-><init>(Lcom/my/target/core/facades/d;Lcom/my/target/ads/MyTargetVideoView;Landroid/content/Context;)V

    goto :goto_0

    .line 44
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
