.class public Lcom/mopub/mobileads/AdAlertGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;
    }
.end annotation


# static fields
.field private static final MAXIMUM_THRESHOLD_X_IN_DIPS:F = 100.0f

.field private static final MAXIMUM_THRESHOLD_Y_IN_DIPS:F = 100.0f

.field private static final MINIMUM_NUMBER_OF_ZIGZAGS_TO_FLAG:I = 0x4


# instance fields
.field private mAdAlertReporter:Lcom/mopub/mobileads/AdAlertReporter;

.field private final mAdReport:Lcom/mopub/common/AdReport;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentThresholdInDips:F

.field private mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

.field private mHasCrossedLeftThreshold:Z

.field private mHasCrossedRightThreshold:Z

.field private mNumberOfZigZags:I

.field private mPivotPositionX:F

.field private mPreviousPositionX:F

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/mopub/common/AdReport;)V
    .locals 3
    .param p2    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentThresholdInDips:F

    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentThresholdInDips:F

    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mAdReport:Lcom/mopub/common/AdReport;

    return-void
.end method

.method private incrementNumberOfZigZags()V
    .locals 2

    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mNumberOfZigZags:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mNumberOfZigZags:I

    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mNumberOfZigZags:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    :cond_0
    return-void
.end method

.method private isMovingLeft(F)Z
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPreviousPositionX:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMovingRight(F)Z
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPreviousPositionX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchOutOfBoundsOnYAxis(FF)Z
    .locals 2

    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leftThresholdReached(F)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    iget v3, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentThresholdInDips:F

    sub-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    iput-boolean v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertGestureListener;->incrementNumberOfZigZags()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private rightThresholdReached(F)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    iget v3, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentThresholdInDips:F

    add-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iput-boolean v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private updateInitialState(F)V
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    :cond_0
    return-void
.end method

.method private updateZag(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->leftThresholdReached(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->isMovingRight(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    :cond_0
    return-void
.end method

.method private updateZig(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->rightThresholdReached(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->isMovingLeft(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    :cond_0
    return-void
.end method


# virtual methods
.method finishGestureDetection()V
    .locals 4

    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/mopub/mobileads/AdAlertReporter;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mAdReport:Lcom/mopub/common/AdReport;

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/AdAlertReporter;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mAdAlertReporter:Lcom/mopub/mobileads/AdAlertReporter;

    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mAdAlertReporter:Lcom/mopub/mobileads/AdAlertReporter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAlertReporter;->send()V

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAlertGestureListener;->reset()V

    return-void
.end method

.method getAdAlertReporter()Lcom/mopub/mobileads/AdAlertReporter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mAdAlertReporter:Lcom/mopub/mobileads/AdAlertReporter;

    return-object v0
.end method

.method getCurrentZigZagState()Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    return-object v0
.end method

.method getMinimumDipsInZigZag()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentThresholdInDips:F

    return v0
.end method

.method getNumberOfZigzags()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mNumberOfZigZags:I

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/AdAlertGestureListener;->isTouchOutOfBoundsOnYAxis(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$1;->$SwitchMap$com$mopub$mobileads$AdAlertGestureListener$ZigZagState:[I

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPreviousPositionX:F

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->updateInitialState(F)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->updateZig(F)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->updateZag(F)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mNumberOfZigZags:I

    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    return-void
.end method
