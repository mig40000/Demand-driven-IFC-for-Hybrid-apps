.class Lcom/appodeal/ads/b/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/b/i;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b/i$a;->a:Lcom/appodeal/ads/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/b/i;Lcom/appodeal/ads/b/i$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/b/i$a;-><init>(Lcom/appodeal/ads/b/i;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/b/i;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    return-void
.end method

.method public a(Landroid/util/Pair;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;II)V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v7, Lcom/appodeal/ads/b/t;

    invoke-static {}, Lcom/appodeal/ads/b/i;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-direct {v7, v0, p2, p3}, Lcom/appodeal/ads/b/t;-><init>(Lcom/appodeal/ads/o;II)V

    iget-object v1, p0, Lcom/appodeal/ads/b/i$a;->a:Lcom/appodeal/ads/b/i;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/appodeal/ads/b/i;->a(Lcom/appodeal/ads/b/i;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/b/i$a;->a:Lcom/appodeal/ads/b/i;

    invoke-static {}, Lcom/appodeal/ads/b/i;->f()Lcom/appodeal/ads/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/appodeal/ads/b/i;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/appodeal/ads/b/i$a;->a:Lcom/appodeal/ads/b/i;

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/appodeal/ads/b/i$a;->a:Lcom/appodeal/ads/b/i;

    invoke-static {v3}, Lcom/appodeal/ads/b/i;->a(Lcom/appodeal/ads/b/i;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v4, v2

    move-object v8, v7

    invoke-direct/range {v0 .. v9}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    invoke-static {v10, v0}, Lcom/appodeal/ads/b/i;->a(Lcom/appodeal/ads/b/i;Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    return-void
.end method
