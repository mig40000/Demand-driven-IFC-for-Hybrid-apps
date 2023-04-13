.class public Lcom/appodeal/ads/e/i;
.super Lcom/appodeal/ads/aq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/e/i$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/ap;


# instance fields
.field private c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

.field private d:Lcom/appodeal/ads/VideoActivity;

.field private e:Lcom/appodeal/ads/utils/a/b;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/aq;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/e/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/e/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/i;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/e/i;Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/i;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    return-object p1
.end method

.method static synthetic b(Lcom/appodeal/ads/e/i;)J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/e/i;->j:J

    return-wide v0
.end method

.method static synthetic c(Lcom/appodeal/ads/e/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/appodeal/ads/e/i;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/e/i;->f:I

    return v0
.end method

.method static synthetic e(Lcom/appodeal/ads/e/i;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/e/i;->g:I

    return v0
.end method

.method static synthetic f(Lcom/appodeal/ads/e/i;)I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/e/i;->h:I

    return v0
.end method

.method static synthetic g()Lcom/appodeal/ads/ap;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/e/i;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/e/i;->b:Lcom/appodeal/ads/ap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/e/i;

    invoke-direct {v0}, Lcom/appodeal/ads/e/i;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ap;

    invoke-static {}, Lcom/appodeal/ads/e/i;->h()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V

    sput-object v1, Lcom/appodeal/ads/e/i;->b:Lcom/appodeal/ads/ap;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/e/i;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method private static h()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e/i;->e:Lcom/appodeal/ads/utils/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/e/i;->e:Lcom/appodeal/ads/utils/a/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/utils/a/b;->b(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/e/i;->b:Lcom/appodeal/ads/ap;

    invoke-static {p1, v0, p2}, Lcom/appodeal/ads/an;->b(Landroid/app/Activity;Lcom/appodeal/ads/ap;I)V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 16

    sget-object v2, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/ar;

    iget-object v2, v2, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v3, "freq"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v2, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/ar;

    iget-object v2, v2, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v4, "package"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/appodeal/ads/e/i;->i:Ljava/lang/String;

    sget-object v2, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/ar;

    iget-object v2, v2, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v4, "expiry"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/appodeal/ads/e/i;->j:J

    if-eqz v3, :cond_0

    new-instance v2, Lcom/appodeal/ads/utils/a/b;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/appodeal/ads/utils/a/b;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/appodeal/ads/e/i;->e:Lcom/appodeal/ads/utils/a/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i;->e:Lcom/appodeal/ads/utils/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/appodeal/ads/utils/a/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/appodeal/ads/e/i;->e:Lcom/appodeal/ads/utils/a/b;

    sget-object v2, Lcom/appodeal/ads/e/i;->b:Lcom/appodeal/ads/ap;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/appodeal/ads/e/i;->e:Lcom/appodeal/ads/utils/a/b;

    :cond_1
    sget-object v2, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/ar;

    iget-object v2, v2, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v3, "html"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/appodeal/ads/e/i;->a:Ljava/lang/String;

    sget-object v2, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/ar;

    iget-object v2, v2, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v3, "mraid_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i;->a:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    sget-object v2, Lcom/appodeal/ads/e/i;->b:Lcom/appodeal/ads/ap;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/ar;

    iget-object v2, v2, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/appodeal/ads/e/i;->f:I

    sget-object v2, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/ar;

    iget-object v2, v2, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v3, "height"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/appodeal/ads/e/i;->g:I

    sget-object v2, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/ar;

    iget-object v2, v2, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v3, "close_time"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/appodeal/ads/e/i;->h:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i;->a:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    new-instance v2, Lcom/appodeal/ads/networks/k;

    new-instance v4, Lcom/appodeal/ads/e/i$a;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/appodeal/ads/e/i$a;-><init>(Lcom/appodeal/ads/e/i;Lcom/appodeal/ads/e/i$1;)V

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/appodeal/ads/networks/k;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/k$a;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Lcom/appodeal/ads/e/j;

    sget-object v4, Lcom/appodeal/ads/e/i;->b:Lcom/appodeal/ads/ap;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appodeal/ads/e/i;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/appodeal/ads/e/i;->j:J

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/appodeal/ads/e/j;-><init>(Lcom/appodeal/ads/ap;IILjava/lang/String;J)V

    sget-object v2, Lcom/appodeal/ads/e/i;->b:Lcom/appodeal/ads/ap;

    invoke-virtual {v2}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1, v4}, Lcom/appodeal/ads/e/i;->a(Ljava/lang/String;IZ)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v13

    new-instance v4, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appodeal/ads/e/i;->a:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/appodeal/ads/e/i;->f:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/appodeal/ads/e/i;->g:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/appodeal/ads/e/i;->h:I

    move-object/from16 v5, p1

    move-object v11, v3

    move-object v12, v3

    invoke-direct/range {v4 .. v15}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZI)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/appodeal/ads/e/i;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    goto/16 :goto_0
.end method

.method public a(Lcom/appodeal/ads/VideoActivity;I)V
    .locals 2

    iput-object p1, p0, Lcom/appodeal/ads/e/i;->d:Lcom/appodeal/ads/VideoActivity;

    invoke-static {p1}, Lcom/appodeal/ads/as;->a(Lcom/appodeal/ads/VideoActivity;)V

    iget-object v0, p0, Lcom/appodeal/ads/e/i;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/e/i;->d:Lcom/appodeal/ads/VideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/VideoActivity;->a(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/e/i;->c:Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    invoke-virtual {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;->show(Landroid/app/Activity;)V

    sget-object v0, Lcom/appodeal/ads/e/i;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, v0}, Lcom/appodeal/ads/am;->a(ILcom/appodeal/ads/ap;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/appodeal/ads/VideoActivity;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e/i;->d:Lcom/appodeal/ads/VideoActivity;

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
