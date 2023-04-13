.class public Lcom/appodeal/ads/g/r;
.super Lcom/appodeal/ads/aq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/g/r$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/ap;


# instance fields
.field private c:Lorg/nexage/sourcekit/vast/VASTPlayer;

.field private d:Z

.field private e:Z

.field private f:Lcom/appodeal/ads/g/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/aq;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/g/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/g/r;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/g/r;)Lorg/nexage/sourcekit/vast/VASTPlayer;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/g/r;Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/VASTPlayer;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    return-object p1
.end method

.method static synthetic b(Lcom/appodeal/ads/g/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/appodeal/ads/g/r;)Lcom/appodeal/ads/g/z;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->f:Lcom/appodeal/ads/g/z;

    return-object v0
.end method

.method static synthetic g()Lcom/appodeal/ads/ap;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/g/r;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/g/r;->b:Lcom/appodeal/ads/ap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/g/r;

    invoke-direct {v0}, Lcom/appodeal/ads/g/r;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ap;

    invoke-static {}, Lcom/appodeal/ads/g/r;->h()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V

    sput-object v1, Lcom/appodeal/ads/g/r;->b:Lcom/appodeal/ads/ap;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g/r;->b:Lcom/appodeal/ads/ap;

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

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->checkFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    sget-object v1, Lcom/appodeal/ads/ao$b;->a:Lcom/appodeal/ads/ao$b;

    iget-boolean v2, p0, Lcom/appodeal/ads/g/r;->e:Z

    iget-boolean v3, p0, Lcom/appodeal/ads/g/r;->d:Z

    iget-object v4, p0, Lcom/appodeal/ads/g/r;->f:Lcom/appodeal/ads/g/z;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/nexage/sourcekit/vast/VASTPlayer;->play(Lcom/appodeal/ads/ao$b;ZZLorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    sget-object v0, Lcom/appodeal/ads/g/r;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, v0}, Lcom/appodeal/ads/aj;->a(ILcom/appodeal/ads/ap;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/aj;->a(Z)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 6

    const/4 v3, 0x1

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "vast_xml"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/g/r;->a:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "vast_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "vpaid_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/appodeal/ads/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/appodeal/ads/ao;->a()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/appodeal/ads/g/r;->e:Z

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v2, "video_auto_close"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appodeal/ads/g/r;->d:Z

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->a:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g/r;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v2, "video_wo_banners"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/appodeal/ads/g/z;

    sget-object v2, Lcom/appodeal/ads/g/r;->b:Lcom/appodeal/ads/ap;

    invoke-direct {v0, v2, p2, p3}, Lcom/appodeal/ads/g/z;-><init>(Lcom/appodeal/ads/ap;II)V

    iput-object v0, p0, Lcom/appodeal/ads/g/r;->f:Lcom/appodeal/ads/g/z;

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->a:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/appodeal/ads/networks/k;

    new-instance v2, Lcom/appodeal/ads/g/r$a;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/appodeal/ads/g/r$a;-><init>(Lcom/appodeal/ads/g/r;Lcom/appodeal/ads/g/r$1;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/networks/k;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/k$a;IILjava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-direct {v0, p1}, Lorg/nexage/sourcekit/vast/VASTPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-virtual {v0, v3}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setPrecache(Z)V

    sget-object v0, Lcom/appodeal/ads/g/r;->b:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v2}, Lcom/appodeal/ads/g/r;->a(Ljava/lang/String;IZ)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-virtual {v2, v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setRtbInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setXmlUrl(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    sget v1, Lcom/appodeal/ads/ah;->v:I

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setMaxDuration(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    sget-boolean v1, Lcom/appodeal/ads/ah;->w:Z

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->setDisableLongVideo(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/g/r;->c:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v1, p0, Lcom/appodeal/ads/g/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/appodeal/ads/g/r;->f:Lcom/appodeal/ads/g/z;

    invoke-virtual {v0, v1, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->loadVideoWithData(Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto :goto_1
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
