.class public Lcom/appodeal/ads/Appodeal;
.super Ljava/lang/Object;


# static fields
.field public static final BANNER:I = 0x4

.field public static final BANNER_BOTTOM:I = 0x8

.field public static final BANNER_TOP:I = 0x10

.field public static final BANNER_VIEW:I = 0x40

.field public static final INTERSTITIAL:I = 0x1

.field public static final MREC:I = 0x100

.field public static final NATIVE:I = 0x200

.field public static final NONE:I = 0x0

.field public static final NON_SKIPPABLE_VIDEO:I = 0x80

.field public static final REWARDED_VIDEO:I = 0x80

.field public static final SKIPPABLE_VIDEO:I = 0x2

.field static a:Z

.field public static b:Landroid/app/Activity;

.field public static c:Lcom/appodeal/ads/LoaderActivity;

.field public static d:Lcom/appodeal/ads/utils/p;

.field static e:Lcom/appodeal/ads/f;

.field private static f:Z

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appodeal/ads/Appodeal;->f:Z

    sput-boolean v0, Lcom/appodeal/ads/Appodeal;->g:Z

    sput-boolean v0, Lcom/appodeal/ads/Appodeal;->a:Z

    new-instance v0, Lcom/appodeal/ads/f;

    invoke-direct {v0}, Lcom/appodeal/ads/f;-><init>()V

    sput-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Set;Ljava/lang/String;)Lcom/appodeal/ads/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Lcom/appodeal/ads/c;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appodeal/ads/c;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/c;

    invoke-virtual {v0}, Lcom/appodeal/ads/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    invoke-static {p0}, Lcom/appodeal/ads/ah;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_2

    invoke-static {p0}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    and-int/lit8 v0, p1, 0x5c

    if-lez v0, :cond_3

    invoke-static {p0}, Lcom/appodeal/ads/g;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/h;

    invoke-virtual {v0}, Lcom/appodeal/ads/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_4

    invoke-static {p0}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/w;

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_5

    invoke-static {p0}, Lcom/appodeal/ads/Native;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ac;

    invoke-virtual {v0}, Lcom/appodeal/ads/ac;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(IZ)V
    .locals 4

    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_0

    const-string v0, "Set confirm for Video: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sput-boolean p1, Lcom/appodeal/ads/ah;->d:Z

    :cond_0
    return-void
.end method

.method private static a(Lcom/appodeal/ads/BannerView;)V
    .locals 2
    .param p0    # Lcom/appodeal/ads/BannerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set BannerView to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/appodeal/ads/g;->o:I

    sput-object p0, Lcom/appodeal/ads/g;->v:Lcom/appodeal/ads/BannerView;

    goto :goto_0
.end method

.method private static a(Lcom/appodeal/ads/MrecView;)V
    .locals 2
    .param p0    # Lcom/appodeal/ads/MrecView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set MrecView to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/appodeal/ads/v;->o:I

    sput-object p0, Lcom/appodeal/ads/v;->r:Lcom/appodeal/ads/MrecView;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->debug:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {p0, v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appodeal/ads/utils/Log;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/m;->a()Lcom/appodeal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/m;->a(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/appodeal/ads/utils/Log;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cache(Landroid/app/Activity;I)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/appodeal/ads/Appodeal;->cache(Landroid/app/Activity;II)V

    return-void
.end method

.method public static cache(Landroid/app/Activity;II)V
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v1, 0xa

    const/4 v0, 0x1

    if-nez p0, :cond_1

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to cache an ad: activity = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/Appodeal;->a()Z

    move-result v2

    if-nez v2, :cond_0

    sput-object p0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    and-int/lit8 v2, p1, 0x1

    if-lez v2, :cond_3

    sget-boolean v2, Lcom/appodeal/ads/n;->m:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/appodeal/ads/n;->a()Lcom/appodeal/ads/s;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/appodeal/ads/s;->b()Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/appodeal/ads/n;->l:Z

    if-eqz v3, :cond_c

    :cond_2
    invoke-static {p0}, Lcom/appodeal/ads/n;->b(Landroid/app/Activity;)V

    :cond_3
    :goto_1
    and-int/lit8 v2, p1, 0x2

    if-lez v2, :cond_5

    sget-boolean v2, Lcom/appodeal/ads/ah;->k:Z

    if-nez v2, :cond_5

    invoke-static {}, Lcom/appodeal/ads/ah;->a()Lcom/appodeal/ads/ar;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/appodeal/ads/ar;->b()Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/appodeal/ads/ah;->j:Z

    if-eqz v3, :cond_d

    :cond_4
    invoke-static {p0}, Lcom/appodeal/ads/ah;->b(Landroid/app/Activity;)V

    :cond_5
    :goto_2
    and-int/lit16 v2, p1, 0x80

    if-lez v2, :cond_7

    sget-boolean v2, Lcom/appodeal/ads/ak;->k:Z

    if-nez v2, :cond_7

    invoke-static {}, Lcom/appodeal/ads/ak;->a()Lcom/appodeal/ads/ar;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/appodeal/ads/ar;->b()Z

    move-result v3

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/appodeal/ads/ak;->j:Z

    if-eqz v3, :cond_e

    :cond_6
    invoke-static {p0}, Lcom/appodeal/ads/ak;->b(Landroid/app/Activity;)V

    :cond_7
    :goto_3
    and-int/lit8 v2, p1, 0x5c

    if-lez v2, :cond_9

    sget-boolean v2, Lcom/appodeal/ads/g;->l:Z

    if-nez v2, :cond_9

    invoke-static {}, Lcom/appodeal/ads/g;->a()Lcom/appodeal/ads/l;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/appodeal/ads/l;->b()Z

    move-result v3

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/appodeal/ads/g;->k:Z

    if-eqz v3, :cond_10

    :cond_8
    invoke-static {p0}, Lcom/appodeal/ads/g;->b(Landroid/app/Activity;)V

    :cond_9
    :goto_4
    and-int/lit16 v2, p1, 0x100

    if-lez v2, :cond_b

    sget-boolean v2, Lcom/appodeal/ads/v;->l:Z

    if-nez v2, :cond_b

    invoke-static {}, Lcom/appodeal/ads/v;->a()Lcom/appodeal/ads/aa;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/appodeal/ads/aa;->b()Z

    move-result v3

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/appodeal/ads/v;->k:Z

    if-eqz v3, :cond_11

    :cond_a
    invoke-static {p0}, Lcom/appodeal/ads/v;->b(Landroid/app/Activity;)V

    :cond_b
    :goto_5
    and-int/lit16 v2, p1, 0x200

    if-lez v2, :cond_0

    if-le p2, v1, :cond_13

    :goto_6
    if-ge v1, v0, :cond_12

    :goto_7
    sput v0, Lcom/appodeal/ads/Native;->m:I

    invoke-static {p0}, Lcom/appodeal/ads/Native;->b(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_c
    iget-boolean v2, v2, Lcom/appodeal/ads/s;->s:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/appodeal/ads/n;->e:Lcom/appodeal/ads/InterstitialCallbacks;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/appodeal/ads/Appodeal$2;

    invoke-direct {v2}, Lcom/appodeal/ads/Appodeal$2;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_d
    iget-boolean v2, v2, Lcom/appodeal/ads/ar;->r:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/appodeal/ads/ah;->e:Lcom/appodeal/ads/SkippableVideoCallbacks;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/appodeal/ads/Appodeal$3;

    invoke-direct {v2}, Lcom/appodeal/ads/Appodeal$3;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_e
    iget-boolean v2, v2, Lcom/appodeal/ads/ar;->r:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/appodeal/ads/ak;->d:Lcom/appodeal/ads/RewardedVideoCallbacks;

    if-eqz v2, :cond_f

    new-instance v2, Lcom/appodeal/ads/Appodeal$4;

    invoke-direct {v2}, Lcom/appodeal/ads/Appodeal$4;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_f
    sget-object v2, Lcom/appodeal/ads/ak;->e:Lcom/appodeal/ads/NonSkippableVideoCallbacks;

    if-eqz v2, :cond_7

    new-instance v2, Lcom/appodeal/ads/Appodeal$5;

    invoke-direct {v2}, Lcom/appodeal/ads/Appodeal$5;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_10
    iget-boolean v3, v2, Lcom/appodeal/ads/l;->s:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/appodeal/ads/g;->d:Lcom/appodeal/ads/BannerCallbacks;

    if-eqz v3, :cond_9

    new-instance v3, Lcom/appodeal/ads/Appodeal$6;

    invoke-direct {v3, v2}, Lcom/appodeal/ads/Appodeal$6;-><init>(Lcom/appodeal/ads/l;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_11
    iget-boolean v2, v2, Lcom/appodeal/ads/aa;->r:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/MrecCallbacks;

    if-eqz v2, :cond_b

    new-instance v2, Lcom/appodeal/ads/Appodeal$7;

    invoke-direct {v2}, Lcom/appodeal/ads/Appodeal$7;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_12
    move v0, v1

    goto :goto_7

    :cond_13
    move v1, p2

    goto :goto_6
.end method

.method public static confirm(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/appodeal/ads/Appodeal;->a(IZ)V

    return-void
.end method

.method public static disableLocationPermissionCheck()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appodeal/ads/utils/PermissionsHelper;->b:Z

    invoke-static {}, Lcom/appodeal/ads/utils/c;->a()V

    const-string v0, "disableLocationPermissionCheck"

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    return-void
.end method

.method public static disableNetwork(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x3ff

    invoke-static {p0, p1, v0}, Lcom/appodeal/ads/Appodeal;->disableNetwork(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static disableNetwork(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_1

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to disable network: context = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to disable network: name = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/Appodeal;->a()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/app/Activity;

    sput-object p0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    :cond_3
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_4

    sget-boolean v0, Lcom/appodeal/ads/n;->c:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/appodeal/ads/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    sget-object v1, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/util/Set;Ljava/lang/String;)Lcom/appodeal/ads/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, p2, 0x2

    if-lez v0, :cond_5

    sget-boolean v0, Lcom/appodeal/ads/ah;->b:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/appodeal/ads/ah;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/ah;->a:Ljava/util/Set;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/appodeal/ads/ah;->a:Ljava/util/Set;

    sget-object v1, Lcom/appodeal/ads/ah;->a:Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/util/Set;Ljava/lang/String;)Lcom/appodeal/ads/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit16 v0, p2, 0x80

    if-lez v0, :cond_6

    sget-boolean v0, Lcom/appodeal/ads/ak;->b:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/appodeal/ads/ak;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

    sget-object v1, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/util/Set;Ljava/lang/String;)Lcom/appodeal/ads/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit8 v0, p2, 0x5c

    if-lez v0, :cond_7

    sget-boolean v0, Lcom/appodeal/ads/g;->b:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/appodeal/ads/g;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/g;->a:Ljava/util/Set;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/appodeal/ads/g;->a:Ljava/util/Set;

    sget-object v1, Lcom/appodeal/ads/g;->a:Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/util/Set;Ljava/lang/String;)Lcom/appodeal/ads/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit16 v0, p2, 0x100

    if-lez v0, :cond_8

    sget-boolean v0, Lcom/appodeal/ads/v;->b:Z

    if-nez v0, :cond_8

    sget-object v0, Lcom/appodeal/ads/v;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

    sget-object v1, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/util/Set;Ljava/lang/String;)Lcom/appodeal/ads/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit16 v0, p2, 0x200

    if-lez v0, :cond_9

    sget-boolean v0, Lcom/appodeal/ads/Native;->b:Z

    if-nez v0, :cond_9

    sget-object v0, Lcom/appodeal/ads/Native;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/Native;->a:Ljava/util/Set;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/appodeal/ads/Native;->a:Ljava/util/Set;

    sget-object v1, Lcom/appodeal/ads/Native;->a:Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/util/Set;Ljava/lang/String;)Lcom/appodeal/ads/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_9
    const-string v0, "Disable %s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/appodeal/ads/an;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static disableWriteExternalStoragePermissionCheck()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appodeal/ads/utils/PermissionsHelper;->a:Z

    invoke-static {}, Lcom/appodeal/ads/utils/c;->b()V

    const-string v0, "disableWriteExternalStoragePermissionCheck"

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    return-void
.end method

.method public static getBannerView(Landroid/app/Activity;)Lcom/appodeal/ads/BannerView;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "Get BannerView"

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    new-instance v1, Lcom/appodeal/ads/utils/b/a;

    const-string v2, "Unable to getBannerView: activity = null"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/appodeal/ads/BannerView;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Lcom/appodeal/ads/BannerView;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getLogLevel()Lcom/appodeal/ads/utils/Log$LogLevel;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/utils/g;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log$LogLevel;->fromInteger(Ljava/lang/Integer;)Lcom/appodeal/ads/utils/Log$LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public static getMrecView(Landroid/app/Activity;)Lcom/appodeal/ads/MrecView;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "Get MrecView"

    sget-object v2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v1, v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    if-nez p0, :cond_0

    new-instance v1, Lcom/appodeal/ads/utils/b/a;

    const-string v2, "Unable to get MrecView: activity = null"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/appodeal/ads/MrecView;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/MrecView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Lcom/appodeal/ads/MrecView;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getNativeAdBox()Lcom/appodeal/ads/NativeAdBox;
    .locals 2

    const-string v0, "Get NativeAdBox"

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sget-object v0, Lcom/appodeal/ads/Native;->C:Lcom/appodeal/ads/NativeAdBox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/NativeAdBox;

    invoke-direct {v0}, Lcom/appodeal/ads/NativeAdBox;-><init>()V

    sput-object v0, Lcom/appodeal/ads/Native;->C:Lcom/appodeal/ads/NativeAdBox;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/Native;->C:Lcom/appodeal/ads/NativeAdBox;

    return-object v0
.end method

.method public static getUserSettings(Landroid/content/Context;)Lcom/appodeal/ads/UserSettings;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to get user settings: context = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Get user settings"

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    new-instance v0, Lcom/appodeal/ads/UserSettings;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/UserSettings;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.15.9"

    return-object v0
.end method

.method public static hide(Landroid/app/Activity;I)V
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_1

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to hide an ad: activity = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/Appodeal;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    and-int/lit8 v0, p1, 0x5c

    if-lez v0, :cond_2

    invoke-static {p0}, Lcom/appodeal/ads/g;->c(Landroid/app/Activity;)V

    :cond_2
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_3

    invoke-static {p0}, Lcom/appodeal/ads/v;->c(Landroid/app/Activity;)V

    :cond_3
    const-string v0, "Hide %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    goto :goto_0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to initialize Appodeal: activity = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to initialize Appodeal: appKey = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/Appodeal;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    sget-boolean v0, Lcom/appodeal/ads/Appodeal;->f:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/appodeal/ads/Appodeal;->g:Z

    if-nez v0, :cond_4

    sput-boolean v1, Lcom/appodeal/ads/Appodeal;->f:Z

    :try_start_0
    invoke-static {p0}, Lcom/appodeal/ads/utils/g;->a(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/appodeal/ads/an;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/appodeal/ads/an;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/appodeal/ads/utils/d;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/appodeal/ads/utils/c;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/appodeal/ads/utils/c;->e(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/appodeal/ads/utils/c;->f(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/appodeal/ads/utils/f;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/appodeal/ads/utils/a/b;->c(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/a;

    invoke-direct {v1}, Lcom/appodeal/ads/a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/a;

    invoke-direct {v1}, Lcom/appodeal/ads/a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/m;->a()Lcom/appodeal/ads/m;

    new-instance v0, Lcom/appodeal/ads/f;

    invoke-direct {v0}, Lcom/appodeal/ads/f;-><init>()V

    sput-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const-string v0, "SDK v%s initialized, appKey: %s, package name: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1.15.9"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const-string v0, "Google play services version: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/appodeal/ads/an;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/Appodeal;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v4, Lcom/appodeal/ads/Appodeal;->f:Z

    :cond_4
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_5

    invoke-static {p0}, Lcom/appodeal/ads/n;->a(Landroid/app/Activity;)V

    :cond_5
    and-int/lit16 v0, p2, 0x80

    if-lez v0, :cond_6

    invoke-static {p0}, Lcom/appodeal/ads/ak;->a(Landroid/app/Activity;)V

    :cond_6
    and-int/lit8 v0, p2, 0x2

    if-lez v0, :cond_8

    sget-boolean v0, Lcom/appodeal/ads/ah;->d:Z

    if-nez v0, :cond_7

    new-instance v0, Lcom/appodeal/ads/Appodeal$1;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/Appodeal$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    invoke-static {p0}, Lcom/appodeal/ads/ah;->a(Landroid/app/Activity;)V

    :cond_8
    and-int/lit8 v0, p2, 0x5c

    if-lez v0, :cond_9

    invoke-static {p0}, Lcom/appodeal/ads/g;->a(Landroid/app/Activity;)V

    :cond_9
    and-int/lit16 v0, p2, 0x100

    if-lez v0, :cond_a

    invoke-static {p0}, Lcom/appodeal/ads/v;->a(Landroid/app/Activity;)V

    :cond_a
    and-int/lit16 v0, p2, 0x200

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/appodeal/ads/Native;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static isLoaded(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v2, p0, 0x1

    if-lez v2, :cond_3

    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/n;->a()Lcom/appodeal/ads/s;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/appodeal/ads/s;->d()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v2, p0, 0x2

    if-lez v2, :cond_5

    invoke-static {}, Lcom/appodeal/ads/ah;->a()Lcom/appodeal/ads/ar;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/appodeal/ads/ar;->d()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    and-int/lit16 v2, p0, 0x80

    if-lez v2, :cond_7

    invoke-static {}, Lcom/appodeal/ads/ak;->a()Lcom/appodeal/ads/ar;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/appodeal/ads/ar;->d()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    and-int/lit8 v2, p0, 0x5c

    if-lez v2, :cond_9

    invoke-static {}, Lcom/appodeal/ads/g;->a()Lcom/appodeal/ads/l;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/appodeal/ads/l;->d()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    and-int/lit16 v2, p0, 0x100

    if-lez v2, :cond_b

    invoke-static {}, Lcom/appodeal/ads/v;->a()Lcom/appodeal/ads/aa;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/appodeal/ads/aa;->d()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    and-int/lit16 v2, p0, 0x200

    if-lez v2, :cond_d

    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/ag;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/appodeal/ads/ag;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :cond_c
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_d
    move v0, v1

    goto :goto_0
.end method

.method public static isPrecache(I)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sparse-switch p0, :sswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :sswitch_0
    :try_start_0
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    sget-object v3, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    invoke-virtual {v0}, Lcom/appodeal/ads/s;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    sget-object v3, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    sget-object v3, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    invoke-virtual {v0}, Lcom/appodeal/ads/l;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0x8 -> :sswitch_3
        0x10 -> :sswitch_3
        0x40 -> :sswitch_3
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch
.end method

.method public static onResume(Landroid/app/Activity;I)V
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_1

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to resume Appodeal: activity = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/Appodeal;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    and-int/lit8 v0, p1, 0x5c

    if-lez v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/g;->w:Lcom/appodeal/ads/g$d;

    sget-object v1, Lcom/appodeal/ads/g$d;->a:Lcom/appodeal/ads/g$d;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/appodeal/ads/g;->A:Lcom/appodeal/ads/f/c;

    sget-object v1, Lcom/appodeal/ads/g;->r:Lcom/appodeal/ads/g$b;

    invoke-static {p0, v0, v1}, Lcom/appodeal/ads/g;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/g$b;)Z

    :cond_2
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_3

    sget-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    sget-object v1, Lcom/appodeal/ads/v$c;->a:Lcom/appodeal/ads/v$c;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    invoke-static {p0, v0}, Lcom/appodeal/ads/v;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z

    :cond_3
    const-string v0, "onResume called for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    goto :goto_0
.end method

.method public static requestAndroidMPermissions(Landroid/app/Activity;Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to request Android M permissions: activity = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Request Android M permissions"

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    invoke-static {}, Lcom/appodeal/ads/utils/PermissionsHelper;->a()Lcom/appodeal/ads/utils/PermissionsHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appodeal/ads/utils/PermissionsHelper;->a(Landroid/app/Activity;Lcom/appodeal/ads/utils/PermissionsHelper$AppodealPermissionCallbacks;)V

    goto :goto_0
.end method

.method public static set728x90Banners(Z)V
    .locals 4

    const-string v0, "Set 728x90 Banners: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sput-boolean p0, Lcom/appodeal/ads/g;->t:Z

    return-void
.end method

.method public static setAutoCache(IZ)V
    .locals 4

    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    sput-boolean p1, Lcom/appodeal/ads/n;->m:Z

    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_1

    sput-boolean p1, Lcom/appodeal/ads/ah;->k:Z

    :cond_1
    and-int/lit16 v0, p0, 0x80

    if-lez v0, :cond_2

    sput-boolean p1, Lcom/appodeal/ads/ak;->k:Z

    :cond_2
    and-int/lit8 v0, p0, 0x5c

    if-lez v0, :cond_3

    sput-boolean p1, Lcom/appodeal/ads/g;->l:Z

    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-lez v0, :cond_4

    sput-boolean p1, Lcom/appodeal/ads/v;->l:Z

    :cond_4
    and-int/lit16 v0, p0, 0x200

    if-lez v0, :cond_5

    sput-boolean p1, Lcom/appodeal/ads/Native;->j:Z

    :cond_5
    const-string v0, "Set auto cache for %s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/appodeal/ads/an;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    return-void
.end method

.method public static setAutoCacheNativeIcons(Z)V
    .locals 4

    const-string v0, "Set auto cache NativeAd icons: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sput-boolean p0, Lcom/appodeal/ads/Native;->o:Z

    return-void
.end method

.method public static setAutoCacheNativeMedia(Z)V
    .locals 4

    const-string v0, "Set auto cache NativeAd media: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sput-boolean p0, Lcom/appodeal/ads/Native;->n:Z

    return-void
.end method

.method public static setBannerAnimation(Z)V
    .locals 4

    const-string v0, "Set Banners animation: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sput-boolean p0, Lcom/appodeal/ads/g;->G:Z

    return-void
.end method

.method public static setBannerCallbacks(Lcom/appodeal/ads/BannerCallbacks;)V
    .locals 0

    sput-object p0, Lcom/appodeal/ads/g;->d:Lcom/appodeal/ads/BannerCallbacks;

    return-void
.end method

.method public static setBannerViewId(I)V
    .locals 4

    const-string v0, "Set BannerViewId: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sput p0, Lcom/appodeal/ads/g;->o:I

    const/4 v0, 0x0

    sput-object v0, Lcom/appodeal/ads/g;->v:Lcom/appodeal/ads/BannerView;

    return-void
.end method

.method public static setCustomRule(Ljava/lang/String;D)V
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set custom rule: name = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Set custom rule name: %s, value: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/f/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setCustomRule(Ljava/lang/String;I)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set custom rule: name = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Set custom rule name: %s, value: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/f/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setCustomRule(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set custom rule: name = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set custom rule: value = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "Set custom rule name: %s, value: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    invoke-static {p0, p1}, Lcom/appodeal/ads/f/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setCustomRule(Ljava/lang/String;Z)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set custom rule: name = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Set custom rule name: %s, value: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/f/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setInterstitialCallbacks(Lcom/appodeal/ads/InterstitialCallbacks;)V
    .locals 0

    sput-object p0, Lcom/appodeal/ads/n;->e:Lcom/appodeal/ads/InterstitialCallbacks;

    return-void
.end method

.method public static setLogLevel(Lcom/appodeal/ads/utils/Log$LogLevel;)V
    .locals 4

    const-string v0, "Appodeal"

    const-string v1, "Set log level: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/appodeal/ads/AppodealSettings;->c:Lcom/appodeal/ads/utils/Log$LogLevel;

    return-void
.end method

.method public static setMrecCallbacks(Lcom/appodeal/ads/MrecCallbacks;)V
    .locals 0

    sput-object p0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/MrecCallbacks;

    return-void
.end method

.method public static setMrecViewId(I)V
    .locals 4

    const-string v0, "Set setMrecViewId: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sput p0, Lcom/appodeal/ads/v;->o:I

    const/4 v0, 0x0

    sput-object v0, Lcom/appodeal/ads/v;->r:Lcom/appodeal/ads/MrecView;

    return-void
.end method

.method public static setNativeAdType(Lcom/appodeal/ads/Native$NativeAdType;)V
    .locals 4
    .param p0    # Lcom/appodeal/ads/Native$NativeAdType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set NativeAdType to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Set NativeAd type: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/appodeal/ads/Native$NativeAdType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sput-object p0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    goto :goto_0
.end method

.method public static setNativeCallbacks(Lcom/appodeal/ads/NativeCallbacks;)V
    .locals 0

    sput-object p0, Lcom/appodeal/ads/Native;->d:Lcom/appodeal/ads/NativeCallbacks;

    return-void
.end method

.method public static setNonSkippableVideoCallbacks(Lcom/appodeal/ads/NonSkippableVideoCallbacks;)V
    .locals 0

    sput-object p0, Lcom/appodeal/ads/ak;->e:Lcom/appodeal/ads/NonSkippableVideoCallbacks;

    return-void
.end method

.method public static setOnLoadedTriggerBoth(IZ)V
    .locals 4

    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    sput-boolean p1, Lcom/appodeal/ads/n;->n:Z

    :cond_0
    and-int/lit8 v0, p0, 0x5c

    if-lez v0, :cond_1

    sput-boolean p1, Lcom/appodeal/ads/g;->m:Z

    :cond_1
    and-int/lit16 v0, p0, 0x100

    if-lez v0, :cond_2

    sput-boolean p1, Lcom/appodeal/ads/v;->m:Z

    :cond_2
    const-string v0, "Set onLoadedTriggerBoth for %s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/appodeal/ads/an;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    return-void
.end method

.method public static setRewardedVideoCallbacks(Lcom/appodeal/ads/RewardedVideoCallbacks;)V
    .locals 0

    sput-object p0, Lcom/appodeal/ads/ak;->d:Lcom/appodeal/ads/RewardedVideoCallbacks;

    return-void
.end method

.method public static setSkippableVideoCallbacks(Lcom/appodeal/ads/SkippableVideoCallbacks;)V
    .locals 0

    sput-object p0, Lcom/appodeal/ads/ah;->e:Lcom/appodeal/ads/SkippableVideoCallbacks;

    return-void
.end method

.method public static setSmartBanners(Z)V
    .locals 4

    const-string v0, "Set smart Banners: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sput-boolean p0, Lcom/appodeal/ads/g;->s:Z

    return-void
.end method

.method public static setTesting(Z)V
    .locals 4

    const-string v0, "Set testing: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    sput-boolean p0, Lcom/appodeal/ads/AppodealSettings;->a:Z

    return-void
.end method

.method public static show(Landroid/app/Activity;I)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "default"

    invoke-static {p0, p1, v0}, Lcom/appodeal/ads/Appodeal;->show(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static show(Landroid/app/Activity;ILjava/lang/String;)Z
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v2, "Unable to show an ad: activity = null"

    invoke-direct {v0, v2}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v2, "Unable to show an ad: placement = null"

    invoke-direct {v0, v2}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/Appodeal;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sput-object p0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/appodeal/ads/m;->a()Lcom/appodeal/ads/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/m;->b()V

    :try_start_0
    invoke-static {p2}, Lcom/appodeal/ads/f/d;->a(Ljava/lang/String;)Lcom/appodeal/ads/f/c;

    move-result-object v2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/g;->a()Lcom/appodeal/ads/l;

    move-result-object v3

    and-int/lit8 v4, p1, 0x5c

    if-lez v4, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/appodeal/ads/l;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v4

    if-eqz v4, :cond_5

    and-int/lit8 v4, p1, 0xc

    if-lez v4, :cond_3

    iget-wide v4, v3, Lcom/appodeal/ads/l;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    and-int/lit8 v4, p1, 0x10

    if-lez v4, :cond_4

    iget-wide v4, v3, Lcom/appodeal/ads/l;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    and-int/lit8 v4, p1, 0x40

    if-lez v4, :cond_5

    iget-wide v4, v3, Lcom/appodeal/ads/l;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lcom/appodeal/ads/v;->a()Lcom/appodeal/ads/aa;

    move-result-object v3

    and-int/lit16 v4, p1, 0x100

    if-lez v4, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/appodeal/ads/aa;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x100

    invoke-virtual {v2, v4, v3}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-wide v4, v3, Lcom/appodeal/ads/aa;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcom/appodeal/ads/n;->a()Lcom/appodeal/ads/s;

    move-result-object v3

    and-int/lit8 v4, p1, 0x1

    if-lez v4, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/appodeal/ads/s;->d()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-wide v4, v3, Lcom/appodeal/ads/s;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcom/appodeal/ads/ak;->a()Lcom/appodeal/ads/ar;

    move-result-object v3

    and-int/lit16 v4, p1, 0x80

    if-lez v4, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/appodeal/ads/ar;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x80

    invoke-virtual {v2, v4, v3}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-wide v4, v3, Lcom/appodeal/ads/ar;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lcom/appodeal/ads/ah;->a()Lcom/appodeal/ads/ar;

    move-result-object v3

    and-int/lit8 v4, p1, 0x2

    if-lez v4, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/appodeal/ads/ar;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-wide v4, v3, Lcom/appodeal/ads/ar;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_a

    invoke-static {p0, v2}, Lcom/appodeal/ads/n;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_0
    invoke-static {p0, v2}, Lcom/appodeal/ads/n;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_1
    invoke-static {p0, v2}, Lcom/appodeal/ads/ah;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_2
    invoke-static {p0, v2}, Lcom/appodeal/ads/ak;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_3
    sget-object v0, Lcom/appodeal/ads/g$b;->a:Lcom/appodeal/ads/g$b;

    invoke-static {p0, v2, v0}, Lcom/appodeal/ads/g;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/g$b;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_4
    sget-object v0, Lcom/appodeal/ads/g$b;->b:Lcom/appodeal/ads/g$b;

    invoke-static {p0, v2, v0}, Lcom/appodeal/ads/g;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/g$b;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_5
    sget-object v0, Lcom/appodeal/ads/g$b;->c:Lcom/appodeal/ads/g$b;

    invoke-static {p0, v2, v0}, Lcom/appodeal/ads/g;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/g$b;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_6
    invoke-static {p0, v2}, Lcom/appodeal/ads/v;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p0, v2}, Lcom/appodeal/ads/n;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_8
    invoke-static {p0, v2}, Lcom/appodeal/ads/ah;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_9
    invoke-static {p0, v2}, Lcom/appodeal/ads/ak;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_a
    sget-object v0, Lcom/appodeal/ads/g$b;->a:Lcom/appodeal/ads/g$b;

    invoke-static {p0, v2, v0}, Lcom/appodeal/ads/g;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/g$b;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_b
    sget-object v0, Lcom/appodeal/ads/g$b;->b:Lcom/appodeal/ads/g$b;

    invoke-static {p0, v2, v0}, Lcom/appodeal/ads/g;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/g$b;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_c
    sget-object v0, Lcom/appodeal/ads/g$b;->c:Lcom/appodeal/ads/g$b;

    invoke-static {p0, v2, v0}, Lcom/appodeal/ads/g;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/g$b;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    invoke-static {p0, v2}, Lcom/appodeal/ads/v;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_2
        0x100 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_8
        0x4 -> :sswitch_a
        0x8 -> :sswitch_a
        0x10 -> :sswitch_b
        0x40 -> :sswitch_c
        0x80 -> :sswitch_9
        0x100 -> :sswitch_d
    .end sparse-switch
.end method

.method public static trackInAppPurchase(Landroid/content/Context;DLjava/lang/String;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    if-nez p0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to track inapp purchase: context = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to track inapp purchase: currency = null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "Track inapp purchase, amount: %s, currency: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    :try_start_0
    const-string v0, "appodeal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "inapps"

    const-string v1, "{}"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    :cond_2
    add-double/2addr v0, p1

    invoke-virtual {v3, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inapps"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
