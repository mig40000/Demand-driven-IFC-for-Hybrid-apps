.class Lcom/cmcm/adsdk/CMAdManagerFactory$1;
.super Ljava/lang/Object;
.source "CMAdManagerFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/CMAdManagerFactory;->clearVastCache(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/CMAdManagerFactory;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/CMAdManagerFactory;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cmcm/adsdk/CMAdManagerFactory$1;->this$0:Lcom/cmcm/adsdk/CMAdManagerFactory;

    iput-object p2, p0, Lcom/cmcm/adsdk/CMAdManagerFactory$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/cmcm/picks/vastvideo/b;->a()Lcom/cmcm/picks/vastvideo/b;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/CMAdManagerFactory$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/b;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method
