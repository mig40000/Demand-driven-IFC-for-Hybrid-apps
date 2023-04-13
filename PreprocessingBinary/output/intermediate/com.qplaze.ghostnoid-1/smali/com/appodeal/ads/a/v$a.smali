.class Lcom/appodeal/ads/a/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/a/v;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/a/v;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a/v$a;->a:Lcom/appodeal/ads/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/a/v;Lcom/appodeal/ads/a/v$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/a/v$a;-><init>(Lcom/appodeal/ads/a/v;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/a/v;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    return-void
.end method

.method public a(Lcom/appodeal/ads/networks/p;II)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/a/v$a;->a:Lcom/appodeal/ads/a/v;

    iget-object v1, p1, Lcom/appodeal/ads/networks/p;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/a/v;->a(Lcom/appodeal/ads/a/v;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/a/v$a;->a:Lcom/appodeal/ads/a/v;

    iget-object v1, p1, Lcom/appodeal/ads/networks/p;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/a/v;->b(Lcom/appodeal/ads/a/v;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/a/v$a;->a:Lcom/appodeal/ads/a/v;

    iget-object v1, p1, Lcom/appodeal/ads/networks/p;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/a/v;->c(Lcom/appodeal/ads/a/v;Ljava/lang/String;)Ljava/lang/String;

    iget v0, p1, Lcom/appodeal/ads/networks/p;->e:I

    invoke-static {}, Lcom/appodeal/ads/g;->d()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/appodeal/ads/networks/p;->f:I

    invoke-static {}, Lcom/appodeal/ads/g;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/a/v;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/appodeal/ads/networks/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/a/v$a;->a:Lcom/appodeal/ads/a/v;

    iget-object v1, p1, Lcom/appodeal/ads/networks/p;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/a/v;->d(Lcom/appodeal/ads/a/v;Ljava/lang/String;)Ljava/lang/String;

    new-instance v5, Lcom/appodeal/ads/a/q;

    invoke-static {}, Lcom/appodeal/ads/a/v;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-direct {v5, v0, p2, p3}, Lcom/appodeal/ads/a/q;-><init>(Lcom/appodeal/ads/h;II)V

    iget-object v0, p0, Lcom/appodeal/ads/a/v$a;->a:Lcom/appodeal/ads/a/v;

    iget v1, p1, Lcom/appodeal/ads/networks/p;->f:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/a/v;->a(Lcom/appodeal/ads/a/v;I)I

    iget-object v0, p0, Lcom/appodeal/ads/a/v$a;->a:Lcom/appodeal/ads/a/v;

    invoke-static {}, Lcom/appodeal/ads/a/v;->h()Lcom/appodeal/ads/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/appodeal/ads/a/v;->a(Ljava/lang/String;I)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/appodeal/ads/a/v$a;->a:Lcom/appodeal/ads/a/v;

    new-instance v0, Lorg/nexage/sourcekit/mraid/MRAIDView;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appodeal/ads/a/v$a;->a:Lcom/appodeal/ads/a/v;

    invoke-static {v3}, Lcom/appodeal/ads/a/v;->a(Lcom/appodeal/ads/a/v;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget v7, p1, Lcom/appodeal/ads/networks/p;->e:I

    iget v8, p1, Lcom/appodeal/ads/networks/p;->f:I

    move-object v6, v5

    invoke-direct/range {v0 .. v9}, Lorg/nexage/sourcekit/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/nexage/sourcekit/mraid/MRAIDViewListener;Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;IILorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V

    invoke-static {v10, v0}, Lcom/appodeal/ads/a/v;->a(Lcom/appodeal/ads/a/v;Lorg/nexage/sourcekit/mraid/MRAIDView;)Lorg/nexage/sourcekit/mraid/MRAIDView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/a/v;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/appodeal/ads/a/v;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
