.class public Lcom/appodeal/ads/a/v;
.super Lcom/appodeal/ads/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/a/v$a;
    }
.end annotation


# static fields
.field private static c:Lcom/appodeal/ads/h;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lorg/nexage/sourcekit/mraid/MRAIDView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/k;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/a/v;I)I
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/a/v;->b:I

    return p1
.end method

.method static synthetic a(Lcom/appodeal/ads/a/v;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/a/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/v;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/a/v;Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/mraid/MRAIDView;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/v;->j:Lorg/nexage/sourcekit/mraid/MRAIDView;

    return-object p1
.end method

.method static synthetic b(Lcom/appodeal/ads/a/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/v;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/appodeal/ads/a/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/v;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/appodeal/ads/a/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/v;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/h;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/a/v;->c:Lcom/appodeal/ads/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/a/v;

    invoke-direct {v0}, Lcom/appodeal/ads/a/v;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/h;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/h;-><init>(Ljava/lang/String;Lcom/appodeal/ads/k;)V

    sput-object v1, Lcom/appodeal/ads/a/v;->c:Lcom/appodeal/ads/h;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/a/v;->c:Lcom/appodeal/ads/h;

    return-object v0
.end method

.method static synthetic h()Lcom/appodeal/ads/h;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/a/v;->c:Lcom/appodeal/ads/h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Lcom/appodeal/ads/networks/q;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/appodeal/ads/a/v;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/appodeal/ads/a/v;->g:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/appodeal/ads/networks/q;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/q$a;IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 8

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/appodeal/ads/a/v;->a:Ljava/lang/String;

    iput-object v6, p0, Lcom/appodeal/ads/a/v;->j:Lorg/nexage/sourcekit/mraid/MRAIDView;

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/appodeal/ads/networks/q;

    new-instance v2, Lcom/appodeal/ads/a/v$a;

    invoke-direct {v2, p0, v6}, Lcom/appodeal/ads/a/v$a;-><init>(Lcom/appodeal/ads/a/v;Lcom/appodeal/ads/a/v$1;)V

    const/4 v7, 0x1

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/appodeal/ads/networks/q;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/q$a;IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
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

.method public b(Landroid/app/Activity;I)V
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Lcom/appodeal/ads/networks/q;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/appodeal/ads/a/v;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/appodeal/ads/a/v;->g:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/appodeal/ads/networks/q;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/q$a;IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public c()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/v;->j:Lorg/nexage/sourcekit/mraid/MRAIDView;

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/v;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/a/v;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/a/v;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/a/v;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/a/v;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/a/v;->i:Ljava/lang/String;

    return-void
.end method
