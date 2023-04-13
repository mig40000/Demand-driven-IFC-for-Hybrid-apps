.class Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;
.super Ljava/lang/Object;
.source "CMNativeAdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;->this$0:Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1$1;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1$1;-><init>(Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method
