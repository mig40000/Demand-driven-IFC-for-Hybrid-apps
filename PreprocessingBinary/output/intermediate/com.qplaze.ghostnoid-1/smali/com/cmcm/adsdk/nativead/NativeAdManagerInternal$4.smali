.class Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$4;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$4;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$4;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->checkIfAllfinished()V

    .line 380
    return-void
.end method
