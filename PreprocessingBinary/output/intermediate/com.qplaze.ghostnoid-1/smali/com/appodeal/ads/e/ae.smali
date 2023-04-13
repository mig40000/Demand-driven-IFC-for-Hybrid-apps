.class public Lcom/appodeal/ads/e/ae;
.super Lcom/appodeal/ads/aq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/e/ae$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/ap;

.field private static e:Z


# instance fields
.field private c:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appodeal/ads/e/ae;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/aq;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/e/ae;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e/ae;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/e/ae;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/ae;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/e/ae;Ljava/lang/String;IILorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/e/ae;->a(Ljava/lang/String;IILorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;IILorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V
    .locals 7

    new-instance v0, Lcom/appodeal/ads/networks/vpaid/b;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/networks/vpaid/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/vpaid/b;->a()Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v0, Lcom/appodeal/ads/e/ae;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v2, Lcom/appodeal/ads/e/af;

    sget-object v3, Lcom/appodeal/ads/e/ae;->b:Lcom/appodeal/ads/ap;

    invoke-direct {v2, v3, p2, p3}, Lcom/appodeal/ads/e/af;-><init>(Lcom/appodeal/ads/ap;II)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/appodeal/ads/e/ae;->d:Ljava/lang/String;

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;-><init>(Landroid/content/Context;Lcom/appodeal/ads/networks/vpaid/a;ZLjava/lang/String;Lorg/nexage/sourcekit/vast/model/VASTModel;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    iput-object v0, p0, Lcom/appodeal/ads/e/ae;->c:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/e/ae;->b:Lcom/appodeal/ads/ap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/e/ae;

    invoke-direct {v0}, Lcom/appodeal/ads/e/ae;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ap;

    invoke-static {}, Lcom/appodeal/ads/e/ae;->i()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V

    sput-object v1, Lcom/appodeal/ads/e/ae;->b:Lcom/appodeal/ads/ap;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/e/ae;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method static synthetic h()Lcom/appodeal/ads/ap;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/e/ae;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method private static i()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.appodeal.ads.networks.vpaid.VPAIDActivity"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    sget-object v2, Lcom/appodeal/ads/ao$b;->b:Lcom/appodeal/ads/ao$b;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "videoClass"

    sget-object v2, Lcom/appodeal/ads/e/ae;->b:Lcom/appodeal/ads/ap;

    invoke-virtual {v2}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/appodeal/ads/e/ae;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, v0}, Lcom/appodeal/ads/am;->a(ILcom/appodeal/ads/ap;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "VPAIDActivity not found - did you declare it in AndroidManifest.xml?"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/am;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/appodeal/ads/am;->a(Z)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    invoke-static {p2, p3}, Lcom/appodeal/ads/am;->a(II)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/e/ae;->d:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "vpaid_xml"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/e/ae;->a:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "vpaid_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/appodeal/ads/e/ae;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/e/ae;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/e/ae;->a:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/appodeal/ads/e/ae;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/e/ae;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/e/ae;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/e/ae;->a:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/appodeal/ads/networks/k;

    new-instance v2, Lcom/appodeal/ads/e/ae$a;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/appodeal/ads/e/ae$a;-><init>(Lcom/appodeal/ads/e/ae;Lcom/appodeal/ads/e/ae$1;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/networks/k;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/k$a;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/appodeal/ads/e/ae;->b:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/appodeal/ads/e/ae;->a(Ljava/lang/String;IZ)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/e/ae;->a:Ljava/lang/String;

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/appodeal/ads/e/ae;->a(Ljava/lang/String;IILorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 0

    sput-boolean p1, Lcom/appodeal/ads/e/ae;->e:Z

    return-void
.end method

.method public d()Z
    .locals 1

    sget-boolean v0, Lcom/appodeal/ads/e/ae;->e:Z

    return v0
.end method

.method public g()Lcom/appodeal/ads/networks/vpaid/VPAIDView;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e/ae;->c:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    return-object v0
.end method
