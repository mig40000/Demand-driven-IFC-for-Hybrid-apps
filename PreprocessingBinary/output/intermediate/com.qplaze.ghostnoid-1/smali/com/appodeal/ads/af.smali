.class public abstract Lcom/appodeal/ads/af;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appodeal/ads/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appodeal/ads/af;->b:I

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/af;)I
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/af;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/appodeal/ads/af;->b:I

    return v0
.end method

.method private a(Lcom/appodeal/ads/NativeAd;IILcom/appodeal/ads/ac;)V
    .locals 9

    move-object v1, p1

    check-cast v1, Lcom/appodeal/ads/ab;

    invoke-interface {p1}, Lcom/appodeal/ads/NativeAd;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/appodeal/ads/NativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/appodeal/ads/ab;->containsVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    sget-object v2, Lcom/appodeal/ads/Native;->z:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v0, Lcom/appodeal/ads/Native;->z:Ljava/lang/String;

    iput-object v0, v1, Lcom/appodeal/ads/ab;->e:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/Native;->z:Ljava/lang/String;

    move-object v6, v0

    :goto_0
    invoke-virtual {v1}, Lcom/appodeal/ads/ab;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/appodeal/ads/ab;->h()Ljava/lang/String;

    move-result-object v8

    sget-boolean v0, Lcom/appodeal/ads/Native;->o:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/appodeal/ads/af;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/af;->b:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;Ljava/lang/String;)V

    :cond_1
    sget-boolean v0, Lcom/appodeal/ads/Native;->n:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v2, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    if-eq v0, v2, :cond_3

    :cond_2
    iget v0, p0, Lcom/appodeal/ads/af;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/af;->b:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/af;->b(Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v2, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne v0, v2, :cond_3

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/appodeal/ads/af;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/af;->b:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/af;->c(Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/appodeal/ads/af;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/af;->b:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/af;->d(Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v6, v0

    goto :goto_0
.end method

.method private a(Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;Ljava/lang/String;)V
    .locals 7

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v6, Lcom/appodeal/ads/utils/j;

    new-instance v0, Lcom/appodeal/ads/af$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/af$1;-><init>(Lcom/appodeal/ads/af;Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;)V

    const/4 v1, 0x0

    invoke-direct {v6, v0, p5, v1}, Lcom/appodeal/ads/utils/j;-><init>(Lcom/appodeal/ads/utils/j$a;Ljava/lang/String;Z)V

    invoke-direct {p0, v6}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/utils/j;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/af;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/af;->b:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/appodeal/ads/af;IILcom/appodeal/ads/ac;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/af;->b(IILcom/appodeal/ads/ac;)V

    return-void
.end method

.method private a(Lcom/appodeal/ads/utils/j;)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Lcom/appodeal/ads/utils/j$a;

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/utils/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v0, v2, [Lcom/appodeal/ads/utils/j$a;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/utils/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Lcom/appodeal/ads/utils/k;)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Lcom/appodeal/ads/utils/k$a;

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/utils/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v0, v2, [Lcom/appodeal/ads/utils/k$a;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/utils/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Lcom/appodeal/ads/utils/l;)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Lcom/appodeal/ads/utils/l$a;

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/utils/l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v0, v2, [Lcom/appodeal/ads/utils/l$a;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/utils/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private b(IILcom/appodeal/ads/ac;)V
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/af;->b:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/af;->a(IILcom/appodeal/ads/ac;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;Ljava/lang/String;)V
    .locals 7

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v6, Lcom/appodeal/ads/utils/j;

    new-instance v0, Lcom/appodeal/ads/af$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/af$2;-><init>(Lcom/appodeal/ads/af;Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;)V

    const/4 v1, 0x1

    invoke-direct {v6, v0, p5, v1}, Lcom/appodeal/ads/utils/j;-><init>(Lcom/appodeal/ads/utils/j$a;Ljava/lang/String;Z)V

    invoke-direct {p0, v6}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/utils/j;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/af;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/af;->b:I

    goto :goto_0
.end method

.method private c(Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;Ljava/lang/String;)V
    .locals 8

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v6, Lcom/appodeal/ads/utils/k;

    sget-object v7, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v0, Lcom/appodeal/ads/af$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/af$3;-><init>(Lcom/appodeal/ads/af;Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;)V

    invoke-direct {v6, v7, v0, p5}, Lcom/appodeal/ads/utils/k;-><init>(Landroid/content/Context;Lcom/appodeal/ads/utils/k$a;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/utils/k;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/af;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/af;->b:I

    goto :goto_0
.end method

.method private d(Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;Ljava/lang/String;)V
    .locals 8

    new-instance v6, Lcom/appodeal/ads/utils/l;

    sget-object v7, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v0, Lcom/appodeal/ads/af$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/af$4;-><init>(Lcom/appodeal/ads/af;Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;)V

    invoke-direct {v6, v7, v0, p5}, Lcom/appodeal/ads/utils/l;-><init>(Landroid/content/Context;Lcom/appodeal/ads/utils/l$a;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/utils/l;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appodeal/ads/NativeAd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/af;->a:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized a(IILcom/appodeal/ads/ac;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/af;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/NativeAd;

    invoke-static {v1}, Lcom/appodeal/ads/ac;->a(Lcom/appodeal/ads/NativeAd;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/appodeal/ads/ab;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/appodeal/ads/ab;->c()V

    check-cast v1, Lcom/appodeal/ads/ab;

    invoke-virtual {v1}, Lcom/appodeal/ads/ab;->l()V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/appodeal/ads/af;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/appodeal/ads/af;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, p2, p3, v1}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    invoke-static {p1, p2, p3}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected a(IILcom/appodeal/ads/ac;I)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/NativeAd;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/NativeAd;IILcom/appodeal/ads/ac;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/af;->b(IILcom/appodeal/ads/ac;)V

    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method public abstract a(Landroid/app/Activity;III)V
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
