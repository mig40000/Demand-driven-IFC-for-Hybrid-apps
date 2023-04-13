.class public abstract Lcom/appodeal/ads/z;
.super Lcom/appodeal/ads/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/d;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;)Ljava/util/Set;

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

    check-cast v0, Lcom/appodeal/ads/w;

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/appodeal/ads/z;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/z;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/z;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/z;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/z;->b(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/appodeal/ads/utils/t;->a(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewManager;

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    iget-object v1, p0, Lcom/appodeal/ads/z;->a:Ljava/lang/String;

    sget-object v2, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/aa;

    iget-object v2, v2, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/aa;

    iget-object v3, v3, Lcom/appodeal/ads/aa;->m:Ljava/lang/String;

    const/16 v5, 0x100

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

.method public a(Landroid/app/Activity;Lcom/appodeal/ads/w;IZ)V
    .locals 6

    const/4 v4, 0x0

    sget-object v2, Lcom/appodeal/ads/v;->p:Landroid/view/View;

    if-eqz p4, :cond_1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/appodeal/ads/z;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/appodeal/ads/z;->e()I

    move-result v1

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz v2, :cond_5

    if-eqz p4, :cond_5

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/appodeal/ads/z;->b(Landroid/view/View;)V

    :cond_2
    sget v0, Lcom/appodeal/ads/v;->o:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/appodeal/ads/v;->r:Lcom/appodeal/ads/MrecView;

    :cond_3
    if-eqz v0, :cond_4

    check-cast v0, Lcom/appodeal/ads/MrecView;

    invoke-virtual {v0, v1, v3}, Lcom/appodeal/ads/MrecView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Lcom/appodeal/ads/MrecView;->setVisibility(I)V

    :cond_4
    sget v0, Lcom/appodeal/ads/v;->B:I

    new-instance v3, Lcom/appodeal/ads/z$1;

    invoke-direct {v3, p0, p3, p2}, Lcom/appodeal/ads/z$1;-><init>(Lcom/appodeal/ads/z;ILcom/appodeal/ads/w;)V

    invoke-static {p0, v1, v0, v3}, Lcom/appodeal/ads/utils/t;->a(Lcom/appodeal/ads/d;Landroid/view/View;ILcom/appodeal/ads/utils/t$b;)V

    sput-object v1, Lcom/appodeal/ads/v;->p:Landroid/view/View;

    sput p3, Lcom/appodeal/ads/v;->q:I

    sget-object v0, Lcom/appodeal/ads/v;->p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/appodeal/ads/z$2;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/appodeal/ads/z$2;-><init>(Lcom/appodeal/ads/z;Landroid/view/View;Landroid/view/View;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/z;->c()Landroid/view/ViewGroup;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/appodeal/ads/z;->b(Landroid/view/View;)V

    invoke-direct {p0, p1, v2}, Lcom/appodeal/ads/z;->a(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
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

    const/4 v0, -0x1

    return v0
.end method

.method protected e()I
    .locals 1

    const/4 v0, -0x2

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
