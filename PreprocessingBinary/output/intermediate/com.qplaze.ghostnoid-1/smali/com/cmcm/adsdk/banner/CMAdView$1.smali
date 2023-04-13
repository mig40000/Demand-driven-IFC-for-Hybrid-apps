.class Lcom/cmcm/adsdk/banner/CMAdView$1;
.super Ljava/lang/Object;
.source "CMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/banner/CMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/banner/CMAdView;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/banner/CMAdView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cmcm/adsdk/banner/CMAdView$1;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    const-string v0, "CMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner refresh runnable execute :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$1;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/CMAdView;->internalLoadAd()V

    .line 67
    return-void
.end method
