.class final Lcom/unity3d/ads2/api/AdUnit$2;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads2/api/AdUnit;->setOrientation(Ljava/lang/Integer;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$orientation:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/unity3d/ads2/api/AdUnit$2;->val$orientation:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/unity3d/ads2/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads2/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/unity3d/ads2/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads2/adunit/AdUnitActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads2/api/AdUnit$2;->val$orientation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads2/adunit/AdUnitActivity;->setOrientation(I)V

    .line 179
    :cond_0
    return-void
.end method
