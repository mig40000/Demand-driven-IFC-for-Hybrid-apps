.class public Lcom/chartboost/sdk/impl/z;
.super Lcom/chartboost/sdk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/z$1;,
        Lcom/chartboost/sdk/impl/z$b;,
        Lcom/chartboost/sdk/impl/z$a;
    }
.end annotation


# instance fields
.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field final l:Lcom/chartboost/sdk/Libraries/i;

.field final m:Lcom/chartboost/sdk/Libraries/i;

.field final n:Lcom/chartboost/sdk/Libraries/i;

.field final o:Lcom/chartboost/sdk/Libraries/i;

.field final p:Lcom/chartboost/sdk/Libraries/i;

.field final q:Lcom/chartboost/sdk/Libraries/i;

.field final r:Lcom/chartboost/sdk/Libraries/i;

.field protected final s:Lcom/chartboost/sdk/Libraries/i;

.field protected final t:Lcom/chartboost/sdk/Libraries/i;

.field u:I

.field v:Ljava/lang/Integer;

.field w:I

.field x:I

.field y:Ljava/lang/String;

.field private z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/chartboost/sdk/Libraries/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/f;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->k:Ljava/util/List;

    .line 347
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->r:Lcom/chartboost/sdk/Libraries/i;

    .line 348
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->p:Lcom/chartboost/sdk/Libraries/i;

    .line 349
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->o:Lcom/chartboost/sdk/Libraries/i;

    .line 350
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->q:Lcom/chartboost/sdk/Libraries/i;

    .line 351
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->l:Lcom/chartboost/sdk/Libraries/i;

    .line 352
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->n:Lcom/chartboost/sdk/Libraries/i;

    .line 353
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->m:Lcom/chartboost/sdk/Libraries/i;

    .line 354
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->t:Lcom/chartboost/sdk/Libraries/i;

    .line 355
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->s:Lcom/chartboost/sdk/Libraries/i;

    .line 356
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 431
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    .line 434
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z;->z:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 365
    invoke-super {p0, p1}, Lcom/chartboost/sdk/f;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    :goto_0
    return v0

    .line 367
    :cond_0
    const-string v1, "cells"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 368
    if-nez v1, :cond_1

    .line 369
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 374
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/z;->z:Ljava/util/Set;

    .line 377
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 378
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 379
    if-nez v2, :cond_3

    .line 377
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    :cond_3
    iget-object v3, p0, Lcom/chartboost/sdk/impl/z;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    const-string v4, "regular"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 386
    const-string v3, "assets"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 387
    if-eqz v2, :cond_2

    .line 388
    const-string v3, "icon"

    invoke-direct {p0, v2, v3}, Lcom/chartboost/sdk/impl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    .line 390
    :cond_4
    const-string v4, "featured"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 391
    const-string v3, "assets"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_2

    .line 393
    const-string v3, "portrait"

    invoke-direct {p0, v2, v3}, Lcom/chartboost/sdk/impl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 394
    const-string v3, "landscape"

    invoke-direct {p0, v2, v3}, Lcom/chartboost/sdk/impl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    .line 397
    :cond_5
    const-string v2, "webview"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 402
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->l:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->n:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "close-landscape"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->m:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "close-portrait"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->r:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "header-center"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->o:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "header-portrait"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->p:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "header-landscape"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->q:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "header-tile"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->t:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "play-button"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->s:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "install-button"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->e:Lorg/json/JSONObject;

    const-string v1, "header-height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->e:Lorg/json/JSONObject;

    const-string v1, "header-height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->v:Ljava/lang/Integer;

    .line 413
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 414
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/z;->u:I

    .line 420
    :goto_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->e:Lorg/json/JSONObject;

    const-string v1, "background-color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->e:Lorg/json/JSONObject;

    const-string v1, "background-color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/z;->a(Ljava/lang/String;)I

    move-result v0

    :goto_5
    iput v0, p0, Lcom/chartboost/sdk/impl/z;->w:I

    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->e:Lorg/json/JSONObject;

    const-string v1, "header-text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->e:Lorg/json/JSONObject;

    const-string v1, "header-text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->y:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->e:Lorg/json/JSONObject;

    const-string v1, "text-color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->e:Lorg/json/JSONObject;

    const-string v1, "text-color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/z;->a(Ljava/lang/String;)I

    move-result v0

    :goto_7
    iput v0, p0, Lcom/chartboost/sdk/impl/z;->x:I

    .line 427
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 412
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 416
    :cond_8
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/z;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x50

    :goto_8
    iput v0, p0, Lcom/chartboost/sdk/impl/z;->u:I

    goto :goto_4

    :cond_9
    const/16 v0, 0x28

    goto :goto_8

    .line 420
    :cond_a
    const v0, -0xde5819

    goto :goto_5

    .line 422
    :cond_b
    const-string v0, "More Free Games"

    goto :goto_6

    .line 424
    :cond_c
    const/4 v0, -0x1

    goto :goto_7
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/chartboost/sdk/impl/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/z$a;-><init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;Lcom/chartboost/sdk/impl/z$1;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 440
    invoke-super {p0}, Lcom/chartboost/sdk/f;->d()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->k:Ljava/util/List;

    .line 442
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->z:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/i;

    .line 443
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->z:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 446
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->l:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 447
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->n:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 448
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->m:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 449
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->r:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 450
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->q:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 451
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->o:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 452
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->p:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 453
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->t:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 454
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->s:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 455
    return-void
.end method
