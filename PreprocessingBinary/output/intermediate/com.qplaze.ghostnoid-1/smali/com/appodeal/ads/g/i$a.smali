.class Lcom/appodeal/ads/g/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/g/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/g/i;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/g/i;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/g/i$a;->a:Lcom/appodeal/ads/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/g/i;Lcom/appodeal/ads/g/i$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/g/i$a;-><init>(Lcom/appodeal/ads/g/i;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/g/i;->g()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/g/i$a;->a:Lcom/appodeal/ads/g/i;

    invoke-static {v0, p1}, Lcom/appodeal/ads/g/i;->a(Lcom/appodeal/ads/g/i;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/g/i$a;->a:Lcom/appodeal/ads/g/i;

    invoke-static {}, Lcom/appodeal/ads/g/i;->g()Lcom/appodeal/ads/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/g/i;->a(Ljava/lang/String;IZ)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v11

    new-instance v1, Lcom/appodeal/ads/g/j;

    invoke-static {}, Lcom/appodeal/ads/g/i;->g()Lcom/appodeal/ads/ap;

    move-result-object v2

    iget-object v0, p0, Lcom/appodeal/ads/g/i$a;->a:Lcom/appodeal/ads/g/i;

    invoke-static {v0}, Lcom/appodeal/ads/g/i;->a(Lcom/appodeal/ads/g/i;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/appodeal/ads/g/i$a;->a:Lcom/appodeal/ads/g/i;

    invoke-static {v0}, Lcom/appodeal/ads/g/i;->b(Lcom/appodeal/ads/g/i;)J

    move-result-wide v6

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/g/j;-><init>(Lcom/appodeal/ads/ap;IILjava/lang/String;J)V

    iget-object v0, p0, Lcom/appodeal/ads/g/i$a;->a:Lcom/appodeal/ads/g/i;

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/appodeal/ads/g/i$a;->a:Lcom/appodeal/ads/g/i;

    invoke-static {v5}, Lcom/appodeal/ads/g/i;->c(Lcom/appodeal/ads/g/i;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/appodeal/ads/g/i$a;->a:Lcom/appodeal/ads/g/i;

    invoke-static {v7}, Lcom/appodeal/ads/g/i;->d(Lcom/appodeal/ads/g/i;)I

    move-result v7

    iget-object v8, p0, Lcom/appodeal/ads/g/i$a;->a:Lcom/appodeal/ads/g/i;

    invoke-static {v8}, Lcom/appodeal/ads/g/i;->e(Lcom/appodeal/ads/g/i;)I

    move-result v8

    move-object v9, v1

    move-object v10, v1

    invoke-direct/range {v2 .. v11}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    invoke-static {v0, v2}, Lcom/appodeal/ads/g/i;->a(Lcom/appodeal/ads/g/i;Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/g/i;->g()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0
.end method
