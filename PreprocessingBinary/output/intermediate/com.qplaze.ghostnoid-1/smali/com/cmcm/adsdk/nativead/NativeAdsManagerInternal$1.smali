.class Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal$1;
.super Ljava/lang/Object;
.source "NativeAdsManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->notifyLoadProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdListListener:Lcom/cmcm/adsdk/nativead/INativeAdListListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdsManagerInternal;->mAdListListener:Lcom/cmcm/adsdk/nativead/INativeAdListListener;

    invoke-interface {v0}, Lcom/cmcm/adsdk/nativead/INativeAdListListener;->onLoadProcess()V

    .line 181
    :cond_0
    return-void
.end method
