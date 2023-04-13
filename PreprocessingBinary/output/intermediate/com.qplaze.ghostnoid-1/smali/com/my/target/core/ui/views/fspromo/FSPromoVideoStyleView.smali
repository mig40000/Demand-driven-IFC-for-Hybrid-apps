.class public Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;
.super Lcom/my/target/core/ui/views/fspromo/FSPromoView;
.source "FSPromoVideoStyleView.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I


# instance fields
.field private final A:Landroid/widget/TextView;

.field private final B:Landroid/widget/FrameLayout;

.field private final C:Landroid/widget/FrameLayout;

.field private final D:Lcom/my/target/core/ui/views/VideoSeekBar;

.field private final E:Landroid/widget/TextView;

.field private final F:Landroid/widget/TextView;

.field private final G:Landroid/widget/RelativeLayout;

.field private final H:Lcom/my/target/core/ui/views/VideoProgressWheel;

.field private final I:Lcom/my/target/core/ui/views/controls/IconButton;

.field private final J:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private final K:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private final L:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private M:I

.field private final N:Ljava/lang/Runnable;

.field private O:Z

.field private final P:Landroid/view/View$OnClickListener;

.field private final Q:Landroid/view/View$OnClickListener;

.field private R:F

.field private S:Z

.field private T:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

.field private U:Z

.field private final l:Landroid/widget/Button;

.field private final m:Landroid/widget/TextView;

.field private final n:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final o:Landroid/widget/Button;

.field private final p:Landroid/widget/TextView;

.field private final q:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final r:Landroid/widget/Button;

.field private final s:Lcom/my/target/core/utils/l;

.field private final t:Landroid/widget/RelativeLayout;

.field private final u:Landroid/widget/LinearLayout;

.field private final v:Landroid/widget/LinearLayout;

.field private final w:Landroid/widget/TextView;

.field private final x:Landroid/widget/FrameLayout;

.field private final y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

.field private final z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->a:I

    .line 50
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->b:I

    .line 51
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->c:I

    .line 52
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->d:I

    .line 53
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->e:I

    .line 54
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->f:I

    .line 55
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->g:I

    .line 56
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->h:I

    .line 57
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->i:I

    .line 58
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->j:I

    .line 59
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v2, -0x1

    const/4 v8, -0x2

    .line 423
    invoke-direct {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$1;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->N:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$2;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->P:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$3;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->Q:Landroid/view/View$OnClickListener;

    .line 425
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    .line 426
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    .line 427
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:Landroid/widget/TextView;

    .line 428
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 429
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    .line 430
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Landroid/widget/TextView;

    .line 431
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 432
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    .line 433
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/FrameLayout;

    .line 434
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 435
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 436
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 437
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/TextView;

    .line 438
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/FrameLayout;

    .line 439
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/FrameLayout;

    .line 440
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Landroid/widget/TextView;

    .line 441
    new-instance v0, Lcom/my/target/core/ui/views/VideoSeekBar;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/VideoSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Lcom/my/target/core/ui/views/VideoSeekBar;

    .line 442
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/TextView;

    .line 443
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    .line 444
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    .line 445
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    new-instance v1, Lcom/my/target/core/utils/l;

    invoke-direct {v1, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;-><init>(Landroid/content/Context;Lcom/my/target/core/utils/l;Z)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    .line 446
    new-instance v0, Lcom/my/target/core/ui/views/VideoProgressWheel;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/VideoProgressWheel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Lcom/my/target/core/ui/views/VideoProgressWheel;

    .line 447
    new-instance v0, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 449
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/RelativeLayout;

    .line 450
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Landroid/widget/LinearLayout;

    .line 451
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    .line 452
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1458
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->setBackgroundColor(I)V

    .line 1460
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1462
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1463
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1464
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->h:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setId(I)V

    .line 1465
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1466
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setBackgroundColor(I)V

    .line 1467
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a()V

    .line 1469
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/FrameLayout;

    const-string v1, "vdsha"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1470
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1472
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/FrameLayout;

    const/high16 v3, -0x67000000

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1473
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1474
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1476
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1478
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1479
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1478
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1480
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1483
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 1484
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    const-string v1, "vddb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1485
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1486
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1487
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1488
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1489
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1490
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1492
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:Landroid/widget/TextView;

    const-string v1, "vdth"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1493
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1494
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1495
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1496
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1498
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Landroid/widget/TextView;

    const-string v1, "vdtv"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1499
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1500
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1501
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1502
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1503
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Landroid/widget/TextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1505
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1506
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1505
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1507
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1508
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1507
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1509
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1510
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1509
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1512
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1513
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1514
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1515
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1516
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1517
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1518
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 1519
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 1520
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1522
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    .line 1520
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1525
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1526
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1527
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1528
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1529
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 1530
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1532
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    .line 1530
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1535
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1537
    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->a:I

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1538
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1539
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1538
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1540
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1542
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1545
    const/4 v1, 0x3

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->h:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1546
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1547
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1548
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1550
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1552
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->g:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1553
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1554
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1555
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1556
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1557
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1558
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1556
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1561
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1564
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->b:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1565
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1566
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v4, 0x3

    .line 1567
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1568
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v6, 0x4

    .line 1569
    invoke-virtual {v5, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1566
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1570
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1571
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/FrameLayout;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1573
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1576
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1578
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v3, 0x49

    .line 1579
    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc

    .line 1580
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1581
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Lcom/my/target/nativeads/views/StarsRatingView;

    const-string v3, "vdrh"

    invoke-virtual {v1, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1582
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1584
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v3, 0x49

    .line 1585
    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc

    .line 1586
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1587
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Lcom/my/target/nativeads/views/StarsRatingView;

    const-string v3, "vdrv"

    invoke-virtual {v1, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1588
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1590
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/TextView;

    const-string v1, "vddoh"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1591
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1592
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1593
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1594
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1592
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1597
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Landroid/widget/TextView;

    const-string v1, "vddov"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1598
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1599
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1600
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1601
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1599
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1604
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1606
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1607
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1609
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1611
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1612
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1613
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1614
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1615
    invoke-virtual {v5, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1612
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1616
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1618
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1621
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1622
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1623
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1622
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1624
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1626
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1627
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    const-string v1, "vdrep"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1628
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->Q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1629
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1631
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1632
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1633
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1634
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1635
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1637
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1639
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1640
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1641
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1642
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1643
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1644
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1645
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1646
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1647
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1649
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1651
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1652
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1653
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1654
    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1655
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1656
    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1653
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1658
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->f:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setId(I)V

    .line 1659
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const-string v1, "vdpab"

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1660
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->Q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1661
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1663
    const/16 v0, 0xd

    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1664
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v9}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1665
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1666
    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1667
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1668
    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1665
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1670
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->e:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setId(I)V

    .line 1671
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const-string v1, "vdplb"

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1672
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->Q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1673
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1675
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1676
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v9}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1677
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1678
    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1679
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1680
    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1677
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1682
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1685
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1687
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1688
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1690
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1694
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1695
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1690
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1696
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1700
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1701
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1696
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1702
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1706
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1707
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1702
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1709
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/TextView;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1710
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/TextView;

    const-string v1, "vdela"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1711
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1713
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1714
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1715
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1716
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1717
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1718
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1719
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1720
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1721
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1719
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1724
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1725
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    const-string v1, "vdrem"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1726
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1728
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1729
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1730
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1731
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1732
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1733
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1734
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1735
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 1736
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1737
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1738
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1736
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1741
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1743
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1744
    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->i:I

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1745
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->j:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1746
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Lcom/my/target/core/ui/views/VideoSeekBar;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/VideoSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1747
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Lcom/my/target/core/ui/views/VideoSeekBar;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoSeekBar;->setHeight(I)V

    .line 1749
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1751
    sget v1, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->h:I

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1752
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->k:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1753
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1754
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1755
    invoke-virtual {v2, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1756
    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    .line 1757
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    .line 1754
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1759
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v2, 0x1c

    .line 1760
    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v3, 0x1c

    .line 1761
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1762
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1763
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1764
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1765
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Lcom/my/target/core/ui/views/VideoProgressWheel;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1766
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Lcom/my/target/core/ui/views/VideoProgressWheel;

    invoke-virtual {v0, v9}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setVisibility(I)V

    .line 1768
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->addView(Landroid/view/View;)V

    .line 1769
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->addView(Landroid/view/View;)V

    .line 1771
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1772
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1773
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Lcom/my/target/core/ui/views/VideoSeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1774
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1776
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1777
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1778
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Lcom/my/target/core/ui/views/VideoProgressWheel;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1779
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1780
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1781
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1782
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0, v0, v6}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1783
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0, v0, v7}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1784
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->addView(Landroid/view/View;)V

    .line 1786
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1787
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1788
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1789
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->B:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1790
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1792
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1793
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1794
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1795
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->C:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1796
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1798
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1799
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:I

    return v0
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l()V

    return-void
.end method

.method static synthetic c(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->N:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 30
    .line 1807
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:I

    .line 1808
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1809
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1810
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1811
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1812
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->O:Z

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->T:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    return-object v0
.end method

.method static synthetic f(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m()V

    return-void
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->d:I

    return v0
.end method

.method static synthetic j()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->f:I

    return v0
.end method

.method static synthetic k()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->e:I

    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:I

    .line 226
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 238
    const/4 v0, 0x1

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:I

    .line 239
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 243
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->O:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 285
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 287
    iget v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 291
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(I)V

    .line 366
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Z)V

    .line 353
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d()Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/my/target/core/ui/views/controls/IconButton;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Lcom/my/target/core/ui/views/controls/IconButton;

    return-object v0
.end method

.method protected final b(I)V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, -0x2

    const/4 v3, -0x1

    .line 371
    invoke-super {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b(I)V

    .line 372
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 377
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 380
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 381
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 382
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->s:Lcom/my/target/core/utils/l;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 384
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    :goto_1
    return-void

    .line 387
    :cond_0
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 394
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 397
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 399
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 403
    :goto_2
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->I:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 402
    :cond_2
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n()V

    .line 276
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->b()V

    .line 277
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n()V

    .line 333
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e()V

    .line 334
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 296
    .line 1412
    const/4 v0, 0x4

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->M:I

    .line 1413
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->U:Z

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->K:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1416
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1417
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1418
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 297
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Lcom/my/target/core/ui/views/VideoProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setVisibility(I)V

    .line 252
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->c()Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m()V

    .line 359
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->f()V

    .line 360
    return-void
.end method

.method public setBanner(Lcom/my/target/core/models/banners/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 165
    invoke-super {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setBanner(Lcom/my/target/core/models/banners/e;)V

    .line 166
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Lcom/my/target/core/models/banners/e;)V

    .line 167
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->U:Z

    .line 169
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->p()F

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->R:F

    .line 170
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->S:Z

    .line 172
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Lcom/my/target/core/ui/views/VideoProgressWheel;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->p()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setMax(F)V

    .line 179
    const-string v0, "store"

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getVotes()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getRating()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 188
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->L:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->c(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->b()V

    .line 211
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l()V

    .line 217
    :goto_1
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->O:Z

    .line 218
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->n:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->q:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->A:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->m()V

    goto :goto_1
.end method

.method public setCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-void
.end method

.method public setOnCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->o:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    return-void
.end method

.method public setOnVideoClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->T:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    .line 340
    return-void
.end method

.method public setTimeChanged(FF)V
    .locals 3

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 302
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->E:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/my/target/core/utils/l;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2212"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-float v1, p2, p1

    invoke-static {v1}, Lcom/my/target/core/utils/l;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Lcom/my/target/core/ui/views/VideoSeekBar;

    mul-float v1, p2, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoSeekBar;->setMax(I)V

    .line 306
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->D:Lcom/my/target/core/ui/views/VideoSeekBar;

    mul-float v1, p1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoSeekBar;->setProgress(I)V

    .line 308
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->S:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->R:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->R:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->r:Landroid/widget/Button;

    .line 309
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Lcom/my/target/core/ui/views/VideoProgressWheel;

    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->R:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setProgress(F)V

    .line 312
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Lcom/my/target/core/ui/views/VideoProgressWheel;

    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->R:F

    sub-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setDigit(I)V

    .line 313
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->H:Lcom/my/target/core/ui/views/VideoProgressWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setVisibility(I)V

    .line 315
    :cond_0
    return-void
.end method

.method public setVideoListener(Lcom/my/target/core/ui/views/VideoTextureView$a;)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->y:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setVideoListener(Lcom/my/target/core/ui/views/VideoTextureView$a;)V

    .line 327
    return-void
.end method
