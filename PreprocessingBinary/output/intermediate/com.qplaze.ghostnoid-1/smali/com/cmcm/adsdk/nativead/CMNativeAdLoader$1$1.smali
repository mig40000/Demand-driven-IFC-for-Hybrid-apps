.class Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1$1;
.super Ljava/lang/Object;
.source "CMNativeAdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1$1;->this$1:Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    const-string v0, "CMNativeAdLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1$1;->this$1:Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;

    iget-object v2, v2, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;->this$0:Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    invoke-virtual {v2}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->getAdTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 15s no callback timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1$1;->this$1:Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;->this$0:Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->access$002(Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;I)I

    .line 310
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1$1;->this$1:Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader$1;->this$0:Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    const-string v1, "15timeout"

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->onNativeAdFailed(Ljava/lang/String;)V

    .line 311
    return-void
.end method
