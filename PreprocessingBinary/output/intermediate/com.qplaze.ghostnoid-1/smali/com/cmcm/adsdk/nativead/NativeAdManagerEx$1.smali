.class Lcom/cmcm/adsdk/nativead/NativeAdManagerEx$1;
.super Ljava/lang/Object;
.source "NativeAdManagerEx.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;->getAd(Z)Lcom/cmcm/baseapi/ads/INativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/cmcm/baseapi/ads/INativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;

.field final synthetic val$forceImageSuccess:Z


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;Z)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;

    iput-boolean p2, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx$1;->val$forceImageSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;->access$000(Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;)Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;->access$000(Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;)Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx$1;->val$forceImageSuccess:Z

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->getAd(Z)Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx$1;->call()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    return-object v0
.end method
