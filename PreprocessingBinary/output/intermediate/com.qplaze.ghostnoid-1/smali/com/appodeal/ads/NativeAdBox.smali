.class public Lcom/appodeal/ads/NativeAdBox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/NativeAdBox$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/appodeal/ads/NativeAdBoxListener;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appodeal/ads/NativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/NativeAdBox;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/NativeAdBox;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/NativeAdBox;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdBox;->c:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/NativeAdBox;->a:I

    iget-object v1, p0, Lcom/appodeal/ads/NativeAdBox;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/16 v2, 0x200

    invoke-static {v1, v2, v0}, Lcom/appodeal/ads/Appodeal;->cache(Landroid/app/Activity;II)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/appodeal/ads/NativeAdBox;)Lcom/appodeal/ads/NativeAdBoxListener;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdBox;->b:Lcom/appodeal/ads/NativeAdBoxListener;

    return-object v0
.end method

.method static synthetic c(Lcom/appodeal/ads/NativeAdBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/NativeAdBox;->a()V

    return-void
.end method


# virtual methods
.method public getNativeAds(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/appodeal/ads/NativeAd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdBox;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/NativeAdBox;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/NativeAdBox;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/appodeal/ads/NativeAdBox;->a()V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/appodeal/ads/NativeAdBox;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public load()V
    .locals 2

    sget-boolean v0, Lcom/appodeal/ads/Native;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must initialized Appodeal.NATIVE before"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "NativeAdBox start loading"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/NativeAdBox$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/NativeAdBox$a;-><init>(Lcom/appodeal/ads/NativeAdBox;Lcom/appodeal/ads/NativeAdBox$1;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->setNativeCallbacks(Lcom/appodeal/ads/NativeCallbacks;)V

    invoke-direct {p0}, Lcom/appodeal/ads/NativeAdBox;->a()V

    return-void
.end method

.method public setListener(Lcom/appodeal/ads/NativeAdBoxListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NativeAdBoxListener must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "NativeAdBox set listeners"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/NativeAdBox;->b:Lcom/appodeal/ads/NativeAdBoxListener;

    return-void
.end method

.method public setSize(I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-lez p1, :cond_0

    const/16 v0, 0xb

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid size value: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "NativeAdBox set size: %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    iput p1, p0, Lcom/appodeal/ads/NativeAdBox;->a:I

    return-void
.end method
