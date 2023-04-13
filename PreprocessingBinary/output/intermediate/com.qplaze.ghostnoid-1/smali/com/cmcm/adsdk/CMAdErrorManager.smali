.class public final Lcom/cmcm/adsdk/CMAdErrorManager;
.super Ljava/lang/Object;
.source "CMAdErrorManager.java"


# static fields
.field public static isCompleteConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmcm/adsdk/CMAdErrorManager;->isCompleteConfig:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIsCompleteConfig(Z)V
    .locals 0
    .param p0, "isCompleteConfig"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/cmcm/adsdk/CMAdErrorManager;->isCompleteConfig:Z

    .line 25
    return-void
.end method
