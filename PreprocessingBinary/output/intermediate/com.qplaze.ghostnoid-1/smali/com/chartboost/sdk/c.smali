.class public Lcom/chartboost/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/c$2;,
        Lcom/chartboost/sdk/c$b;,
        Lcom/chartboost/sdk/c$a;
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/ak;

.field final b:Lcom/chartboost/sdk/h;

.field final c:Lcom/chartboost/sdk/Tracking/a;

.field public final d:Lcom/chartboost/sdk/Model/a$d;

.field private final e:Lcom/chartboost/sdk/impl/al;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/impl/al;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/chartboost/sdk/c$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/c$1;-><init>(Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/a$d;

    .line 42
    iput-object p1, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/impl/ak;

    .line 43
    iput-object p2, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/h;

    .line 44
    iput-object p3, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/Tracking/a;

    .line 45
    iput-object p4, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/impl/al;

    .line 46
    return-void
.end method

.method static declared-synchronized a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/Tracking/a;)V
    .locals 11

    .prologue
    const/high16 v10, 0x447a0000    # 1000.0f

    .line 275
    const-class v1, Lcom/chartboost/sdk/c;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/chartboost/sdk/impl/aj;

    const-string v0, "/api/video-complete"

    invoke-direct {v2, v0, p1}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 276
    const-string v0, "location"

    iget-object v3, p0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    const-string v0, "reward"

    iget v3, p0, Lcom/chartboost/sdk/Model/a;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    const-string v0, "currency-name"

    iget-object v3, p0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string v0, "ad_id"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    const-string v0, "force_close"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    const/4 v0, 0x0

    .line 283
    iget-object v3, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v4, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->l()Lcom/chartboost/sdk/f$a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->x()Lcom/chartboost/sdk/f;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/l;

    .line 288
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->k()F

    move-result v3

    .line 290
    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->j()F

    move-result v0

    .line 291
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "TotalDuration: %f PlaybackTime: %f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    const-string v4, "total_time"

    div-float v5, v0, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_3

    .line 295
    const-string v3, "playback_time"

    div-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/aj;->j()V

    .line 300
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit v1

    return-void

    .line 285
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v4, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->l()Lcom/chartboost/sdk/f$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->x()Lcom/chartboost/sdk/f;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bo;

    goto :goto_0

    .line 297
    :cond_3
    const-string v0, "playback_time"

    div-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/al$a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/al;->a()Lcom/chartboost/sdk/impl/al$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$a;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/impl/al;

    iget-object v1, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/h;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/chartboost/sdk/impl/al;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$a;)V

    .line 69
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a;)Z
    .locals 4

    .prologue
    .line 332
    .line 333
    if-eqz p2, :cond_0

    .line 334
    sget-object v0, Lcom/chartboost/sdk/c$2;->a:[I

    iget-object v1, p2, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 363
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 336
    :pswitch_0
    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/a;->q:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/h;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 344
    :pswitch_2
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 348
    const/4 v0, 0x0

    goto :goto_1

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_0

    .line 353
    const-string v1, "CBImpressionDelegationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error onActivityStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/a$e;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 266
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    .line 267
    if-nez v1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    .line 269
    :cond_0
    iput-boolean v0, v1, Lcom/chartboost/sdk/Model/a;->y:Z

    .line 270
    iget-object v2, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/a$d;

    invoke-interface {v2, v1}, Lcom/chartboost/sdk/Model/a$d;->b(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected c()Lcom/chartboost/sdk/Model/a;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 308
    iget-object v1, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 309
    if-nez v1, :cond_1

    move-object v1, v0

    .line 311
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bk;->i()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bk;->g()Z

    move-result v2

    if-nez v2, :cond_2

    .line 314
    :cond_0
    :goto_1
    return-object v0

    .line 309
    :cond_1
    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->d()Lcom/chartboost/sdk/impl/bk;

    move-result-object v1

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bk;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    goto :goto_1
.end method

.method public d()Lcom/chartboost/sdk/impl/aj;
    .locals 3

    .prologue
    .line 323
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/api/click"

    iget-object v2, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    return-object v0
.end method
