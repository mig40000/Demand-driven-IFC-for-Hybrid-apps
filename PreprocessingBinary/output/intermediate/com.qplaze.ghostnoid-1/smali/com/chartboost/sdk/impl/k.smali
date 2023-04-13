.class public Lcom/chartboost/sdk/impl/k;
.super Lcom/chartboost/sdk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/k$a;
    }
.end annotation


# instance fields
.field k:Lcom/chartboost/sdk/Libraries/i;

.field l:Lcom/chartboost/sdk/Libraries/i;

.field m:Lcom/chartboost/sdk/Libraries/i;

.field n:Lcom/chartboost/sdk/Libraries/i;

.field o:Lcom/chartboost/sdk/Libraries/i;

.field p:Lcom/chartboost/sdk/Libraries/i;

.field protected q:Ljava/lang/String;

.field protected r:F


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/f;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chartboost/sdk/impl/k;->r:F

    .line 220
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->k:Lcom/chartboost/sdk/Libraries/i;

    .line 221
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->l:Lcom/chartboost/sdk/Libraries/i;

    .line 222
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->m:Lcom/chartboost/sdk/Libraries/i;

    .line 223
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->n:Lcom/chartboost/sdk/Libraries/i;

    .line 224
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->o:Lcom/chartboost/sdk/Libraries/i;

    .line 225
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->p:Lcom/chartboost/sdk/Libraries/i;

    .line 226
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/i;F)V
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/i;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/i;->g()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/i;->c()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/i;->g()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-super {p0, p1}, Lcom/chartboost/sdk/f;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    :goto_0
    return v0

    .line 238
    :cond_0
    const-string v1, "ad_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/k;->q:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->e:Lorg/json/JSONObject;

    const-string v2, "frame-portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->e:Lorg/json/JSONObject;

    const-string v2, "close-portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    :cond_1
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/k;->i:Z

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->e:Lorg/json/JSONObject;

    const-string v2, "frame-landscape"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->e:Lorg/json/JSONObject;

    const-string v2, "close-landscape"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    :cond_3
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/k;->j:Z

    .line 245
    :cond_4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->l:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "frame-landscape"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->k:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "frame-portrait"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->n:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "close-landscape"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->m:Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "close-portrait"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->e:Lorg/json/JSONObject;

    const-string v2, "ad-portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/k;->i:Z

    .line 252
    :cond_5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->e:Lorg/json/JSONObject;

    const-string v2, "ad-landscape"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 253
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/k;->j:Z

    .line 255
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->p:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "ad-landscape"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->o:Lcom/chartboost/sdk/Libraries/i;

    const-string v1, "ad-portrait"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->e:Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    const-string v3, "offset"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_0

    .line 263
    new-instance v0, Landroid/graphics/Point;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 264
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/chartboost/sdk/impl/k$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/k$a;-><init>(Lcom/chartboost/sdk/impl/k;Landroid/content/Context;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-super {p0}, Lcom/chartboost/sdk/f;->d()V

    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->l:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 280
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->k:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 281
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->n:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 282
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->m:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->p:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 284
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->o:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->d()V

    .line 285
    iput-object v1, p0, Lcom/chartboost/sdk/impl/k;->l:Lcom/chartboost/sdk/Libraries/i;

    .line 286
    iput-object v1, p0, Lcom/chartboost/sdk/impl/k;->k:Lcom/chartboost/sdk/Libraries/i;

    .line 287
    iput-object v1, p0, Lcom/chartboost/sdk/impl/k;->n:Lcom/chartboost/sdk/Libraries/i;

    .line 288
    iput-object v1, p0, Lcom/chartboost/sdk/impl/k;->m:Lcom/chartboost/sdk/Libraries/i;

    .line 289
    iput-object v1, p0, Lcom/chartboost/sdk/impl/k;->p:Lcom/chartboost/sdk/Libraries/i;

    .line 290
    iput-object v1, p0, Lcom/chartboost/sdk/impl/k;->o:Lcom/chartboost/sdk/Libraries/i;

    .line 291
    return-void
.end method
