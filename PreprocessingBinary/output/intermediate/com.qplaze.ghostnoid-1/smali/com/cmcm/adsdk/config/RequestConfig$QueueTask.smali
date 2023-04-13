.class Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;
.super Ljava/lang/Object;
.source "RequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/config/RequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueTask"
.end annotation


# instance fields
.field mCallback:Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

.field mPosId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;)V
    .locals 0
    .param p1, "posId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;->mPosId:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/cmcm/adsdk/config/RequestConfig$QueueTask;->mCallback:Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;

    .line 48
    return-void
.end method
