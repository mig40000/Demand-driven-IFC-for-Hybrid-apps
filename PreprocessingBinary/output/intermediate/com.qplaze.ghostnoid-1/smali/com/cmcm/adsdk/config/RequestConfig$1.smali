.class Lcom/cmcm/adsdk/config/RequestConfig$1;
.super Ljava/lang/Object;
.source "RequestConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/config/RequestConfig;->getBeans(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/config/RequestConfig;

.field final synthetic val$callback:Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

.field final synthetic val$placeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cmcm/adsdk/config/RequestConfig$1;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    iput-object p2, p0, Lcom/cmcm/adsdk/config/RequestConfig$1;->val$placeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmcm/adsdk/config/RequestConfig$1;->val$callback:Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestConfig$1;->this$0:Lcom/cmcm/adsdk/config/RequestConfig;

    iget-object v1, p0, Lcom/cmcm/adsdk/config/RequestConfig$1;->val$placeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcm/adsdk/config/RequestConfig$1;->val$callback:Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

    invoke-static {v0, v1, v2}, Lcom/cmcm/adsdk/config/RequestConfig;->access$000(Lcom/cmcm/adsdk/config/RequestConfig;Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V

    .line 102
    return-void
.end method
