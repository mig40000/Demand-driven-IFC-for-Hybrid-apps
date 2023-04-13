.class public Lcom/appodeal/ads/f/d;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/appodeal/ads/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/appodeal/ads/f/d;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/appodeal/ads/f/c;
    .locals 1

    const-string v0, "default"

    invoke-static {v0}, Lcom/appodeal/ads/f/d;->a(Ljava/lang/String;)Lcom/appodeal/ads/f/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/appodeal/ads/f/c;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/f/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/f/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/f/c;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/f/d;->b()V

    sget-object v0, Lcom/appodeal/ads/f/d;->b:Lcom/appodeal/ads/f/c;

    goto :goto_0
.end method

.method private static b()V
    .locals 4

    sget-object v0, Lcom/appodeal/ads/f/d;->b:Lcom/appodeal/ads/f/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/f/c;

    const/4 v1, -0x1

    const-string v2, "default"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/appodeal/ads/f/c;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V

    sput-object v0, Lcom/appodeal/ads/f/d;->b:Lcom/appodeal/ads/f/c;

    sget-object v0, Lcom/appodeal/ads/f/d;->a:Ljava/util/Map;

    const-string v1, "default"

    sget-object v2, Lcom/appodeal/ads/f/d;->b:Lcom/appodeal/ads/f/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
