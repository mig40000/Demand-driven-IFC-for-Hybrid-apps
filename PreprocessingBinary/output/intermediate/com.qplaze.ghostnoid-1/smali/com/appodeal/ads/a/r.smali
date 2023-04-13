.class public Lcom/appodeal/ads/a/r;
.super Lcom/appodeal/ads/k;


# static fields
.field private static c:Lcom/appodeal/ads/h;


# instance fields
.field private d:Lcom/my/target/ads/MyTargetView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/k;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/h;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/a/r;->c:Lcom/appodeal/ads/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/a/r;

    invoke-direct {v0}, Lcom/appodeal/ads/a/r;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/h;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/h;-><init>(Ljava/lang/String;Lcom/appodeal/ads/k;)V

    sput-object v1, Lcom/appodeal/ads/a/r;->c:Lcom/appodeal/ads/h;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/a/r;->c:Lcom/appodeal/ads/h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)V
    .locals 6

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "mailru_slot_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/my/target/ads/MyTargetView;

    invoke-direct {v1, p1}, Lcom/my/target/ads/MyTargetView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appodeal/ads/a/r;->d:Lcom/my/target/ads/MyTargetView;

    const/16 v1, 0x32

    iput v1, p0, Lcom/appodeal/ads/a/r;->b:I

    sget-boolean v1, Lcom/appodeal/ads/g;->s:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/a/r;->d:Lcom/my/target/ads/MyTargetView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/appodeal/ads/a/r;->b:I

    int-to-float v4, v4

    invoke-static {p1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/my/target/ads/MyTargetView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/a/r;->d:Lcom/my/target/ads/MyTargetView;

    invoke-static {p1}, Lcom/appodeal/ads/networks/n;->a(Landroid/content/Context;)Lcom/my/target/ads/CustomParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/my/target/ads/MyTargetView;->init(ILcom/my/target/ads/CustomParams;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/appodeal/ads/a/r;->d:Lcom/my/target/ads/MyTargetView;

    new-instance v1, Lcom/appodeal/ads/a/s;

    sget-object v2, Lcom/appodeal/ads/a/r;->c:Lcom/appodeal/ads/h;

    invoke-direct {v1, v2, p2, p3}, Lcom/appodeal/ads/a/s;-><init>(Lcom/appodeal/ads/h;II)V

    invoke-virtual {v0, v1}, Lcom/my/target/ads/MyTargetView;->setListener(Lcom/my/target/ads/MyTargetView$MyTargetViewListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/a/r;->d:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->load()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/a/r;->d:Lcom/my/target/ads/MyTargetView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {p1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/appodeal/ads/a/r;->b:I

    int-to-float v4, v4

    invoke-static {p1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/my/target/ads/MyTargetView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/appodeal/ads/h;ILcom/appodeal/ads/g$b;ZLcom/appodeal/ads/g$b;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/r;->d:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->start()V

    invoke-super/range {p0 .. p6}, Lcom/appodeal/ads/k;->a(Landroid/app/Activity;Lcom/appodeal/ads/h;ILcom/appodeal/ads/g$b;ZLcom/appodeal/ads/g$b;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/my/target/ads/MyTargetView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/my/target/ads/MyTargetView;

    invoke-virtual {p1}, Lcom/my/target/ads/MyTargetView;->destroy()V

    :cond_0
    return-void
.end method

.method public c()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/r;->d:Lcom/my/target/ads/MyTargetView;

    return-object v0
.end method
