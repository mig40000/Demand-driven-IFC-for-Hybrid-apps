.class Lcom/appodeal/ads/e/ae$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/e/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/e/ae;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/e/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/ae$a;->a:Lcom/appodeal/ads/e/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/e/ae;Lcom/appodeal/ads/e/ae$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/e/ae$a;-><init>(Lcom/appodeal/ads/e/ae;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/e/ae;->h()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/e/ae$a;->a:Lcom/appodeal/ads/e/ae;

    invoke-static {v0, p1}, Lcom/appodeal/ads/e/ae;->a(Lcom/appodeal/ads/e/ae;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/e/ae$a;->a:Lcom/appodeal/ads/e/ae;

    invoke-static {}, Lcom/appodeal/ads/e/ae;->h()Lcom/appodeal/ads/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/e/ae;->a(Ljava/lang/String;IZ)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/e/ae$a;->a:Lcom/appodeal/ads/e/ae;

    iget-object v2, p0, Lcom/appodeal/ads/e/ae$a;->a:Lcom/appodeal/ads/e/ae;

    invoke-static {v2}, Lcom/appodeal/ads/e/ae;->a(Lcom/appodeal/ads/e/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2, p3, v0}, Lcom/appodeal/ads/e/ae;->a(Lcom/appodeal/ads/e/ae;Ljava/lang/String;IILorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/appodeal/ads/e/ae;->h()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0
.end method
