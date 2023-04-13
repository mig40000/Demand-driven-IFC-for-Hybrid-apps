.class public Lcom/my/target/core/ui/views/VideoDialogView;
.super Landroid/widget/RelativeLayout;
.source "VideoDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# instance fields
.field private final A:Landroid/widget/FrameLayout;

.field private final B:Landroid/widget/FrameLayout;

.field private final C:Lcom/my/target/core/ui/views/VideoSeekBar;

.field private final D:Landroid/widget/TextView;

.field private final E:Landroid/widget/TextView;

.field private final F:Landroid/widget/RelativeLayout;

.field private final G:Lcom/my/target/core/ui/views/controls/IconButton;

.field private final H:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private final I:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private final J:Lcom/my/target/core/ui/views/FramedCacheImageView;

.field private K:I

.field private L:I

.field private final M:Ljava/lang/Runnable;

.field private N:Lcom/my/target/core/ui/b$a;

.field private O:Z

.field private final P:Landroid/view/View$OnClickListener;

.field private final k:Landroid/widget/Button;

.field private final l:Landroid/widget/TextView;

.field private final m:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final n:Landroid/widget/Button;

.field private final o:Landroid/widget/TextView;

.field private final p:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final q:Landroid/widget/Button;

.field private final r:Lcom/my/target/core/utils/l;

.field private final s:Landroid/widget/RelativeLayout;

.field private final t:Landroid/widget/LinearLayout;

.field private final u:Landroid/widget/LinearLayout;

.field private final v:Landroid/widget/TextView;

.field private final w:Landroid/widget/FrameLayout;

.field private final x:Lcom/my/target/nativeads/views/MediaAdView;

.field private final y:Landroid/widget/TextView;

.field private final z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/VideoDialogView;->a:I

    .line 50
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/VideoDialogView;->b:I

    .line 51
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/VideoDialogView;->c:I

    .line 52
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/VideoDialogView;->d:I

    .line 53
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/VideoDialogView;->e:I

    .line 54
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/VideoDialogView;->f:I

    .line 55
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/VideoDialogView;->g:I

    .line 56
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/VideoDialogView;->h:I

    .line 57
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/VideoDialogView;->i:I

    .line 58
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/VideoDialogView;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v2, -0x1

    const/4 v8, -0x2

    .line 221
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Lcom/my/target/core/ui/views/VideoDialogView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoDialogView$1;-><init>(Lcom/my/target/core/ui/views/VideoDialogView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->M:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcom/my/target/core/ui/views/VideoDialogView$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoDialogView$2;-><init>(Lcom/my/target/core/ui/views/VideoDialogView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->P:Landroid/view/View$OnClickListener;

    .line 222
    invoke-static {p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getMediaAdView(Landroid/content/Context;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    .line 224
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    .line 225
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->k:Landroid/widget/Button;

    .line 226
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->l:Landroid/widget/TextView;

    .line 227
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 228
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->n:Landroid/widget/Button;

    .line 229
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->o:Landroid/widget/TextView;

    .line 230
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 231
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->v:Landroid/widget/TextView;

    .line 232
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    .line 233
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 234
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 235
    new-instance v0, Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/FramedCacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    .line 236
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->y:Landroid/widget/TextView;

    .line 237
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->A:Landroid/widget/FrameLayout;

    .line 238
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->B:Landroid/widget/FrameLayout;

    .line 239
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->z:Landroid/widget/TextView;

    .line 240
    new-instance v0, Lcom/my/target/core/ui/views/VideoSeekBar;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/VideoSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->C:Lcom/my/target/core/ui/views/VideoSeekBar;

    .line 241
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->D:Landroid/widget/TextView;

    .line 242
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    .line 243
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    .line 245
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    .line 246
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->t:Landroid/widget/LinearLayout;

    .line 247
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    .line 248
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 249
    new-instance v0, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->G:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 1284
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1286
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1287
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/MediaAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1288
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->h:I

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setId(I)V

    .line 1289
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1290
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setBackgroundColor(I)V

    .line 1292
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    const-string v1, "vdsha"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1293
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1295
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    const/high16 v3, -0x45000000    # -0.001953125f

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1296
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1297
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1299
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1301
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1302
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1301
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1303
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1305
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1306
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    const-string v1, "vddb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1308
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1309
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1311
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->l:Landroid/widget/TextView;

    const-string v1, "vdth"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1313
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->l:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1314
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->l:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1315
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1317
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->o:Landroid/widget/TextView;

    const-string v1, "vdtv"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1318
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1319
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->o:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1320
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->o:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1321
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1322
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->o:Landroid/widget/TextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1324
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->k:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1325
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1324
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1326
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->n:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1327
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1326
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1328
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1329
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1328
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1331
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->k:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1332
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1333
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->k:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1334
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->k:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1335
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1337
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->n:Landroid/widget/Button;

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1338
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1339
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1340
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->n:Landroid/widget/Button;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1341
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1345
    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->a:I

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1346
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1347
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1346
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1348
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1353
    const/4 v1, 0x3

    sget v3, Lcom/my/target/core/ui/views/VideoDialogView;->h:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1354
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1355
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1356
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1358
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1360
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/VideoDialogView;->g:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1361
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1362
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1363
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1364
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1365
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1366
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1364
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1369
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1372
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/VideoDialogView;->b:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1373
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1374
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v4, 0x3

    .line 1375
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1376
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v6, 0x4

    .line 1377
    invoke-virtual {v5, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1374
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1378
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1379
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->A:Landroid/widget/FrameLayout;

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1381
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1384
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/16 v3, 0x49

    .line 1387
    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc

    .line 1388
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1389
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    const-string v3, "vdrh"

    invoke-virtual {v1, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1390
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/16 v3, 0x49

    .line 1393
    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc

    .line 1394
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1395
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    const-string v3, "vdrv"

    invoke-virtual {v1, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1398
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->y:Landroid/widget/TextView;

    const-string v1, "vddoh"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1399
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->y:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1400
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1401
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1402
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1400
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1405
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->z:Landroid/widget/TextView;

    const-string v1, "vddov"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1406
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->z:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1407
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1408
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1409
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1407
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1412
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1414
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1415
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1417
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1419
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1420
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1421
    invoke-virtual {v3, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1422
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1423
    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1420
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1424
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1426
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1429
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1430
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1431
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1430
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1432
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1434
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1435
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    const-string v1, "vdrep"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1436
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1437
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1439
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1440
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1441
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1442
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1443
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1445
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1447
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1448
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1449
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->v:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1451
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1452
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->v:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1454
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1456
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1457
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1458
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1459
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1460
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1461
    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1458
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1463
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->f:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setId(I)V

    .line 1464
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const-string v1, "vdpab"

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1465
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, p0}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1466
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1468
    const/16 v0, 0xd

    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1469
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v11}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1470
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1471
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1472
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1473
    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1470
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1475
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->e:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setId(I)V

    .line 1476
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const-string v1, "vdplb"

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1477
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, p0}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1478
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1480
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1481
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v11}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 1482
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1483
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1484
    invoke-virtual {v4, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1485
    invoke-virtual {v5, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1482
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setPadding(IIII)V

    .line 1487
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1490
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1492
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1493
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1495
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1499
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1500
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1495
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1501
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1505
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1506
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1501
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1507
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    const/high16 v1, -0x78000000

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1511
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    .line 1512
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    move v3, v2

    .line 1507
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;IIIII)V

    .line 1514
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->D:Landroid/widget/TextView;

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1515
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->D:Landroid/widget/TextView;

    const-string v1, "vdela"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1516
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1518
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1519
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1520
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1521
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->D:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1522
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->D:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1523
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1524
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1525
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1526
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1524
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1529
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1530
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    const-string v1, "vdrem"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1531
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1533
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1534
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1535
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1536
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1537
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1539
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1540
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1541
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1542
    invoke-virtual {v3, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1543
    invoke-virtual {v4, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x1000000

    .line 1541
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1546
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1548
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1549
    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->i:I

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1550
    const/4 v1, 0x0

    sget v3, Lcom/my/target/core/ui/views/VideoDialogView;->j:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1551
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->C:Lcom/my/target/core/ui/views/VideoSeekBar;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/VideoSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->C:Lcom/my/target/core/ui/views/VideoSeekBar;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoSeekBar;->setHeight(I)V

    .line 1554
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1556
    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->h:I

    invoke-virtual {v0, v11, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1557
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1559
    invoke-virtual {v2, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1560
    invoke-virtual {v3, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    .line 1561
    invoke-virtual {v4, v11}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    .line 1558
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1563
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1564
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1565
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->C:Lcom/my/target/core/ui/views/VideoSeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1566
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1568
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;)V

    .line 1569
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->G:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;)V

    .line 1571
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1572
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1573
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1574
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1575
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1576
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0, v0, v6}, Lcom/my/target/core/ui/views/VideoDialogView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0, v0, v7}, Lcom/my/target/core/ui/views/VideoDialogView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1578
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoDialogView;->addView(Landroid/view/View;)V

    .line 1580
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1581
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1582
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->A:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1583
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->A:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1584
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1586
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1587
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1588
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->B:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1589
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->B:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1590
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1592
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1593
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/VideoDialogView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->L:I

    return v0
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/VideoDialogView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->M:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/my/target/core/ui/views/controls/IconButton;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->G:Lcom/my/target/core/ui/views/controls/IconButton;

    return-object v0
.end method

.method public final a(FF)V
    .locals 3

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 603
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->D:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/my/target/core/utils/l;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
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

    .line 605
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->C:Lcom/my/target/core/ui/views/VideoSeekBar;

    mul-float v1, p2, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoSeekBar;->setMax(I)V

    .line 607
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->C:Lcom/my/target/core/ui/views/VideoSeekBar;

    mul-float v1, p1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoSeekBar;->setProgress(I)V

    .line 608
    return-void
.end method

.method public final a(Lcom/my/target/core/ui/views/VideoTextureView;)V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;I)V

    .line 599
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 615
    const/4 v0, 0x4

    iput v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->L:I

    .line 616
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 623
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->L:I

    .line 653
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 660
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 667
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->L:I

    .line 668
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 675
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 682
    const/4 v0, 0x1

    iput v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->L:I

    .line 683
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 689
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->O:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 691
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 700
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 704
    iget v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->L:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 706
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 709
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 716
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->L:I

    .line 717
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->I:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->H:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 723
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->O:Z

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 725
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 730
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 631
    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->b:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->c:I

    if-ne v0, v1, :cond_2

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    invoke-interface {v0, p1}, Lcom/my/target/core/ui/b$a;->a(Landroid/view/View;)V

    .line 645
    :cond_1
    :goto_0
    return-void

    .line 634
    :cond_2
    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->d:I

    if-ne v0, v1, :cond_3

    .line 636
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    invoke-interface {v0}, Lcom/my/target/core/ui/b$a;->b()V

    goto :goto_0

    .line 637
    :cond_3
    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->f:I

    if-ne v0, v1, :cond_4

    .line 639
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    invoke-interface {v0}, Lcom/my/target/core/ui/b$a;->c()V

    goto :goto_0

    .line 640
    :cond_4
    sget v1, Lcom/my/target/core/ui/views/VideoDialogView;->e:I

    if-ne v0, v1, :cond_1

    .line 642
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    invoke-interface {v0}, Lcom/my/target/core/ui/b$a;->a()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 257
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2264
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2267
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    move v0, v1

    .line 2275
    :goto_0
    iget v2, p0, Lcom/my/target/core/ui/views/VideoDialogView;->K:I

    if-eq v0, v2, :cond_0

    .line 2277
    iput v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->K:I

    .line 3183
    if-ne v0, v1, :cond_3

    .line 3185
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->t:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3186
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3188
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3191
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3192
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3193
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3195
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3196
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3199
    :goto_1
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->G:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    :cond_0
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 260
    return-void

    .line 2272
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3198
    :cond_2
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 3202
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3203
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->s:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3205
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3208
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3209
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3211
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3212
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3215
    :goto_3
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->G:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 3214
    :cond_4
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3
.end method

.method public setData(Lcom/my/target/core/models/banners/f;Lcom/my/target/nativeads/models/VideoData;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 129
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->k:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->n:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const-string v0, "store"

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getVotes()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getRating()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 143
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->v:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->J:Lcom/my/target/core/ui/views/FramedCacheImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->c(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/FramedCacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->O:Z

    .line 165
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    .line 166
    invoke-virtual {p2}, Lcom/my/target/nativeads/models/VideoData;->getWidth()I

    move-result v1

    .line 167
    invoke-virtual {p2}, Lcom/my/target/nativeads/models/VideoData;->getHeight()I

    move-result v2

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/my/target/nativeads/views/MediaAdView;->setPlaceHolderDimension(II)V

    .line 168
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->x:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->m:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->p:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setDialogListener(Lcom/my/target/core/ui/b$a;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/my/target/core/ui/views/VideoDialogView;->N:Lcom/my/target/core/ui/b$a;

    .line 174
    return-void
.end method

.method public setDismissButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoDialogView;->q:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method
