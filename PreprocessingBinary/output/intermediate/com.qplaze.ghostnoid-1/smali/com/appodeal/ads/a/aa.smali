.class public Lcom/appodeal/ads/a/aa;
.super Lcom/appodeal/ads/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/a/aa$a;
    }
.end annotation


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

.method static synthetic a(Lcom/appodeal/ads/a/aa;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/aa;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/a/aa;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/aa;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/a/aa;Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/mraid/MRAIDView;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/aa;->d:Lorg/nexage/sourcekit/mraid/MRAIDView;

    return-object p1
.end method

.method static synthetic b(Lcom/appodeal/ads/a/aa;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/a/aa;->e:I

    return v0
.end method

.method static synthetic c(Lcom/appodeal/ads/a/aa;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/a/aa;->b:I

    return v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/h;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/a/aa;->c:Lcom/appodeal/ads/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/a/aa;

    invoke-direct {v0}, Lcom/appodeal/ads/a/aa;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/h;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/h;-><init>(Ljava/lang/String;Lcom/appodeal/ads/k;)V

    sput-object v1, Lcom/appodeal/ads/a/aa;->c:Lcom/appodeal/ads/h;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/a/aa;->c:Lcom/appodeal/ads/h;

    return-object v0
.end method

.method static synthetic h()Lcom/appodeal/ads/h;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/a/aa;->c:Lcom/appodeal/ads/h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)V
    .locals 7

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "width"

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/a/aa;->e:I

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "height"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/a/aa;->b:I

    iget v0, p0, Lcom/appodeal/ads/a/aa;->e:I

    invoke-static {}, Lcom/appodeal/ads/g;->d()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/appodeal/ads/a/aa;->b:I

    invoke-static {}, Lcom/appodeal/ads/g;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/appodeal/ads/a/aa;->c:Lcom/appodeal/ads/h;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/appodeal/ads/networks/v;

    new-instance v2, Lcom/appodeal/ads/a/aa$a;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/appodeal/ads/a/aa$a;-><init>(Lcom/appodeal/ads/a/aa;Lcom/appodeal/ads/a/aa$1;)V

    sget-object v6, Lcom/appodeal/ads/networks/u;->a:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/networks/v;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/v$a;IILjava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/appodeal/ads/a/aa;->d:Lorg/nexage/sourcekit/mraid/MRAIDView;

    return-object v0
.end method
