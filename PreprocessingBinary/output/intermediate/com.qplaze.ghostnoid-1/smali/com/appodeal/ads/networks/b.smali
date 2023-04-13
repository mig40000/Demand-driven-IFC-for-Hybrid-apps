.class Lcom/appodeal/ads/networks/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/g/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    sget-object v0, Lcom/appodeal/ads/ao$a;->a:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/g/a;->b:Lcom/appodeal/ads/ao$a;

    :cond_0
    :goto_0
    sget-object v0, Lcom/appodeal/ads/e/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/appodeal/ads/ao$a;->a:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/e/a;->b:Lcom/appodeal/ads/ao$a;

    :cond_1
    :goto_1
    sget-object v0, Lcom/appodeal/ads/native_ad/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_5

    sget-object v0, Lcom/appodeal/ads/ao$a;->a:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/native_ad/a;->b:Lcom/appodeal/ads/ao$a;

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/appodeal/ads/ao$a;->c:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/g/a;->b:Lcom/appodeal/ads/ao$a;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/appodeal/ads/ao$a;->c:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/e/a;->b:Lcom/appodeal/ads/ao$a;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/appodeal/ads/ao$a;->c:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/native_ad/a;->b:Lcom/appodeal/ads/ao$a;

    goto :goto_2
.end method
