.class final Lcom/cmcm/adsdk/CMAdManager$1;
.super Ljava/lang/Object;
.source "CMAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/CMAdManager;->freshConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/cmcm/picks/loader/f;->a()Lcom/cmcm/picks/loader/f;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/f;->a(Ljava/lang/String;)Z

    .line 83
    return-void
.end method
