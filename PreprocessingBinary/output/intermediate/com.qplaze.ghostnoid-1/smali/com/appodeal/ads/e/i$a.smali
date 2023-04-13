.class Lcom/appodeal/ads/e/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/e/i;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/e/i;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/i$a;->a:Lcom/appodeal/ads/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/e/i;Lcom/appodeal/ads/e/i$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/e/i$a;-><init>(Lcom/appodeal/ads/e/i;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/e/i;->g()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i$a;->a:Lcom/appodeal/ads/e/i;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/appodeal/ads/e/i;->a(Lcom/appodeal/ads/e/i;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i$a;->a:Lcom/appodeal/ads/e/i;

    invoke-static {}, Lcom/appodeal/ads/e/i;->g()Lcom/appodeal/ads/ap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0, v4}, Lcom/appodeal/ads/e/i;->a(Ljava/lang/String;IZ)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v13

    new-instance v3, Lcom/appodeal/ads/e/j;

    invoke-static {}, Lcom/appodeal/ads/e/i;->g()Lcom/appodeal/ads/ap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i$a;->a:Lcom/appodeal/ads/e/i;

    invoke-static {v2}, Lcom/appodeal/ads/e/i;->a(Lcom/appodeal/ads/e/i;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i$a;->a:Lcom/appodeal/ads/e/i;

    invoke-static {v2}, Lcom/appodeal/ads/e/i;->b(Lcom/appodeal/ads/e/i;)J

    move-result-wide v8

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/appodeal/ads/e/j;-><init>(Lcom/appodeal/ads/ap;IILjava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appodeal/ads/e/i$a;->a:Lcom/appodeal/ads/e/i;

    new-instance v4, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;

    sget-object v5, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appodeal/ads/e/i$a;->a:Lcom/appodeal/ads/e/i;

    invoke-static {v7}, Lcom/appodeal/ads/e/i;->c(Lcom/appodeal/ads/e/i;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/appodeal/ads/e/i$a;->a:Lcom/appodeal/ads/e/i;

    invoke-static {v9}, Lcom/appodeal/ads/e/i;->d(Lcom/appodeal/ads/e/i;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/appodeal/ads/e/i$a;->a:Lcom/appodeal/ads/e/i;

    invoke-static {v10}, Lcom/appodeal/ads/e/i;->e(Lcom/appodeal/ads/e/i;)I

    move-result v10

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/appodeal/ads/e/i$a;->a:Lcom/appodeal/ads/e/i;

    invoke-static {v11}, Lcom/appodeal/ads/e/i;->f(Lcom/appodeal/ads/e/i;)I

    move-result v15

    move-object v11, v3

    move-object v12, v3

    invoke-direct/range {v4 .. v15}, Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILorg/nexage/sourcekit/mraid/MRAIDInterstitialListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;ZI)V

    invoke-static {v2, v4}, Lcom/appodeal/ads/e/i;->a(Lcom/appodeal/ads/e/i;Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;)Lorg/nexage/sourcekit/mraid/MRAIDInterstitial;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/e/i;->g()Lcom/appodeal/ads/ap;

    move-result-object v2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0
.end method
