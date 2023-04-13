.class Lcom/appodeal/ads/b/ad$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/b/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/b/ad;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/b/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b/ad$a;->a:Lcom/appodeal/ads/b/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/b/ad;Lcom/appodeal/ads/b/ad$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/b/ad$a;-><init>(Lcom/appodeal/ads/b/ad;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/b/ad;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 11

    const-string v0, "appodealpassback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no-ads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/b/ad;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v7, Lcom/appodeal/ads/b/t;

    invoke-static {}, Lcom/appodeal/ads/b/ad;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-direct {v7, v0, p2, p3}, Lcom/appodeal/ads/b/t;-><init>(Lcom/appodeal/ads/o;II)V

    iget-object v0, p0, Lcom/appodeal/ads/b/ad$a;->a:Lcom/appodeal/ads/b/ad;

    invoke-static {v0, p1}, Lcom/appodeal/ads/b/ad;->a(Lcom/appodeal/ads/b/ad;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/b/ad$a;->a:Lcom/appodeal/ads/b/ad;

    invoke-static {}, Lcom/appodeal/ads/b/ad;->f()Lcom/appodeal/ads/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/appodeal/ads/b/ad;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/appodeal/ads/b/ad$a;->a:Lcom/appodeal/ads/b/ad;

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appodeal/ads/b/ad$a;->a:Lcom/appodeal/ads/b/ad;

    invoke-static {v3}, Lcom/appodeal/ads/b/ad;->a(Lcom/appodeal/ads/b/ad;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x140

    const/16 v6, 0x1e0

    move-object v8, v7

    invoke-direct/range {v0 .. v9}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    invoke-static {v10, v0}, Lcom/appodeal/ads/b/ad;->a(Lcom/appodeal/ads/b/ad;Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/b/ad;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    goto :goto_0
.end method
