.class Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$AddObserversToViewTree;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddObserversToViewTree"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "AddObserversToViewTree"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V
    .locals 1

    const-string v0, "AddObserversToViewTree"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$AddObserversToViewTree;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    return-void
.end method


# virtual methods
.method protected execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$AddObserversToViewTree;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->access$000(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V

    const/4 v0, 0x0

    return-object v0
.end method
