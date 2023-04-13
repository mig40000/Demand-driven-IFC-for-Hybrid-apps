.class public abstract Lcom/appodeal/ads/ab;
.super Lcom/appodeal/ads/d;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/appodeal/ads/NativeAd;


# instance fields
.field public b:Landroid/view/View;

.field protected c:Landroid/graphics/Bitmap;

.field protected d:Landroid/graphics/Bitmap;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field private final g:I

.field private final h:Lcom/appodeal/ads/ac;

.field private i:Lcom/appodeal/ads/u;

.field private j:Landroid/net/Uri;

.field private k:Lorg/nexage/sourcekit/vast/model/VASTModel;

.field private l:Z


# direct methods
.method public constructor <init>(ILcom/appodeal/ads/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/d;-><init>()V

    iput p1, p0, Lcom/appodeal/ads/ab;->g:I

    iput-object p2, p0, Lcom/appodeal/ads/ab;->h:Lcom/appodeal/ads/ac;

    return-void
.end method

.method public constructor <init>(ILcom/appodeal/ads/ac;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/d;-><init>()V

    iput p1, p0, Lcom/appodeal/ads/ab;->g:I

    iput-object p2, p0, Lcom/appodeal/ads/ab;->h:Lcom/appodeal/ads/ac;

    iput-object p3, p0, Lcom/appodeal/ads/ab;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/ab;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/ab;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/ab;->g:I

    return v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/appodeal/ads/u;

    if-nez v0, :cond_1

    instance-of v0, v1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/appodeal/ads/ab;->a(Landroid/view/ViewGroup;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/ab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/ab;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/appodeal/ads/ab;)Lcom/appodeal/ads/ac;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ab;->h:Lcom/appodeal/ads/ac;

    return-object v0
.end method

.method private c(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Problem recycling Native bitmap"

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/ab;->j:Landroid/net/Uri;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/appodeal/ads/ab;->j:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/ab;->j:Landroid/net/Uri;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/ab;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/ab;->j:Landroid/net/Uri;

    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public a(Lorg/nexage/sourcekit/vast/model/VASTModel;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/ab;->k:Lorg/nexage/sourcekit/vast/model/VASTModel;

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/ab;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected abstract b(Landroid/view/View;)V
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/ab;->c(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/ab;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/appodeal/ads/ab;->c:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/appodeal/ads/ab;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/appodeal/ads/ab;->n()V

    return-void
.end method

.method public containsVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 7

    sget-boolean v0, Lcom/appodeal/ads/Native;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->f()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcom/appodeal/ads/ab;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/appodeal/ads/ag;

    iget-object v3, v4, Lcom/appodeal/ads/ag;->o:Ljava/lang/String;

    iget-object v0, v4, Lcom/appodeal/ads/ag;->A:Lcom/appodeal/ads/d/g;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/appodeal/ads/ag;->A:Lcom/appodeal/ads/d/g;

    invoke-virtual {v0}, Lcom/appodeal/ads/d/g;->h()Lcom/appodeal/ads/d/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/appodeal/ads/ag;->A:Lcom/appodeal/ads/d/g;

    invoke-virtual {v0}, Lcom/appodeal/ads/d/g;->h()Lcom/appodeal/ads/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/d/h;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/d/h;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/d/h;->e()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v0, Lcom/appodeal/ads/utils/a;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v2, v4, Lcom/appodeal/ads/ag;->n:Ljava/lang/String;

    iget-object v4, v4, Lcom/appodeal/ads/ag;->p:Ljava/lang/String;

    const/16 v6, 0x200

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/utils/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/a;->b()V

    :cond_1
    return-void
.end method

.method f()Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "description"

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cta"

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rating"

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->getRating()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "image"

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->getMainImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "icon"

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "url"

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected g()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAgeRestrictions()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    const-string v0, "Install"

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ab;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ab;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ab;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ab;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRating()F
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lorg/nexage/sourcekit/vast/model/VASTModel;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ab;->k:Lorg/nexage/sourcekit/vast/model/VASTModel;

    return-object v0
.end method

.method public j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ab;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/ab;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/appodeal/ads/ab;->g:I

    iget-object v1, p0, Lcom/appodeal/ads/ab;->h:Lcom/appodeal/ads/ac;

    invoke-static {v0, v1, p0}, Lcom/appodeal/ads/ae;->c(ILcom/appodeal/ads/ac;Lcom/appodeal/ads/NativeAd;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/ab;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/ab;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/ab;->a(Landroid/view/ViewGroup;)V

    :cond_1
    iput-object p1, p0, Lcom/appodeal/ads/ab;->b:Landroid/view/View;

    iget-boolean v0, p0, Lcom/appodeal/ads/ab;->l:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/ab;->b:Landroid/view/View;

    sget v1, Lcom/appodeal/ads/Native;->v:I

    new-instance v2, Lcom/appodeal/ads/ab$1;

    invoke-direct {v2, p0}, Lcom/appodeal/ads/ab$1;-><init>(Lcom/appodeal/ads/ab;)V

    invoke-static {p0, v0, v1, v2}, Lcom/appodeal/ads/utils/t;->a(Lcom/appodeal/ads/d;Landroid/view/View;ILcom/appodeal/ads/utils/t$b;)V

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/ab;->i:Lcom/appodeal/ads/u;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/ab;->i:Lcom/appodeal/ads/u;

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->b()V

    sget-boolean v0, Lcom/appodeal/ads/Native;->B:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/ab;->i:Lcom/appodeal/ads/u;

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->c()V

    :cond_3
    return-void
.end method

.method public setAppodealMediaView(Lcom/appodeal/ads/AppodealMediaView;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lcom/appodeal/ads/u;

    invoke-virtual {p1}, Lcom/appodeal/ads/AppodealMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appodeal/ads/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/ab;->i:Lcom/appodeal/ads/u;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/appodeal/ads/ab;->i:Lcom/appodeal/ads/u;

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/AppodealMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/ab;->i:Lcom/appodeal/ads/u;

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/u;->setNativeAd(Lcom/appodeal/ads/ab;)V

    return-void
.end method

.method public unregisterViewForInteraction()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/ab;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/ab;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/ab;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/appodeal/ads/utils/t;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/ab;->c()V

    iget-object v0, p0, Lcom/appodeal/ads/ab;->i:Lcom/appodeal/ads/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/ab;->i:Lcom/appodeal/ads/u;

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->d()V

    :cond_1
    return-void
.end method
