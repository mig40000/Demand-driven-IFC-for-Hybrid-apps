.class public Lcom/appodeal/ads/e/ac;
.super Lcom/appodeal/ads/aq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/e/ac$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/ap;


# instance fields
.field private c:Lorg/nexage/sourcekit/vast/VASTPlayer;

.field private d:Z

.field private e:Z

.field private f:Lcom/appodeal/ads/utils/a/b;

.field private g:Lcom/appodeal/ads/e/ad;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/aq;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/e/ac;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/ac;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/e/ac;)Lorg/nexage/sourcekit/vast/VASTPlayer;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/e/ac;Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/VASTPlayer;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    return-object p1
.end method

.method static synthetic b(Lcom/appodeal/ads/e/ac;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/appodeal/ads/e/ac;)Lcom/appodeal/ads/e/ad;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->g:Lcom/appodeal/ads/e/ad;

    return-object v0
.end method

.method static synthetic g()Lcom/appodeal/ads/ap;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/e/ac;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/e/ac;->b:Lcom/appodeal/ads/ap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/e/ac;

    invoke-direct {v0}, Lcom/appodeal/ads/e/ac;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ap;

    invoke-static {}, Lcom/appodeal/ads/e/ac;->h()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V

    sput-object v1, Lcom/appodeal/ads/e/ac;->b:Lcom/appodeal/ads/ap;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/e/ac;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method private static h()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org.nexage.sourcekit.vast.activity.VASTActivity"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->checkFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->f:Lcom/appodeal/ads/utils/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->f:Lcom/appodeal/ads/utils/a/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/utils/a/b;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    sget-object v1, Lcom/appodeal/ads/ao$b;->b:Lcom/appodeal/ads/ao$b;

    iget-boolean v2, p0, Lcom/appodeal/ads/e/ac;->e:Z

    iget-boolean v3, p0, Lcom/appodeal/ads/e/ac;->d:Z

    iget-object v4, p0, Lcom/appodeal/ads/e/ac;->g:Lcom/appodeal/ads/e/ad;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/nexage/sourcekit/vast/VASTPlayer;->play(Lcom/appodeal/ads/ao$b;ZZLorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/am;->a(Z)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "freq"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v2, "package"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v2, "expiry"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/a/b;

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/utils/a/b;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/appodeal/ads/e/ac;->f:Lcom/appodeal/ads/utils/a/b;

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->f:Lcom/appodeal/ads/utils/a/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/utils/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v11, p0, Lcom/appodeal/ads/e/ac;->f:Lcom/appodeal/ads/utils/a/b;

    sget-object v0, Lcom/appodeal/ads/e/ac;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    :goto_0
    return-void

    :cond_0
    iput-object v11, p0, Lcom/appodeal/ads/e/ac;->f:Lcom/appodeal/ads/utils/a/b;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "vast_xml"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/e/ac;->a:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "vast_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "vpaid_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/appodeal/ads/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/appodeal/ads/ao;->a()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/appodeal/ads/e/ac;->e:Z

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "video_auto_close"

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appodeal/ads/e/ac;->d:Z

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->a:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    sget-object v0, Lcom/appodeal/ads/e/ac;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "video_wo_banners"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/appodeal/ads/e/ad;

    sget-object v2, Lcom/appodeal/ads/e/ac;->b:Lcom/appodeal/ads/ap;

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/e/ad;-><init>(Lcom/appodeal/ads/ap;IILjava/lang/String;J)V

    iput-object v1, p0, Lcom/appodeal/ads/e/ac;->g:Lcom/appodeal/ads/e/ad;

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->a:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Lcom/appodeal/ads/networks/k;

    new-instance v2, Lcom/appodeal/ads/e/ac$a;

    invoke-direct {v2, p0, v11}, Lcom/appodeal/ads/e/ac$a;-><init>(Lcom/appodeal/ads/e/ac;Lcom/appodeal/ads/e/ac$1;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/networks/k;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/k$a;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-direct {v0, p1}, Lorg/nexage/sourcekit/vast/VASTPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-virtual {v0, v10}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setPrecache(Z)V

    sget-object v0, Lcom/appodeal/ads/e/ac;->b:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v10}, Lcom/appodeal/ads/e/ac;->a(Ljava/lang/String;IZ)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setRtbInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    if-eqz v9, :cond_8

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-virtual {v0, v9}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setXmlUrl(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    sget v1, Lcom/appodeal/ads/ak;->w:I

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setMaxDuration(I)V

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    sget-boolean v1, Lcom/appodeal/ads/ak;->x:Z

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setDisableLongVideo(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/e/ac;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v1, p0, Lcom/appodeal/ads/e/ac;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/appodeal/ads/e/ac;->g:Lcom/appodeal/ads/e/ad;

    invoke-virtual {v0, v1, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->loadVideoWithData(Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto/16 :goto_0
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
