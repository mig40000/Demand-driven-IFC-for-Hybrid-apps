.class Lcom/appodeal/ads/c/l$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/c/l;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/c/l$a;->a:Lcom/appodeal/ads/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/c/l;Lcom/appodeal/ads/c/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/c/l$a;-><init>(Lcom/appodeal/ads/c/l;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/c/l;->h()Lcom/appodeal/ads/w;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 15

    :try_start_0
    new-instance v7, Lcom/appodeal/ads/c/n;

    invoke-static {}, Lcom/appodeal/ads/c/l;->h()Lcom/appodeal/ads/w;

    move-result-object v2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v7, v2, v0, v1}, Lcom/appodeal/ads/c/n;-><init>(Lcom/appodeal/ads/w;II)V

    iget-object v2, p0, Lcom/appodeal/ads/c/l$a;->a:Lcom/appodeal/ads/c/l;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/appodeal/ads/c/l;->a(Lcom/appodeal/ads/c/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/appodeal/ads/c/l$a;->a:Lcom/appodeal/ads/c/l;

    invoke-static {}, Lcom/appodeal/ads/c/l;->h()Lcom/appodeal/ads/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/appodeal/ads/c/l;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v12

    iget-object v14, p0, Lcom/appodeal/ads/c/l$a;->a:Lcom/appodeal/ads/c/l;

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDView;

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/appodeal/ads/c/l$a;->a:Lcom/appodeal/ads/c/l;

    invoke-static {v5}, Lcom/appodeal/ads/c/l;->a(Lcom/appodeal/ads/c/l;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x12c

    const/16 v11, 0xfa

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v2 .. v13}, Lorg/nexage/sourcekit/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;ZIILorg/nexage/sourcekit/mraid/rtb/RtbInfo;Z)V

    invoke-static {v14, v2}, Lcom/appodeal/ads/c/l;->a(Lcom/appodeal/ads/c/l;Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/mraid/MRAIDView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/c/l;->h()Lcom/appodeal/ads/w;

    move-result-object v2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;)V

    goto :goto_0
.end method
