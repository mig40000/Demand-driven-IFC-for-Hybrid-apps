.class final Lcom/unity3d/ads2/api/Listener$3;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads2/api/Listener;->sendFinishEvent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/unity3d/ads2/api/Listener$3;->val$placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads2/api/Listener$3;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/unity3d/ads2/UnityAds;->getListener()Lcom/unity3d/ads2/IUnityAdsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads2/api/Listener$3;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads2/api/Listener$3;->val$result:Ljava/lang/String;

    invoke-static {v2}, Lcom/unity3d/ads2/UnityAds$FinishState;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads2/UnityAds$FinishState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads2/IUnityAdsListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads2/UnityAds$FinishState;)V

    .line 42
    return-void
.end method
