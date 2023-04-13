.class Lcom/amazon/device/ads/ContextUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContextAsActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    const/4 v1, 0x0

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    :goto_1
    return-object v0

    :cond_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
