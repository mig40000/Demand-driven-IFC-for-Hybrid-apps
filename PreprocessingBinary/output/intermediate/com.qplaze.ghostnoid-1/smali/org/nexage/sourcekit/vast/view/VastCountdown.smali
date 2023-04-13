.class public Lorg/nexage/sourcekit/vast/view/VastCountdown;
.super Landroid/view/View;


# instance fields
.field private arcLoadingBackgroundColor:I

.field private arcLoadingColor:I

.field private arcLoadingStartAngle:F

.field private arcLoadingStrokeWidth:F

.field private circleCenterPointX:F

.field private circleCenterPointY:F

.field private finish:Z

.field private paddingInContainer:I

.field paint:Landroid/graphics/Paint;

.field private percent:I

.field private remainingTime:I

.field private textColor:I

.field private textSize:F

.field public uiThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->uiThread:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->initializeAttributes()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->uiThread:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->initializeAttributes()V

    return-void
.end method

.method private drawArcLoading(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->arcLoadingColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->arcLoadingStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->paddingInContainer:I

    int-to-float v0, v0

    iget v2, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->paddingInContainer:I

    int-to-float v2, v2

    iget v3, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->circleCenterPointX:F

    mul-float/2addr v3, v6

    iget v5, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->paddingInContainer:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget v5, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->circleCenterPointX:F

    mul-float/2addr v5, v6

    iget v6, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->paddingInContainer:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v1, v0, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->percent:I

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const v2, 0x3c23d70a    # 0.01f

    mul-float v3, v0, v2

    iget v2, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->arcLoadingStartAngle:F

    move-object v0, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->arcLoadingBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPercents(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->finish:Z

    if-eqz v0, :cond_0

    const-string v0, "\u00d7"

    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget v2, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->textSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->remainingTime:I

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->remainingTime:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeAttributes()V
    .locals 1

    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->circleCenterPointX:F

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->circleCenterPointY:F

    const-string v0, "#6b000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->arcLoadingBackgroundColor:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->arcLoadingColor:I

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->arcLoadingStrokeWidth:F

    const/16 v0, 0x64

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->percent:I

    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->arcLoadingStartAngle:F

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->textColor:I

    return-void
.end method


# virtual methods
.method public changePercentage(II)V
    .locals 2

    iput p1, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->percent:I

    iput p2, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->remainingTime:I

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->finish:Z

    :cond_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->uiThread:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/vast/view/VastCountdown$1;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/view/VastCountdown$1;-><init>(Lorg/nexage/sourcekit/vast/view/VastCountdown;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->drawArcLoading(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->drawPercents(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->circleCenterPointX:F

    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->circleCenterPointY:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->paddingInContainer:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown;->textSize:F

    return-void
.end method
