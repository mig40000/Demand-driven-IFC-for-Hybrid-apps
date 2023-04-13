.class public Lcom/my/target/core/ui/views/StandardNativeView;
.super Landroid/widget/RelativeLayout;
.source "StandardNativeView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/views/StandardNativeView$a;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private B:Landroid/view/View$OnClickListener;

.field private final a:Lcom/my/target/core/ui/views/BorderedTextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/Button;

.field private final i:Lcom/my/target/nativeads/views/StarsRatingView;

.field private final j:Lcom/my/target/core/ui/views/CacheImageView;

.field private final k:Landroid/widget/LinearLayout;

.field private final l:Landroid/widget/LinearLayout;

.field private final m:Landroid/widget/LinearLayout;

.field private final n:Landroid/widget/RelativeLayout;

.field private final o:Landroid/widget/RelativeLayout;

.field private final p:Landroid/widget/RelativeLayout;

.field private final q:Landroid/widget/ViewFlipper;

.field private final r:Lcom/my/target/core/utils/l;

.field private final s:I

.field private final t:Landroid/widget/FrameLayout;

.field private u:Lcom/my/target/core/ui/views/StandardNativeView$a;

.field private v:Lcom/my/target/core/engines/h;

.field private w:Ljava/lang/String;

.field private x:Lcom/my/target/core/models/banners/g;

.field private final y:Ljava/lang/Runnable;

.field private final z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/core/ui/views/StandardNativeView;-><init>(Landroid/content/Context;IB)V

    .line 172
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IB)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x4

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lcom/my/target/core/ui/views/StandardNativeView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/StandardNativeView$1;-><init>(Lcom/my/target/core/ui/views/StandardNativeView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Lcom/my/target/core/ui/views/StandardNativeView$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/StandardNativeView$2;-><init>(Lcom/my/target/core/ui/views/StandardNativeView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Lcom/my/target/core/ui/views/StandardNativeView$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/StandardNativeView$3;-><init>(Lcom/my/target/core/ui/views/StandardNativeView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->A:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/my/target/core/ui/views/StandardNativeView$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/StandardNativeView$4;-><init>(Lcom/my/target/core/ui/views/StandardNativeView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->B:Landroid/view/View$OnClickListener;

    .line 177
    iput p2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    .line 178
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    .line 180
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Lcom/my/target/core/ui/views/CacheImageView;

    .line 181
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->t:Landroid/widget/FrameLayout;

    .line 182
    new-instance v0, Landroid/widget/ViewFlipper;

    invoke-direct {v0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    .line 183
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/LinearLayout;

    .line 184
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    .line 185
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    .line 186
    new-instance v0, Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/BorderedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    .line 187
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 188
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    .line 189
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/TextView;

    .line 190
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    .line 191
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:Landroid/widget/LinearLayout;

    .line 192
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Landroid/widget/LinearLayout;

    .line 193
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    .line 194
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Landroid/widget/TextView;

    .line 195
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/RelativeLayout;

    .line 196
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->o:Landroid/widget/RelativeLayout;

    .line 197
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->p:Landroid/widget/RelativeLayout;

    .line 1231
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Lcom/my/target/core/ui/views/CacheImageView;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setId(I)V

    .line 1232
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->t:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    const/16 v1, 0x193

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1235
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1236
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 1237
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1238
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 1239
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1240
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1241
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1242
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1244
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1246
    const/4 v1, 0x0

    const/16 v2, 0x193

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1247
    const/16 v1, 0x191

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1248
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-static {}, Lcom/my/target/core/utils/b;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1250
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-static {}, Lcom/my/target/core/utils/b;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1253
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1255
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1257
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1260
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1261
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/RelativeLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 1263
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1264
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1265
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1266
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1267
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 1268
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1269
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1271
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1273
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1274
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1275
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1276
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1278
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1280
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setId(I)V

    .line 1281
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    const v1, -0x777778

    invoke-virtual {v0, v8, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 1282
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setGravity(I)V

    .line 1283
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v10, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextSize(IF)V

    .line 1284
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/my/target/core/ui/views/BorderedTextView;->setPadding(IIII)V

    .line 1285
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v8}, Lcom/my/target/core/ui/views/BorderedTextView;->setLines(I)V

    .line 1286
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1288
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1289
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1290
    const/16 v1, 0x192

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1291
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/BorderedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1295
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1297
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Lcom/my/target/nativeads/views/StarsRatingView;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setId(I)V

    .line 1298
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc

    .line 1299
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1300
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1301
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1302
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v10}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1303
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1304
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1306
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1308
    const/16 v1, 0x194

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1309
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1310
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1312
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1315
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1316
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1320
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1322
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 1323
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1324
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1325
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1326
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1327
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1329
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1330
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1333
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1335
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1337
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1339
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1340
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1341
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1343
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1345
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1347
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    .line 1348
    invoke-virtual {v4, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 1347
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1349
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Landroid/widget/TextView;

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 1350
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1351
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1353
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1354
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1355
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1356
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1357
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1359
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1361
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->addView(Landroid/view/View;)V

    .line 1362
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->addView(Landroid/view/View;)V

    .line 1363
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->addView(Landroid/view/View;)V

    .line 1365
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1366
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1367
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1369
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1370
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1372
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->p:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1374
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1375
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1377
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1378
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1380
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 1381
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 1383
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->addView(Landroid/view/View;)V

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/my/target/core/ui/views/StandardNativeView;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/StandardNativeView;I)V
    .locals 4

    .prologue
    .line 32
    .line 4522
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->x:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4524
    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 4526
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->x:Lcom/my/target/core/models/banners/g;

    .line 4527
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/my/target/core/ui/views/StandardNativeView;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 4530
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4532
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 4534
    const/4 v0, 0x1

    move v1, v0

    .line 4536
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4538
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 4539
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4543
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 4541
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/StandardNativeView;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 506
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/StandardNativeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 507
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 508
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 509
    const/4 v1, 0x0

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 510
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 511
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 512
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 513
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 515
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 518
    return-void
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/ui/views/BorderedTextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    return-object v0
.end method

.method private static b(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 210
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :goto_0
    return-object v0

    .line 214
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    if-le v1, v2, :cond_1

    .line 216
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 219
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 550
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v0, v2, v3}, Lcom/my/target/core/ui/views/StandardNativeView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    return-void
.end method

.method static synthetic c(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/utils/l;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/ui/views/StandardNativeView$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->u:Lcom/my/target/core/ui/views/StandardNativeView$a;

    return-object v0
.end method

.method static synthetic f(Lcom/my/target/core/ui/views/StandardNativeView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/models/banners/g;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->x:Lcom/my/target/core/models/banners/g;

    return-object v0
.end method

.method static synthetic k(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/my/target/core/ui/views/StandardNativeView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/engines/h;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->v:Lcom/my/target/core/engines/h;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 632
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 633
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 634
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 645
    if-eqz p1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 656
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 658
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 660
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 662
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 663
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/my/target/core/ui/views/StandardNativeView;->b()V

    .line 669
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 639
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3555
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3556
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3558
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 3560
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 3562
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    goto :goto_0

    .line 3565
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->x:Lcom/my/target/core/models/banners/g;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->setBanner(Lcom/my/target/core/models/banners/g;)V

    .line 3566
    invoke-direct {p0}, Lcom/my/target/core/ui/views/StandardNativeView;->b()V

    .line 641
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 496
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 498
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->post(Ljava/lang/Runnable;)Z

    .line 502
    :cond_0
    return-void
.end method

.method public setAfterLastSlideListener(Lcom/my/target/core/ui/views/StandardNativeView$a;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->u:Lcom/my/target/core/ui/views/StandardNativeView$a;

    .line 674
    return-void
.end method

.method public setBanner(Lcom/my/target/core/models/banners/g;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 437
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->w:Ljava/lang/String;

    .line 439
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->x:Lcom/my/target/core/models/banners/g;

    .line 441
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getNavigationType()Ljava/lang/String;

    move-result-object v0

    .line 1611
    const-string v1, "store"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1613
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1614
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v4}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 1615
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 444
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 445
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 447
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 449
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->q()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 454
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    .line 456
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getCtaText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u279c"

    .line 455
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 460
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :goto_2
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 469
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    :goto_3
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 479
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v0

    .line 480
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v1

    .line 481
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Ljava/lang/String;

    move-result-object v2

    .line 2572
    const-string v3, "teaser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2574
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2575
    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2577
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 2579
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 2580
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2585
    :goto_4
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/my/target/core/ui/views/StandardNativeView;->r:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/my/target/core/ui/views/CacheImageView;->setPadding(IIII)V

    .line 2586
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2588
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2590
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2591
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2592
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    :cond_0
    :goto_5
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/BorderedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->post(Ljava/lang/Runnable;)Z

    .line 491
    :cond_1
    return-void

    .line 1618
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->i:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v5}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 1620
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 456
    :cond_3
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getCtaText()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 464
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v5}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 473
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2583
    :cond_6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_4

    .line 2593
    :cond_7
    const-string v3, "banner"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2595
    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    .line 2597
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2598
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v5}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2600
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/my/target/core/ui/views/StandardNativeView;->s:I

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2602
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2603
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2604
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5
.end method

.method public setMyTargetClickListener(Lcom/my/target/core/engines/h;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView;->v:Lcom/my/target/core/engines/h;

    .line 627
    return-void
.end method

.method public setViewSettings(Lcom/my/target/core/models/h;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 388
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    invoke-virtual {p1}, Lcom/my/target/core/models/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 393
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->m()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 394
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->a:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBackgroundColor(I)V

    .line 396
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 398
    invoke-virtual {p1}, Lcom/my/target/core/models/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 401
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    invoke-virtual {p1}, Lcom/my/target/core/models/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 405
    :goto_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    invoke-virtual {p1}, Lcom/my/target/core/models/h;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 409
    :goto_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    invoke-virtual {p1}, Lcom/my/target/core/models/h;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 413
    :goto_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    invoke-virtual {p1}, Lcom/my/target/core/models/h;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 417
    :goto_5
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->j:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setBackgroundColor(I)V

    .line 418
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->t:Landroid/widget/FrameLayout;

    .line 419
    invoke-virtual {p1}, Lcom/my/target/core/models/h;->i()I

    move-result v1

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)I

    move-result v1

    .line 418
    invoke-static {v0, v4, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 421
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->q:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->i()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 423
    if-eqz p2, :cond_6

    .line 424
    invoke-virtual {p0, v4}, Lcom/my/target/core/ui/views/StandardNativeView;->setBackgroundColor(I)V

    .line 429
    :goto_6
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->r()I

    move-result v1

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->s()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 430
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 431
    invoke-virtual {p1}, Lcom/my/target/core/models/h;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 433
    :goto_7
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_1

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_2

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_3

    .line 411
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_5

    .line 426
    :cond_6
    invoke-virtual {p1}, Lcom/my/target/core/models/h;->h()I

    move-result v0

    invoke-virtual {p1}, Lcom/my/target/core/models/h;->i()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    goto :goto_6

    .line 432
    :cond_7
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_7
.end method
