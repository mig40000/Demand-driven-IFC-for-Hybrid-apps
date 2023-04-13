.class public Lcom/appodeal/ads/b/s;
.super Lcom/appodeal/ads/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/b/s$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/o;


# instance fields
.field private c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

.field private d:Lcom/appodeal/ads/InterstitialActivity;

.field private e:Lcom/appodeal/ads/utils/a/b;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/r;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/b/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/b/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b/s;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/b/s;Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b/s;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    return-object p1
.end method

.method static synthetic b(Lcom/appodeal/ads/b/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/b/s;->i:J

    return-wide v0
.end method

.method static synthetic c(Lcom/appodeal/ads/b/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/appodeal/ads/b/s;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/b/s;->f:I

    return v0
.end method

.method static synthetic e(Lcom/appodeal/ads/b/s;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/b/s;->g:I

    return v0
.end method

.method static synthetic f()Lcom/appodeal/ads/o;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/b/s;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method

.method private static g()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/b/s;->b:Lcom/appodeal/ads/o;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/b/s;

    invoke-direct {v0}, Lcom/appodeal/ads/b/s;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/o;

    invoke-static {}, Lcom/appodeal/ads/b/s;->g()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/o;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/r;)V

    sput-object v1, Lcom/appodeal/ads/b/s;->b:Lcom/appodeal/ads/o;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/b/s;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->e:Lcom/appodeal/ads/utils/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->e:Lcom/appodeal/ads/utils/a/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/utils/a/b;->b(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/b/s;->b:Lcom/appodeal/ads/o;

    invoke-static {p1, v0, p2}, Lcom/appodeal/ads/an;->a(Landroid/app/Activity;Lcom/appodeal/ads/o;I)V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 12

    const/4 v9, 0x0

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "freq"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v2, "package"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/b/s;->h:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v2, "expiry"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/b/s;->i:J

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/a/b;

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/utils/a/b;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/appodeal/ads/b/s;->e:Lcom/appodeal/ads/utils/a/b;

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->e:Lcom/appodeal/ads/utils/a/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/utils/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v9, p0, Lcom/appodeal/ads/b/s;->e:Lcom/appodeal/ads/utils/a/b;

    sget-object v0, Lcom/appodeal/ads/b/s;->b:Lcom/appodeal/ads/o;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    :goto_0
    return-void

    :cond_0
    iput-object v9, p0, Lcom/appodeal/ads/b/s;->e:Lcom/appodeal/ads/utils/a/b;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/b/s;->a:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "mraid_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->a:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/appodeal/ads/b/s;->b:Lcom/appodeal/ads/o;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/b/s;->f:I

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/b/s;->g:I

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->a:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Lcom/appodeal/ads/networks/k;

    new-instance v2, Lcom/appodeal/ads/b/s$a;

    invoke-direct {v2, p0, v9}, Lcom/appodeal/ads/b/s$a;-><init>(Lcom/appodeal/ads/b/s;Lcom/appodeal/ads/b/s$1;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/networks/k;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/k$a;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/appodeal/ads/b/s;->b:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/appodeal/ads/b/s;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v11

    new-instance v1, Lcom/appodeal/ads/b/t;

    sget-object v2, Lcom/appodeal/ads/b/s;->b:Lcom/appodeal/ads/o;

    iget-object v5, p0, Lcom/appodeal/ads/b/s;->h:Ljava/lang/String;

    iget-wide v6, p0, Lcom/appodeal/ads/b/s;->i:J

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/b/t;-><init>(Lcom/appodeal/ads/o;IILjava/lang/String;J)V

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    iget-object v5, p0, Lcom/appodeal/ads/b/s;->a:Ljava/lang/String;

    iget v7, p0, Lcom/appodeal/ads/b/s;->f:I

    iget v8, p0, Lcom/appodeal/ads/b/s;->g:I

    move-object v3, p1

    move-object v4, v9

    move-object v6, v9

    move-object v9, v1

    move-object v10, v1

    invoke-direct/range {v2 .. v11}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    iput-object v2, p0, Lcom/appodeal/ads/b/s;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    goto/16 :goto_0
.end method

.method public a(Lcom/appodeal/ads/InterstitialActivity;I)V
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/b/s;->d:Lcom/appodeal/ads/InterstitialActivity;

    invoke-static {p1}, Lcom/appodeal/ads/as;->a(Lcom/appodeal/ads/InterstitialActivity;)V

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    invoke-virtual {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;->show(Landroid/app/Activity;)V

    sget-object v0, Lcom/appodeal/ads/b/s;->b:Lcom/appodeal/ads/o;

    invoke-static {p2, v0}, Lcom/appodeal/ads/q;->a(ILcom/appodeal/ads/o;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/appodeal/ads/InterstitialActivity;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b/s;->d:Lcom/appodeal/ads/InterstitialActivity;

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
