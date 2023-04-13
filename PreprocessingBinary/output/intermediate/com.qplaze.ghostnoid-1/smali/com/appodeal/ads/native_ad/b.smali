.class public Lcom/appodeal/ads/native_ad/b;
.super Lcom/appodeal/ads/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/native_ad/b$b;,
        Lcom/appodeal/ads/native_ad/b$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/af;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/b;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/b;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/b;IILcom/appodeal/ads/ac;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/native_ad/b;->a(IILcom/appodeal/ads/ac;I)V

    return-void
.end method

.method static synthetic c()Lcom/appodeal/ads/ac;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/native_ad/b;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ac;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/native_ad/b;->b:Lcom/appodeal/ads/ac;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/native_ad/b;

    invoke-direct {v0}, Lcom/appodeal/ads/native_ad/b;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ac;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/ac;-><init>(Ljava/lang/String;Lcom/appodeal/ads/af;)V

    sput-object v1, Lcom/appodeal/ads/native_ad/b;->b:Lcom/appodeal/ads/ac;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/native_ad/b;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;III)V
    .locals 7

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/appodeal/ads/networks/e;

    new-instance v2, Lcom/appodeal/ads/native_ad/b$a;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/appodeal/ads/native_ad/b$a;-><init>(Lcom/appodeal/ads/native_ad/b;Lcom/appodeal/ads/native_ad/b$1;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/networks/e;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/networks/e$a;IILjava/lang/String;I)V

    return-void
.end method
