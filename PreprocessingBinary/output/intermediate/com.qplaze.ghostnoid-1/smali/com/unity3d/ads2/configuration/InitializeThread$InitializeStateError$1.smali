.class Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError$1;
.super Ljava/lang/Object;
.source "InitializeThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError;->execute()Lcom/unity3d/ads2/configuration/InitializeThread$InitializeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError;

.field final synthetic val$listener:Lcom/unity3d/ads2/IUnityAdsListener;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError;Lcom/unity3d/ads2/IUnityAdsListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError$1;->this$0:Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError;

    iput-object p2, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError$1;->val$listener:Lcom/unity3d/ads2/IUnityAdsListener;

    iput-object p3, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError$1;->val$listener:Lcom/unity3d/ads2/IUnityAdsListener;

    sget-object v1, Lcom/unity3d/ads2/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/ads2/UnityAds$UnityAdsError;

    iget-object v2, p0, Lcom/unity3d/ads2/configuration/InitializeThread$InitializeStateError$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads2/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads2/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 369
    return-void
.end method