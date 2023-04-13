.class Lcom/appodeal/ads/a/aa$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/a/aa;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/a/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/aa$a;->a:Lcom/appodeal/ads/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/a/aa;Lcom/appodeal/ads/a/aa$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/a/aa$a;-><init>(Lcom/appodeal/ads/a/aa;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/a/aa;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

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
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/networks/u;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/appodeal/ads/networks/u;->a:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/a/aa$a;->a:Lcom/appodeal/ads/a/aa;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/appodeal/ads/a/aa;->a(Lcom/appodeal/ads/a/aa;Ljava/lang/String;)Ljava/lang/String;

    new-instance v5, Lcom/appodeal/ads/a/q;

    invoke-static {}, Lcom/appodeal/ads/a/aa;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-direct {v5, v0, p2, p3}, Lcom/appodeal/ads/a/q;-><init>(Lcom/appodeal/ads/h;II)V

    iget-object v0, p0, Lcom/appodeal/ads/a/aa$a;->a:Lcom/appodeal/ads/a/aa;

    invoke-static {}, Lcom/appodeal/ads/a/aa;->h()Lcom/appodeal/ads/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/appodeal/ads/a/aa;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/appodeal/ads/a/aa$a;->a:Lcom/appodeal/ads/a/aa;

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDView;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appodeal/ads/a/aa$a;->a:Lcom/appodeal/ads/a/aa;

    invoke-static {v3}, Lcom/appodeal/ads/a/aa;->a(Lcom/appodeal/ads/a/aa;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/appodeal/ads/a/aa$a;->a:Lcom/appodeal/ads/a/aa;

    invoke-static {v6}, Lcom/appodeal/ads/a/aa;->b(Lcom/appodeal/ads/a/aa;)I

    move-result v7

    iget-object v6, p0, Lcom/appodeal/ads/a/aa$a;->a:Lcom/appodeal/ads/a/aa;

    invoke-static {v6}, Lcom/appodeal/ads/a/aa;->c(Lcom/appodeal/ads/a/aa;)I

    move-result v8

    move-object v6, v5

    invoke-direct/range {v0 .. v9}, Lorg/nexage/sourcekit/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;IILorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    invoke-static {v10, v0}, Lcom/appodeal/ads/a/aa;->a(Lcom/appodeal/ads/a/aa;Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/mraid/MRAIDView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/a/aa;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    goto :goto_0
.end method
