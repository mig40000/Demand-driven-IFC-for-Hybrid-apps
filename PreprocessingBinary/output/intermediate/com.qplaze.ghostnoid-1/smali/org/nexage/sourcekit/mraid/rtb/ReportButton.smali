.class public Lorg/nexage/sourcekit/mraid/rtb/ReportButton;
.super Landroid/view/View;


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private crossPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->init()V

    return-void
.end method


# virtual methods
.method init()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->bgPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->bgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->crossPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->crossPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->crossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->getHeight()I

    move-result v7

    if-le v0, v7, :cond_0

    move v6, v7

    :goto_0
    const/4 v1, 0x0

    sub-int v0, v7, v6

    int-to-float v2, v0

    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    div-int/lit8 v0, v6, 0x4

    int-to-float v1, v0

    mul-int/lit8 v0, v6, 0x3

    div-int/lit8 v0, v0, 0x4

    sub-int v0, v7, v0

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v3, v0

    div-int/lit8 v0, v6, 0x4

    sub-int v0, v7, v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->crossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    div-int/lit8 v0, v6, 0x4

    int-to-float v1, v0

    div-int/lit8 v0, v6, 0x4

    sub-int v0, v7, v0

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v3, v0

    mul-int/lit8 v0, v6, 0x3

    div-int/lit8 v0, v0, 0x4

    sub-int v0, v7, v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/nexage/sourcekit/mraid/rtb/ReportButton;->crossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    move v6, v0

    goto :goto_0
.end method
