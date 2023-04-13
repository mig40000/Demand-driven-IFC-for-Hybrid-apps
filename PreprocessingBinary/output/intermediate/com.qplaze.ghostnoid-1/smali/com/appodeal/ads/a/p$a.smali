.class Lcom/appodeal/ads/a/p$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/a/p;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/p$a;->a:Lcom/appodeal/ads/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/a/p;Lcom/appodeal/ads/a/p$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/a/p$a;-><init>(Lcom/appodeal/ads/a/p;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/a/p;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/a/p$a;->a:Lcom/appodeal/ads/a/p;

    invoke-static {v0, p1}, Lcom/appodeal/ads/a/p;->a(Lcom/appodeal/ads/a/p;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Lcom/appodeal/ads/a/q;

    invoke-static {}, Lcom/appodeal/ads/a/p;->h()Lcom/appodeal/ads/h;

    move-result-object v2

    iget-object v0, p0, Lcom/appodeal/ads/a/p$a;->a:Lcom/appodeal/ads/a/p;

    invoke-static {v0}, Lcom/appodeal/ads/a/p;->a(Lcom/appodeal/ads/a/p;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/appodeal/ads/a/p$a;->a:Lcom/appodeal/ads/a/p;

    invoke-static {v0}, Lcom/appodeal/ads/a/p;->b(Lcom/appodeal/ads/a/p;)J

    move-result-wide v6

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/a/q;-><init>(Lcom/appodeal/ads/h;IILjava/lang/String;J)V

    iget-object v0, p0, Lcom/appodeal/ads/a/p$a;->a:Lcom/appodeal/ads/a/p;

    invoke-static {}, Lcom/appodeal/ads/a/p;->h()Lcom/appodeal/ads/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/appodeal/ads/a/p;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v11

    iget-object v0, p0, Lcom/appodeal/ads/a/p$a;->a:Lcom/appodeal/ads/a/p;

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDView;

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/appodeal/ads/a/p$a;->a:Lcom/appodeal/ads/a/p;

    invoke-static {v5}, Lcom/appodeal/ads/a/p;->c(Lcom/appodeal/ads/a/p;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/appodeal/ads/a/p$a;->a:Lcom/appodeal/ads/a/p;

    invoke-static {v7}, Lcom/appodeal/ads/a/p;->d(Lcom/appodeal/ads/a/p;)I

    move-result v9

    iget-object v7, p0, Lcom/appodeal/ads/a/p$a;->a:Lcom/appodeal/ads/a/p;

    invoke-static {v7}, Lcom/appodeal/ads/a/p;->e(Lcom/appodeal/ads/a/p;)I

    move-result v10

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v2 .. v11}, Lorg/nexage/sourcekit/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;IILorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    invoke-static {v0, v2}, Lcom/appodeal/ads/a/p;->a(Lcom/appodeal/ads/a/p;Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/mraid/MRAIDView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/a/p;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    goto :goto_0
.end method
