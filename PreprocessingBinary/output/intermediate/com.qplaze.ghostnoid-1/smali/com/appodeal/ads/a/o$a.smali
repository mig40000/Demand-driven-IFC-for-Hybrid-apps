.class Lcom/appodeal/ads/a/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/a/o;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/o$a;->a:Lcom/appodeal/ads/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/a/o;Lcom/appodeal/ads/a/o$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/a/o$a;-><init>(Lcom/appodeal/ads/a/o;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/a/o;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 15

    :try_start_0
    new-instance v7, Lcom/appodeal/ads/a/q;

    invoke-static {}, Lcom/appodeal/ads/a/o;->h()Lcom/appodeal/ads/h;

    move-result-object v2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v7, v2, v0, v1}, Lcom/appodeal/ads/a/q;-><init>(Lcom/appodeal/ads/h;II)V

    iget-object v2, p0, Lcom/appodeal/ads/a/o$a;->a:Lcom/appodeal/ads/a/o;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/appodeal/ads/a/o;->a(Lcom/appodeal/ads/a/o;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/appodeal/ads/a/o$a;->a:Lcom/appodeal/ads/a/o;

    invoke-static {v2}, Lcom/appodeal/ads/a/o;->a(Lcom/appodeal/ads/a/o;)I

    move-result v2

    invoke-static {}, Lcom/appodeal/ads/g;->d()I

    move-result v3

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/appodeal/ads/a/o$a;->a:Lcom/appodeal/ads/a/o;

    invoke-static {v2}, Lcom/appodeal/ads/a/o;->b(Lcom/appodeal/ads/a/o;)I

    move-result v2

    invoke-static {}, Lcom/appodeal/ads/g;->c()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/a/o;->h()Lcom/appodeal/ads/h;

    move-result-object v2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/appodeal/ads/a/o$a;->a:Lcom/appodeal/ads/a/o;

    invoke-static {}, Lcom/appodeal/ads/a/o;->h()Lcom/appodeal/ads/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/h;->a()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/appodeal/ads/a/o;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v12

    iget-object v14, p0, Lcom/appodeal/ads/a/o$a;->a:Lcom/appodeal/ads/a/o;

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDView;

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/appodeal/ads/a/o$a;->a:Lcom/appodeal/ads/a/o;

    invoke-static {v5}, Lcom/appodeal/ads/a/o;->c(Lcom/appodeal/ads/a/o;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/appodeal/ads/a/o$a;->a:Lcom/appodeal/ads/a/o;

    invoke-static {v8}, Lcom/appodeal/ads/a/o;->a(Lcom/appodeal/ads/a/o;)I

    move-result v10

    iget-object v8, p0, Lcom/appodeal/ads/a/o$a;->a:Lcom/appodeal/ads/a/o;

    invoke-static {v8}, Lcom/appodeal/ads/a/o;->d(Lcom/appodeal/ads/a/o;)I

    move-result v11

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v2 .. v13}, Lorg/nexage/sourcekit/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;ZIILorg/nexage/sourcekit/mraid/rtb/RtbInfo;Z)V

    invoke-static {v14, v2}, Lcom/appodeal/ads/a/o;->a(Lcom/appodeal/ads/a/o;Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/mraid/MRAIDView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/a/o;->h()Lcom/appodeal/ads/h;

    move-result-object v2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    goto :goto_0
.end method
