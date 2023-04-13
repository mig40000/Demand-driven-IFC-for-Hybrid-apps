.class public abstract Lcom/appodeal/ads/k;
.super Lcom/appodeal/ads/d;


# instance fields
.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/d;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;)Landroid/widget/FrameLayout;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/appodeal/ads/k;->e()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "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"

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const-string v1, "Appodeal"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lcom/appodeal/ads/g;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/h;

    invoke-virtual {v0}, Lcom/appodeal/ads/h;->f()Lcom/appodeal/ads/k;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/h;->f()Lcom/appodeal/ads/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/appodeal/ads/k;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/k;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/k;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    iget-object v1, p0, Lcom/appodeal/ads/k;->a:Ljava/lang/String;

    sget-object v2, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/l;

    iget-object v2, v2, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/l;

    iget-object v3, v3, Lcom/appodeal/ads/l;->m:Ljava/lang/String;

    const/4 v5, 0x4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method public abstract a(Landroid/app/Activity;II)V
.end method

.method public a(Landroid/app/Activity;Lcom/appodeal/ads/h;ILcom/appodeal/ads/g$b;ZLcom/appodeal/ads/g$b;)V
    .locals 9

    sget-object v3, Lcom/appodeal/ads/g;->p:Landroid/view/View;

    if-eqz p5, :cond_1

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_6

    if-eqz p5, :cond_6

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/appodeal/ads/g$b;->c:Lcom/appodeal/ads/g$b;

    if-eq p4, v1, :cond_8

    if-ne p6, p4, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v4, 0x0

    sget-boolean v0, Lcom/appodeal/ads/g;->u:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/appodeal/ads/g$b;->c:Lcom/appodeal/ads/g$b;

    if-eq p4, v0, :cond_d

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v5, "Appodeal"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v4, v0

    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/appodeal/ads/k;->e()I

    move-result v5

    if-ne v0, v5, :cond_3

    if-ne p6, p4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v4, 0x0

    :cond_4
    if-nez v4, :cond_c

    invoke-direct {p0, p1}, Lcom/appodeal/ads/k;->a(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v4

    const/4 v0, 0x1

    move-object v5, v4

    move v4, v0

    :goto_3
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move v8, v4

    move-object v4, v0

    move-object v0, v5

    move v5, v8

    :goto_4
    sget-object v6, Lcom/appodeal/ads/k$3;->a:[I

    invoke-virtual {p4}, Lcom/appodeal/ads/g$b;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_5
    :goto_5
    sget v0, Lcom/appodeal/ads/g;->F:I

    new-instance v1, Lcom/appodeal/ads/k$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/appodeal/ads/k$1;-><init>(Lcom/appodeal/ads/k;ILcom/appodeal/ads/h;)V

    invoke-static {p0, v2, v0, v1}, Lcom/appodeal/ads/utils/t;->a(Lcom/appodeal/ads/d;Landroid/view/View;ILcom/appodeal/ads/utils/t$b;)V

    sput-object v2, Lcom/appodeal/ads/g;->p:Landroid/view/View;

    sput-object p4, Lcom/appodeal/ads/g;->r:Lcom/appodeal/ads/g$b;

    sput p3, Lcom/appodeal/ads/g;->q:I

    sget-object v0, Lcom/appodeal/ads/g;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_16

    sget-object v0, Lcom/appodeal/ads/g;->r:Lcom/appodeal/ads/g$b;

    if-ne v0, p6, :cond_16

    if-eqz v3, :cond_16

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-boolean v0, Lcom/appodeal/ads/g;->G:Z

    if-eqz v0, :cond_16

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x320

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v0, Lcom/appodeal/ads/k$2;

    move-object v1, p0

    move-object v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/k$2;-><init>(Lcom/appodeal/ads/k;Landroid/view/View;Landroid/view/View;Lcom/appodeal/ads/g$b;ZLandroid/app/Activity;)V

    invoke-virtual {v7, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/k;->c()Landroid/view/ViewGroup;

    move-result-object v2

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lcom/appodeal/ads/g;->a(Landroid/view/View;ZZ)V

    move v1, v0

    goto/16 :goto_2

    :cond_8
    sget v1, Lcom/appodeal/ads/g;->o:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/appodeal/ads/g;->v:Lcom/appodeal/ads/BannerView;

    :cond_9
    if-ne p6, p4, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lcom/appodeal/ads/g;->a(Landroid/view/View;ZZ)V

    :cond_b
    move v1, v0

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x0

    move-object v5, v4

    move v4, v0

    goto/16 :goto_3

    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v5, "Appodeal"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v4, v0

    :cond_e
    if-eqz v4, :cond_f

    const/4 v0, 0x1

    const/4 v4, 0x0

    :goto_6
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/appodeal/ads/k;->d()I

    move-result v6

    invoke-virtual {p0}, Lcom/appodeal/ads/k;->e()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move v8, v0

    move-object v0, v4

    move-object v4, v5

    move v5, v8

    goto/16 :goto_4

    :cond_f
    const/4 v0, 0x0

    goto :goto_6

    :pswitch_0
    const/16 v6, 0x51

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v1, :cond_5

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_10

    invoke-virtual {p1, v0, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_11
    invoke-virtual {p1, v2, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :pswitch_1
    const/16 v6, 0x31

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v1, :cond_5

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-virtual {p1, v0, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_13
    invoke-virtual {p1, v2, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :pswitch_2
    const/4 v0, 0x1

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v0, Lcom/appodeal/ads/g;->o:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/appodeal/ads/g;->v:Lcom/appodeal/ads/BannerView;

    :cond_14
    if-eqz v0, :cond_5

    check-cast v0, Lcom/appodeal/ads/BannerView;

    if-eqz v1, :cond_15

    invoke-virtual {v0, v2, v4}, Lcom/appodeal/ads/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/BannerView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_16
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/g$b;->c:Lcom/appodeal/ads/g$b;

    if-eq p4, v0, :cond_17

    const/4 v0, 0x1

    :goto_7
    invoke-static {v3, v0, v5}, Lcom/appodeal/ads/g;->a(Landroid/view/View;ZZ)V

    invoke-direct {p0, p1, v3}, Lcom/appodeal/ads/k;->a(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x0

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public b(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method public abstract c()Landroid/view/ViewGroup;
.end method

.method protected d()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method protected e()I
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/k;->b:I

    int-to-float v0, v0

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
