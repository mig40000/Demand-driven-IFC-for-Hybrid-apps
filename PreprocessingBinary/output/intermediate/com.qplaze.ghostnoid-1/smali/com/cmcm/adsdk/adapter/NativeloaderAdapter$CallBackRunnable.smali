.class Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;
.super Ljava/lang/Object;
.source "NativeloaderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallBackRunnable"
.end annotation


# instance fields
.field private errorInfo:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

.field final synthetic this$0:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;Ljava/lang/String;Lcom/cmcm/baseapi/ads/INativeAd;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;
    .param p5, "errorInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/baseapi/ads/INativeAd;>;"
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->this$0:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->type:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->nativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    .line 71
    iput-object p4, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->list:Ljava/util/List;

    .line 72
    iput-object p5, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->errorInfo:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->this$0:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-static {v0}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->access$000(Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;)Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "adload_ads"

    iget-object v1, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->this$0:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-static {v0}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->access$000(Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;)Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;->onNativeAdLoaded(Ljava/util/List;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v0, "adload_ad"

    iget-object v1, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->this$0:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-static {v0}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->access$000(Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;)Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->nativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;->onNativeAdLoaded(Lcom/cmcm/baseapi/ads/INativeAd;)V

    goto :goto_0

    .line 82
    :cond_2
    const-string v0, "failed"

    iget-object v1, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->this$0:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    invoke-static {v0}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->access$000(Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;)Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;->errorInfo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;->onNativeAdFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
