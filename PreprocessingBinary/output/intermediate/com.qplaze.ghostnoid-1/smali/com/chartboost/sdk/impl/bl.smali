.class public final Lcom/chartboost/sdk/impl/bl;
.super Lcom/chartboost/sdk/impl/bi;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:F

.field private c:J

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Path;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bi;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bl;->a:Landroid/os/Handler;

    .line 34
    iput-object p0, p0, Lcom/chartboost/sdk/impl/bl;->j:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bl;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/chartboost/sdk/impl/bl;->b:F

    .line 73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/bl;->c:J

    .line 75
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/bl;->d:Landroid/graphics/Paint;

    .line 76
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->d:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bl;->e:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bl;->f:Landroid/graphics/Path;

    .line 87
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bl;->g:Landroid/graphics/Path;

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bl;->i:Landroid/graphics/RectF;

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bl;->h:Landroid/graphics/RectF;

    .line 91
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 98
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 99
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->h:Landroid/graphics/RectF;

    mul-float v2, v6, v0

    mul-float v3, v6, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 100
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 101
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bl;->h:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bl;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 104
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->i:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bl;->h:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 105
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->i:Landroid/graphics/RectF;

    mul-float v2, v7, v0

    mul-float/2addr v0, v7

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v5

    .line 107
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->f:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 108
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bl;->i:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 113
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->g:Landroid/graphics/Path;

    mul-float v2, v1, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    const/4 v0, 0x1

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bl;->f:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    if-eqz v0, :cond_0

    .line 131
    neg-float v0, v1

    iget v2, p0, Lcom/chartboost/sdk/impl/bl;->b:F

    add-float/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bl;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bl;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 133
    add-float/2addr v2, v0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 137
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bl;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bl;->g:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bl;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    mul-float v2, v5, v1

    add-float/2addr v0, v2

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 127
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 149
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 150
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/bl;->c:J

    sub-long/2addr v0, v2

    .line 151
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x10

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 153
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bl;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bl;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/chartboost/sdk/impl/bi;->onAttachedToWindow()V

    .line 171
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    invoke-super {p0}, Lcom/chartboost/sdk/impl/bi;->onDetachedFromWindow()V

    .line 179
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/bi;->onWindowVisibilityChanged(I)V

    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    if-nez p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 38
    iget v1, p0, Lcom/chartboost/sdk/impl/bl;->b:F

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v2, v0

    const v3, 0x3c888889

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/chartboost/sdk/impl/bl;->b:F

    .line 40
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 41
    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 43
    iget v1, p0, Lcom/chartboost/sdk/impl/bl;->b:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 44
    iget v1, p0, Lcom/chartboost/sdk/impl/bl;->b:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lcom/chartboost/sdk/impl/bl;->b:F

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
