.class public Lcom/my/target/core/ui/views/chrome/CustomWebView;
.super Landroid/widget/LinearLayout;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/views/chrome/CustomWebView$a;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private final c:Lcom/my/target/core/utils/l;

.field private final d:Landroid/widget/ImageButton;

.field private final e:Landroid/widget/LinearLayout;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/FrameLayout;

.field private final i:Landroid/view/View;

.field private final j:Landroid/widget/FrameLayout;

.field private final k:Landroid/widget/ImageButton;

.field private l:Lcom/my/target/core/ui/views/chrome/CustomWebView$a;

.field private final m:Landroid/widget/RelativeLayout;

.field private final n:Landroid/webkit/WebView;

.field private final o:Landroid/widget/ProgressBar;

.field private p:Landroid/webkit/WebViewClient;

.field private q:Landroid/webkit/WebChromeClient;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->a:I

    .line 36
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 257
    new-instance v0, Lcom/my/target/core/ui/views/chrome/CustomWebView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/chrome/CustomWebView$1;-><init>(Lcom/my/target/core/ui/views/chrome/CustomWebView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->p:Landroid/webkit/WebViewClient;

    .line 269
    new-instance v0, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;-><init>(Lcom/my/target/core/ui/views/chrome/CustomWebView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->q:Landroid/webkit/WebChromeClient;

    .line 296
    new-instance v0, Lcom/my/target/core/ui/views/chrome/CustomWebView$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/chrome/CustomWebView$3;-><init>(Lcom/my/target/core/ui/views/chrome/CustomWebView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->r:Landroid/view/View$OnClickListener;

    .line 308
    new-instance v0, Lcom/my/target/core/ui/views/chrome/CustomWebView$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/chrome/CustomWebView$4;-><init>(Lcom/my/target/core/ui/views/chrome/CustomWebView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->s:Landroid/view/View$OnClickListener;

    .line 55
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->m:Landroid/widget/RelativeLayout;

    .line 56
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    .line 57
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->d:Landroid/widget/ImageButton;

    .line 58
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->e:Landroid/widget/LinearLayout;

    .line 59
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->f:Landroid/widget/TextView;

    .line 60
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->g:Landroid/widget/TextView;

    .line 61
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->h:Landroid/widget/FrameLayout;

    .line 62
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->j:Landroid/widget/FrameLayout;

    .line 63
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->k:Landroid/widget/ImageButton;

    .line 64
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->o:Landroid/widget/ProgressBar;

    .line 65
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->i:Landroid/view/View;

    .line 67
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c:Lcom/my/target/core/utils/l;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    .line 211
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 218
    :goto_0
    return-object p0

    .line 215
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->o:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Lcom/my/target/core/ui/views/chrome/CustomWebView$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->l:Lcom/my/target/core/ui/views/chrome/CustomWebView$a;

    return-object v0
.end method

.method static synthetic f(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 14

    .prologue
    const/4 v13, -0x2

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 72
    invoke-virtual {p0, v10}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->setOrientation(I)V

    .line 73
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->setGravity(I)V

    .line 75
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 77
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c:Lcom/my/target/core/utils/l;

    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102eb

    invoke-virtual {v3, v4, v2, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    iget v0, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    move v6, v0

    .line 83
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    iget-object v2, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    iget-object v2, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->h:Landroid/widget/FrameLayout;

    sget v2, Lcom/my/target/core/ui/views/chrome/CustomWebView;->a:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 94
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 96
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    iget-object v2, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->d:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v7, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->d:Landroid/widget/ImageButton;

    div-int/lit8 v8, v6, 0x4

    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c:Lcom/my/target/core/utils/l;

    const/4 v2, 0x2

    .line 100
    invoke-virtual {v0, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    .line 1215
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1216
    invoke-static {v8, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1218
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1220
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1222
    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1223
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1224
    const v2, -0x777778

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1225
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1226
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1228
    int-to-float v3, v8

    int-to-float v4, v8

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1229
    int-to-float v2, v8

    int-to-float v3, v8

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->d:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    :goto_1
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->j:Landroid/widget/FrameLayout;

    sget v1, Lcom/my/target/core/ui/views/chrome/CustomWebView;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 114
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->k:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->k:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2205
    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAQAAABIkb+zAAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfgAR0KGztQKbC4AAAA8UlEQVR42u2aQQ6EMAzE6IhH8wR+DfeVoCAySRfs82plQ0FNxTQBAAAAAMBXab0frFut4NIeBFTLX4lo4+ufJ+i1z8BI1//sHvz9HSCAAAIIIIAAAiqZo/bl0Vzdi7GECCCAAAJGDlg392wtr77/eEBufXeC/PreBGXoOxOUo+9LUJa+K0F5+p4EZeo7EpSrH5+gbP3oBOXrxyaoQj8yQTX6cQmq0o9KUJ1+TML89A+Ozot+1VznSkxkBBBAAAEEEEAAAQQQ4J8HeqPH3f3+UDMxS4iAgDXt5cVf7iruvVJx/Tuv0aWN//k9AAAAAAB8lx0xVUXCRDTw+wAAAABJRU5ErkJggg=="

    invoke-static {v2, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 2206
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2207
    const/16 v4, 0x280

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 2208
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 2210
    array-length v1, v2

    invoke-static {v2, v12, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->k:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->d:Landroid/widget/ImageButton;

    const v1, -0x333334

    invoke-static {v0, v12, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 125
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->k:Landroid/widget/ImageButton;

    const v1, -0x333334

    invoke-static {v0, v12, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 127
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 130
    sget v1, Lcom/my/target/core/ui/views/chrome/CustomWebView;->a:I

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 131
    sget v1, Lcom/my/target/core/ui/views/chrome/CustomWebView;->b:I

    invoke-virtual {v0, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 132
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c:Lcom/my/target/core/utils/l;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c:Lcom/my/target/core/utils/l;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c:Lcom/my/target/core/utils/l;

    const/4 v4, 0x4

    .line 135
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c:Lcom/my/target/core/utils/l;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    .line 134
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 137
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 139
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->g:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->g:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 143
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 144
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->g:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 148
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 150
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->f:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 153
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 158
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 160
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 161
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->p:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->q:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 166
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xfc560c

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 167
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 170
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0x1e0a02

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 171
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 172
    const/high16 v3, 0x1020000

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 173
    const v2, 0x102000d

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 175
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c:Lcom/my/target/core/utils/l;

    const/4 v2, 0x2

    .line 178
    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-direct {v0, v11, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 183
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->addView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->i:Landroid/view/View;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 196
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->i:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->addView(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->addView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->addView(Landroid/view/View;)V

    .line 204
    return-void

    .line 109
    :cond_1
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    :cond_2
    move v6, v0

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 234
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 241
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 242
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 244
    :cond_0
    return-void
.end method

.method public setListener(Lcom/my/target/core/ui/views/chrome/CustomWebView$a;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->l:Lcom/my/target/core/ui/views/chrome/CustomWebView$a;

    .line 224
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->n:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView;->f:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method
