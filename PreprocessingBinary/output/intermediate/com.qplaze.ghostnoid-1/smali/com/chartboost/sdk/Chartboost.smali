.class public Lcom/chartboost/sdk/Chartboost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Chartboost$CBMediation;,
        Lcom/chartboost/sdk/Chartboost$CBFramework;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheInterstitial(Ljava/lang/String;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/impl/h;

    .line 422
    new-instance v2, Lcom/chartboost/sdk/Chartboost$17;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/sdk/Chartboost$17;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/h;)V

    .line 438
    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 439
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->w:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->g:Z

    if-eqz v0, :cond_4

    .line 441
    :cond_3
    invoke-static {v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 443
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public static cacheMoreApps(Ljava/lang/String;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, v0, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/y;

    .line 521
    new-instance v2, Lcom/chartboost/sdk/Chartboost$19;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/sdk/Chartboost$19;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/y;)V

    .line 537
    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 538
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->z:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->i:Z

    if-eqz v0, :cond_4

    .line 540
    :cond_3
    invoke-static {v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 542
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public static cacheRewardedVideo(Ljava/lang/String;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/i;

    .line 334
    new-instance v2, Lcom/chartboost/sdk/Chartboost$12;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/sdk/Chartboost$12;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/i;)V

    .line 350
    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 351
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->B:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->k:Z

    if-eqz v0, :cond_4

    .line 353
    :cond_3
    invoke-static {v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 355
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public static closeImpression()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    return-void
.end method

.method private static forwardTouchEventsAIR(Z)V
    .locals 2
    .param p0, "forward"    # Z

    .prologue
    .line 989
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 990
    if-nez v0, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 993
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/Chartboost$15;

    invoke-direct {v1, v0, p0}, Lcom/chartboost/sdk/Chartboost$15;-><init>(Lcom/chartboost/sdk/h;Z)V

    invoke-static {v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getAutoCacheAds()Z
    .locals 1

    .prologue
    .line 771
    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    return v0
.end method

.method public static getCustomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    const-string v0, ""

    .line 707
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDelegate()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    return-object v0
.end method

.method public static getLoggingLevel()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .locals 1

    .prologue
    .line 743
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    .line 744
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    const-string v0, "6.6.1"

    return-object v0
.end method

.method public static hasInterstitial(Ljava/lang/String;)Z
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    :cond_0
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/impl/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/h;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasMoreApps(Ljava/lang/String;)Z
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    :cond_0
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/y;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/y;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    :cond_0
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/i;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/i;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isAnyViewVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 591
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 592
    if-nez v1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v0

    .line 595
    :cond_1
    invoke-virtual {v1}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 596
    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public static isWebViewEnabled()Z
    .locals 1

    .prologue
    .line 875
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onBackPressed()Z
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 292
    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 227
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 228
    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/h;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 302
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 303
    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/h;->h(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 266
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 267
    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/h;->f(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 253
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 254
    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/h;->e(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 240
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 241
    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/h;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 279
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 280
    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/h;->g(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static setActivityCallbacks(Z)V
    .locals 4
    .param p0, "enabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 881
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 882
    if-nez v0, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->j()Landroid/app/Activity;

    move-result-object v1

    .line 886
    if-eqz v1, :cond_0

    .line 887
    iget-object v2, v0, Lcom/chartboost/sdk/h;->n:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 889
    if-eqz v2, :cond_0

    .line 890
    iget-boolean v3, v0, Lcom/chartboost/sdk/h;->m:Z

    if-nez v3, :cond_2

    if-eqz p0, :cond_2

    .line 891
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 892
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/h;->m:Z

    goto :goto_0

    .line 893
    :cond_2
    iget-boolean v3, v0, Lcom/chartboost/sdk/h;->m:Z

    if-eqz v3, :cond_0

    if-nez p0, :cond_0

    .line 894
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 895
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/h;->m:Z

    goto :goto_0
.end method

.method public static setAutoCacheAds(Z)V
    .locals 1
    .param p0, "autoCacheAds"    # Z

    .prologue
    .line 781
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 782
    if-eqz v0, :cond_0

    .line 783
    new-instance v0, Lcom/chartboost/sdk/Chartboost$7;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$7;-><init>(Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 790
    :cond_0
    return-void
.end method

.method public static setChartboostWrapperVersion(Ljava/lang/String;)V
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 685
    new-instance v0, Lcom/chartboost/sdk/Chartboost$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 695
    return-void
.end method

.method public static setCustomId(Ljava/lang/String;)V
    .locals 1
    .param p0, "customID"    # Ljava/lang/String;

    .prologue
    .line 716
    new-instance v0, Lcom/chartboost/sdk/Chartboost$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 722
    return-void
.end method

.method public static setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V
    .locals 1
    .param p0, "delegate"    # Lcom/chartboost/sdk/ChartboostDelegate;

    .prologue
    .line 757
    new-instance v0, Lcom/chartboost/sdk/Chartboost$6;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$6;-><init>(Lcom/chartboost/sdk/ChartboostDelegate;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 763
    return-void
.end method

.method public static setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V
    .locals 1
    .param p0, "framework"    # Lcom/chartboost/sdk/Chartboost$CBFramework;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 636
    new-instance v0, Lcom/chartboost/sdk/Chartboost$22;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Chartboost$22;-><init>(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 653
    return-void
.end method

.method public static setFrameworkVersion(Ljava/lang/String;)V
    .locals 1
    .param p0, "version"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 665
    new-instance v0, Lcom/chartboost/sdk/Chartboost$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 675
    return-void
.end method

.method public static setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 1
    .param p0, "lvl"    # Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .prologue
    .line 729
    new-instance v0, Lcom/chartboost/sdk/Chartboost$5;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$5;-><init>(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 737
    return-void
.end method

.method public static setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V
    .locals 1
    .param p0, "mediation"    # Lcom/chartboost/sdk/Chartboost$CBMediation;
    .param p1, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 611
    new-instance v0, Lcom/chartboost/sdk/Chartboost$21;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Chartboost$21;-><init>(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public static setShouldDisplayLoadingViewForMoreApps(Z)V
    .locals 1
    .param p0, "shouldDisplay"    # Z

    .prologue
    .line 818
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    new-instance v0, Lcom/chartboost/sdk/Chartboost$9;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$9;-><init>(Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 827
    :cond_0
    return-void
.end method

.method public static setShouldHideSystemUI(Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "hide"    # Ljava/lang/Boolean;

    .prologue
    .line 871
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/chartboost/sdk/i;->g:Z

    .line 872
    return-void
.end method

.method public static setShouldPrefetchVideoContent(Z)V
    .locals 2
    .param p0, "shouldPrefetch"    # Z

    .prologue
    .line 835
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 836
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget-object v0, v0, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/e;

    .line 839
    new-instance v1, Lcom/chartboost/sdk/Chartboost$10;

    invoke-direct {v1, p0, v0}, Lcom/chartboost/sdk/Chartboost$10;-><init>(ZLcom/chartboost/sdk/impl/e;)V

    invoke-static {v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setShouldRequestInterstitialsInFirstSession(Z)V
    .locals 1
    .param p0, "shouldRequest"    # Z

    .prologue
    .line 800
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    new-instance v0, Lcom/chartboost/sdk/Chartboost$8;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$8;-><init>(Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 808
    :cond_0
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/impl/h;

    .line 462
    new-instance v2, Lcom/chartboost/sdk/Chartboost$18;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/sdk/Chartboost$18;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/h;)V

    .line 478
    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 479
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->w:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->g:Z

    if-eqz v0, :cond_4

    .line 481
    :cond_3
    invoke-static {v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 483
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method private static showInterstitialAIR(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 905
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 906
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/impl/h;

    .line 912
    new-instance v2, Lcom/chartboost/sdk/Chartboost$11;

    invoke-direct {v2, v1, p0, p1}, Lcom/chartboost/sdk/Chartboost$11;-><init>(Lcom/chartboost/sdk/impl/h;Ljava/lang/String;Z)V

    .line 922
    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 923
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->w:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->g:Z

    if-eqz v0, :cond_4

    .line 925
    :cond_3
    invoke-static {v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 927
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public static showMoreApps(Ljava/lang/String;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 552
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, v0, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/y;

    .line 559
    new-instance v2, Lcom/chartboost/sdk/Chartboost$20;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/sdk/Chartboost$20;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/y;)V

    .line 575
    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 576
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->z:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->i:Z

    if-eqz v0, :cond_4

    .line 578
    :cond_3
    invoke-static {v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 580
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method private static showMoreAppsAIR(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 933
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 934
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    iget-object v1, v0, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/y;

    .line 940
    new-instance v2, Lcom/chartboost/sdk/Chartboost$13;

    invoke-direct {v2, v1, p0, p1}, Lcom/chartboost/sdk/Chartboost$13;-><init>(Lcom/chartboost/sdk/impl/y;Ljava/lang/String;Z)V

    .line 950
    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 951
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->z:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->i:Z

    if-eqz v0, :cond_4

    .line 953
    :cond_3
    invoke-static {v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 955
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/i;

    .line 372
    new-instance v2, Lcom/chartboost/sdk/Chartboost$16;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/sdk/Chartboost$16;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/i;)V

    .line 388
    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 389
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->B:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->k:Z

    if-eqz v0, :cond_4

    .line 391
    :cond_3
    invoke-static {v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 393
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method private static showRewardedVideoAIR(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 961
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 962
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/i;

    .line 968
    new-instance v2, Lcom/chartboost/sdk/Chartboost$14;

    invoke-direct {v2, v1, p0, p1}, Lcom/chartboost/sdk/Chartboost$14;-><init>(Lcom/chartboost/sdk/impl/i;Ljava/lang/String;Z)V

    .line 978
    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 979
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->B:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->k:Z

    if-eqz v0, :cond_4

    .line 981
    :cond_3
    invoke-static {v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 983
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public static startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lcom/chartboost/sdk/Chartboost$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/Chartboost$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method
