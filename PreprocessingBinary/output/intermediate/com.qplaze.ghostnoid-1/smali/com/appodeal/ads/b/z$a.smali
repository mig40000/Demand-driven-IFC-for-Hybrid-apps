.class Lcom/appodeal/ads/b/z$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/b/z;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/b/z;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b/z$a;->a:Lcom/appodeal/ads/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/b/z;Lcom/appodeal/ads/b/z$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/b/z$a;-><init>(Lcom/appodeal/ads/b/z;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/b/z;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    return-void
.end method

.method public a(Lcom/appodeal/ads/networks/p;II)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/b/z$a;->a:Lcom/appodeal/ads/b/z;

    iget-object v1, p1, Lcom/appodeal/ads/networks/p;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/b/z;->a(Lcom/appodeal/ads/b/z;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/b/z$a;->a:Lcom/appodeal/ads/b/z;

    iget-object v1, p1, Lcom/appodeal/ads/networks/p;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/b/z;->b(Lcom/appodeal/ads/b/z;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/b/z$a;->a:Lcom/appodeal/ads/b/z;

    iget-object v1, p1, Lcom/appodeal/ads/networks/p;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/b/z;->c(Lcom/appodeal/ads/b/z;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/appodeal/ads/networks/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/b/z$a;->a:Lcom/appodeal/ads/b/z;

    iget-object v1, p1, Lcom/appodeal/ads/networks/p;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/b/z;->d(Lcom/appodeal/ads/b/z;Ljava/lang/String;)Ljava/lang/String;

    new-instance v7, Lcom/appodeal/ads/b/t;

    invoke-static {}, Lcom/appodeal/ads/b/z;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-direct {v7, v0, p2, p3}, Lcom/appodeal/ads/b/t;-><init>(Lcom/appodeal/ads/o;II)V

    iget-object v0, p0, Lcom/appodeal/ads/b/z$a;->a:Lcom/appodeal/ads/b/z;

    invoke-static {}, Lcom/appodeal/ads/b/z;->f()Lcom/appodeal/ads/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/appodeal/ads/b/z;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/appodeal/ads/b/z$a;->a:Lcom/appodeal/ads/b/z;

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appodeal/ads/b/z$a;->a:Lcom/appodeal/ads/b/z;

    invoke-static {v3}, Lcom/appodeal/ads/b/z;->a(Lcom/appodeal/ads/b/z;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Lcom/appodeal/ads/networks/p;->e:I

    iget v6, p1, Lcom/appodeal/ads/networks/p;->f:I

    move-object v8, v7

    invoke-direct/range {v0 .. v9}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    invoke-static {v10, v0}, Lcom/appodeal/ads/b/z;->a(Lcom/appodeal/ads/b/z;Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/b/z;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/b/z;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    goto :goto_0
.end method
