.class Lcom/cmcm/adsdk/nativead/CMNativeAd$1;
.super Ljava/lang/Object;
.source "CMNativeAd.java"

# interfaces
.implements Lcom/cmcm/utils/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/CMNativeAd;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/CMNativeAd;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/CMNativeAd;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd$1;->this$0:Lcom/cmcm/adsdk/nativead/CMNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public handleDownload()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd$1;->this$0:Lcom/cmcm/adsdk/nativead/CMNativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->handleClick()V

    .line 189
    return-void
.end method
