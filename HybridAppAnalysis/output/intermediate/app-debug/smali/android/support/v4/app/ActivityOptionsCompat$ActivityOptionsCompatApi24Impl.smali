.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi24Impl;
.super Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi23Impl;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatApi24Impl"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 289
    invoke-direct {p0, p1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi23Impl;-><init>(Landroid/app/ActivityOptions;)V

    .line 290
    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .line 300
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi24Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .line 294
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi24Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 295
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi24Impl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method
