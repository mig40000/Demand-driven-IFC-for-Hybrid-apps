.class public Lcom/appodeal/ads/c/l;
.super Lcom/appodeal/ads/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/c/l$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/w;


# instance fields
.field private c:Lorg/nexage/sourcekit/mraid/MRAIDView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/z;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/c/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/c/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/c/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/c/l;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/c/l;Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/mraid/MRAIDView;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/c/l;->c:Lorg/nexage/sourcekit/mraid/MRAIDView;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/w;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/c/l;->b:Lcom/appodeal/ads/w;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/c/l;

    invoke-direct {v0}, Lcom/appodeal/ads/c/l;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/w;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/w;-><init>(Ljava/lang/String;Lcom/appodeal/ads/z;)V

    sput-object v1, Lcom/appodeal/ads/c/l;->b:Lcom/appodeal/ads/w;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/c/l;->b:Lcom/appodeal/ads/w;

    return-object v0
.end method

.method static synthetic h()Lcom/appodeal/ads/w;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/c/l;->b:Lcom/appodeal/ads/w;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)V
    .locals 7

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v1, "speed_limit"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/appodeal/ads/an;->b(Landroid/content/Context;)Lcom/appodeal/ads/an$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/appodeal/ads/an$a;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/c/l;->b:Lcom/appodeal/ads/w;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appodeal/ads/networks/l;

    new-instance v2, Lcom/appodeal/ads/c/l$a;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/appodeal/ads/c/l$a;-><init>(Lcom/appodeal/ads/c/l;Lcom/appodeal/ads/c/l$1;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/networks/l;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/l$a;IILjava/lang/String;Ljava/lang/Integer;)V

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

    iget-object v0, p0, Lcom/appodeal/ads/c/l;->c:Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->show()V

    iget-object v0, p0, Lcom/appodeal/ads/c/l;->c:Lorg/nexage/sourcekit/mraid/MRAIDView;

    return-object v0
.end method

.method public e()I
    .locals 2

    const/high16 v0, 0x437a0000    # 250.0f

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
