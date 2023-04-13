.class public Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;
.super Landroid/view/View;


# instance fields
.field private lineColor:I

.field private lineLength:F

.field private lineWidth:F

.field paint:Landroid/graphics/Paint;

.field private percent:F

.field public uiThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->uiThread:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->initializeAttributes()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->uiThread:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->initializeAttributes()V

    return-void
.end method

.method private drawLineLoading(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->lineLength:F

    iget v2, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->percent:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v3, v0, v2

    move-object v0, p2

    move v2, v1

    move v4, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initializeAttributes()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->lineColor:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->lineWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->percent:F

    return-void
.end method


# virtual methods
.method public changePercentage(F)V
    .locals 2

    iput p1, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->percent:F

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->uiThread:Landroid/os/Handler;

    new-instance v1, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown$1;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown$1;-><init>(Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->lineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1}, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->drawLineLoading(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float v0, p1

    iput v0, p0, Lorg/nexage/sourcekit/vast/view/VastLinearCountdown;->lineLength:F

    return-void
.end method
