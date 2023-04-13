.class public Lcom/appodeal/ads/a/w;
.super Lcom/appodeal/ads/k;


# static fields
.field private static c:Lcom/appodeal/ads/h;


# instance fields
.field private d:Lorg/nexage/sourcekit/mraid/MRAIDView;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/k;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/h;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/a/w;->c:Lcom/appodeal/ads/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/a/w;

    invoke-direct {v0}, Lcom/appodeal/ads/a/w;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/h;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/h;-><init>(Ljava/lang/String;Lcom/appodeal/ads/k;)V

    sput-object v1, Lcom/appodeal/ads/a/w;->c:Lcom/appodeal/ads/h;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/a/w;->c:Lcom/appodeal/ads/h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)V
    .locals 10

    const/4 v2, 0x0

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/a/w;->a:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/a/w;->e:I

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/a/w;->b:I

    iget v0, p0, Lcom/appodeal/ads/a/w;->e:I

    invoke-static {}, Lcom/appodeal/ads/g;->d()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/appodeal/ads/a/w;->b:I

    invoke-static {}, Lcom/appodeal/ads/g;->c()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/a/w;->e:I

    mul-int/lit8 v0, v0, 0x32

    iget v1, p0, Lcom/appodeal/ads/a/w;->b:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/appodeal/ads/a/w;->e:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/appodeal/ads/a/w;->b:I

    iget v0, p0, Lcom/appodeal/ads/a/w;->e:I

    invoke-static {}, Lcom/appodeal/ads/g;->d()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/appodeal/ads/a/w;->b:I

    invoke-static {}, Lcom/appodeal/ads/g;->c()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/appodeal/ads/a/w;->c:Lcom/appodeal/ads/h;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    :goto_0
    return-void

    :cond_2
    new-instance v5, Lcom/appodeal/ads/a/q;

    sget-object v0, Lcom/appodeal/ads/a/w;->c:Lcom/appodeal/ads/h;

    invoke-direct {v5, v0, p2, p3}, Lcom/appodeal/ads/a/q;-><init>(Lcom/appodeal/ads/h;II)V

    sget-object v0, Lcom/appodeal/ads/a/w;->c:Lcom/appodeal/ads/h;

    invoke-virtual {v0}, Lcom/appodeal/ads/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/appodeal/ads/a/w;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v9

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDView;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/appodeal/ads/a/w;->a:Ljava/lang/String;

    iget v7, p0, Lcom/appodeal/ads/a/w;->e:I

    iget v8, p0, Lcom/appodeal/ads/a/w;->b:I

    move-object v4, v2

    move-object v6, v5

    invoke-direct/range {v0 .. v9}, Lorg/nexage/sourcekit/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;IILorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    iput-object v0, p0, Lcom/appodeal/ads/a/w;->d:Lorg/nexage/sourcekit/mraid/MRAIDView;

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lorg/nexage/sourcekit/mraid/MRAIDView;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-virtual {p1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->destroy()V

    :cond_0
    return-void
.end method

.method public c()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/w;->d:Lorg/nexage/sourcekit/mraid/MRAIDView;

    return-object v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/a/w;->e:I

    int-to-float v0, v0

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
