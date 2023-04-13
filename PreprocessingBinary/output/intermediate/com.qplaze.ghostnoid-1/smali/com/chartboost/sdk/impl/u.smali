.class public Lcom/chartboost/sdk/impl/u;
.super Lcom/chartboost/sdk/impl/s;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/bf;

.field b:Landroid/view/View$OnClickListener;

.field private c:Lcom/chartboost/sdk/impl/z;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/chartboost/sdk/impl/x;

.field private i:I

.field private j:Landroid/graphics/Point;

.field private k:Lcom/chartboost/sdk/Libraries/i;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    const/high16 v6, -0x1000000

    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 82
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/s;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/z;

    .line 85
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->g:Landroid/widget/LinearLayout;

    .line 86
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u;->setGravity(I)V

    .line 89
    invoke-static {p2}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v1

    .line 91
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->d:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 93
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/high16 v0, 0x41a80000    # 21.0f

    :goto_0
    invoke-virtual {v2, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->d:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 98
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->e:Landroid/widget/TextView;

    .line 99
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    :goto_1
    invoke-virtual {v2, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->e:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 104
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->f:Landroid/widget/TextView;

    .line 105
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const/high16 v0, 0x41900000    # 18.0f

    :goto_2
    invoke-virtual {v2, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 110
    new-instance v0, Lcom/chartboost/sdk/impl/u$1;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/impl/u$1;-><init>(Lcom/chartboost/sdk/impl/u;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    new-instance v0, Lcom/chartboost/sdk/impl/x;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->h:Lcom/chartboost/sdk/impl/x;

    .line 120
    invoke-virtual {p0, v8}, Lcom/chartboost/sdk/impl/u;->setFocusable(Z)V

    .line 122
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u;->setGravity(I)V

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->h:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u;->addView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->g:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/u;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u;->addView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0, v8}, Lcom/chartboost/sdk/impl/u;->setBackgroundColor(I)V

    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->d:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->e:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->f:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void

    .line 93
    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    goto/16 :goto_0

    .line 99
    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_1

    .line 105
    :cond_2
    const/high16 v0, 0x41300000    # 11.0f

    goto :goto_2
.end method

.method private a(Lcom/chartboost/sdk/impl/be;ILorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 210
    if-nez p3, :cond_0

    .line 218
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 213
    const-string v0, "index"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v0, "checksum"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->k:Lcom/chartboost/sdk/impl/am;

    const-string v1, "url"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/am$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private c()I
    .locals 3

    .prologue
    const/16 v0, 0x4a

    const/16 v1, 0x29

    .line 252
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/e;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 261
    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    const/16 v0, 0x86

    .line 236
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    return v0

    .line 240
    :cond_1
    const/16 v0, 0x4b

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/16 v0, 0x4d

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->d:Landroid/widget/TextView;

    const-string v1, "name"

    const-string v2, "Unknown App"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const-string v0, "publisher"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_0
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :goto_1
    const-string v0, "border-color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0x49494a

    :goto_2
    iput v0, p0, Lcom/chartboost/sdk/impl/u;->i:I

    .line 157
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    new-instance v1, Landroid/graphics/Point;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/u;->j:Landroid/graphics/Point;

    .line 164
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/i;

    .line 165
    const-string v0, "deep-link"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "deep-link"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->t:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->t:Lcom/chartboost/sdk/Libraries/i;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/i;

    .line 177
    :goto_4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    :goto_5
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/i;

    if-eqz v1, :cond_8

    .line 182
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/Libraries/i;)V

    .line 183
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/u;->c()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 191
    :goto_6
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/u;->c()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->h:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u;->removeView(Landroid/view/View;)V

    .line 199
    new-instance v0, Lcom/chartboost/sdk/impl/x;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->h:Lcom/chartboost/sdk/impl/x;

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->h:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/u;->addView(Landroid/view/View;I)V

    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->h:Lcom/chartboost/sdk/impl/x;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "assets"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "icon"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/impl/be;ILorg/json/JSONObject;)V

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->h:Lcom/chartboost/sdk/impl/x;

    iget v1, p0, Lcom/chartboost/sdk/impl/u;->i:I

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/x;->a(I)V

    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->h:Lcom/chartboost/sdk/impl/x;

    const v1, 0x3e2aaaab

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/x;->a(F)V

    .line 206
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->b()V

    .line 207
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 154
    :cond_2
    const-string v0, "border-color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 161
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->j:Landroid/graphics/Point;

    goto/16 :goto_3

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "Play"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->s:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->s:Lcom/chartboost/sdk/Libraries/i;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_4

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "Install"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 177
    :cond_7
    const/4 v0, 0x7

    goto/16 :goto_5

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->a()Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xde5819

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bf;->a()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 188
    const/16 v0, 0x64

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    goto/16 :goto_6
.end method

.method protected b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    .line 224
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->a()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u;->a()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 225
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v0, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 227
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/u;->j:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/chartboost/sdk/impl/u;->j:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/chartboost/sdk/impl/bf;->setPadding(IIII)V

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->h:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/x;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->h:Lcom/chartboost/sdk/impl/x;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/x;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 231
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/s;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->b:Landroid/view/View$OnClickListener;

    .line 138
    return-void
.end method
