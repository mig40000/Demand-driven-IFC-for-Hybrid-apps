.class final Lcom/unity3d/ads2/UnityAds$2;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads2/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads2/UnityAds$UnityAdsError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Lcom/unity3d/ads2/UnityAds$UnityAdsError;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$listener:Lcom/unity3d/ads2/IUnityAdsListener;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/ads2/IUnityAdsListener;Lcom/unity3d/ads2/UnityAds$UnityAdsError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/unity3d/ads2/UnityAds$2;->val$listener:Lcom/unity3d/ads2/IUnityAdsListener;

    iput-object p2, p0, Lcom/unity3d/ads2/UnityAds$2;->val$error:Lcom/unity3d/ads2/UnityAds$UnityAdsError;

    iput-object p3, p0, Lcom/unity3d/ads2/UnityAds$2;->val$errorMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ads2/UnityAds$2;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/unity3d/ads2/UnityAds$2;->val$listener:Lcom/unity3d/ads2/IUnityAdsListener;

    iget-object v1, p0, Lcom/unity3d/ads2/UnityAds$2;->val$error:Lcom/unity3d/ads2/UnityAds$UnityAdsError;

    iget-object v2, p0, Lcom/unity3d/ads2/UnityAds$2;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads2/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads2/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/unity3d/ads2/UnityAds$2;->val$listener:Lcom/unity3d/ads2/IUnityAdsListener;

    iget-object v1, p0, Lcom/unity3d/ads2/UnityAds$2;->val$placementId:Ljava/lang/String;

    sget-object v2, Lcom/unity3d/ads2/UnityAds$FinishState;->ERROR:Lcom/unity3d/ads2/UnityAds$FinishState;

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads2/IUnityAdsListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads2/UnityAds$FinishState;)V

    .line 347
    return-void
.end method