.class Lcom/chartboost/sdk/impl/r$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/r;

.field private b:I


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/r;)V
    .locals 1

    .prologue
    .line 348
    iput-object p1, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/r$4;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 352
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bb$a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bb$a;->d()I

    move-result v0

    .line 354
    if-lez v0, :cond_0

    .line 355
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iput v0, v1, Lcom/chartboost/sdk/impl/l;->w:I

    .line 356
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget v1, v1, Lcom/chartboost/sdk/impl/l;->w:I

    int-to-float v1, v1

    .line 357
    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/l;->u()Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/l;->s()V

    .line 359
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v1, v7}, Lcom/chartboost/sdk/impl/l;->a(Z)V

    .line 362
    :cond_0
    int-to-float v1, v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/chartboost/sdk/impl/bb$a;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 363
    iget-object v2, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget-boolean v2, v2, Lcom/chartboost/sdk/impl/l;->N:Z

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/r;->f:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/n;->a(F)V

    .line 365
    :cond_1
    div-int/lit16 v0, v0, 0x3e8

    .line 367
    iget v1, p0, Lcom/chartboost/sdk/impl/r$4;->b:I

    if-eq v1, v0, :cond_2

    .line 368
    iput v0, p0, Lcom/chartboost/sdk/impl/r$4;->b:I

    .line 369
    div-int/lit8 v1, v0, 0x3c

    .line 370
    rem-int/lit8 v0, v0, 0x3c

    .line 371
    iget-object v2, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l$a;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/impl/l$a;->d(Z)Lcom/chartboost/sdk/impl/bf;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 379
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v1, v7, v0}, Lcom/chartboost/sdk/impl/l;->a(ZLandroid/view/View;)V

    .line 380
    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 384
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Landroid/os/Handler;

    .line 385
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/r;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r$4;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/r;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 387
    return-void
.end method
