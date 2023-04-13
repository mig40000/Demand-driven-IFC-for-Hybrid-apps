.class Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$1;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Lcom/cmcm/adsdk/config/RequestConfig$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->loadAd()V
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
    .line 104
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "posId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "beans":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/adsdk/config/PosBean;>;"
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$1;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-static {v0, p2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->access$000(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;Ljava/util/List;)V

    .line 108
    return-void
.end method
