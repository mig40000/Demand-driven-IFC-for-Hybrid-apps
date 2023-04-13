.class Lcom/cmcm/adsdk/config/RequestUFS$UfsRunnable;
.super Ljava/lang/Object;
.source "RequestUFS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/config/RequestUFS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UfsRunnable"
.end annotation


# instance fields
.field private mStrUFS:Ljava/lang/String;

.field final synthetic this$0:Lcom/cmcm/adsdk/config/RequestUFS;


# direct methods
.method public constructor <init>(Lcom/cmcm/adsdk/config/RequestUFS;Ljava/lang/String;)V
    .locals 0
    .param p2, "strUfs"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cmcm/adsdk/config/RequestUFS$UfsRunnable;->this$0:Lcom/cmcm/adsdk/config/RequestUFS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/cmcm/adsdk/config/RequestUFS$UfsRunnable;->mStrUFS:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS$UfsRunnable;->this$0:Lcom/cmcm/adsdk/config/RequestUFS;

    const-string v1, "http://ufs.adkmob.com/p/"

    iget-object v2, p0, Lcom/cmcm/adsdk/config/RequestUFS$UfsRunnable;->mStrUFS:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cmcm/adsdk/config/RequestUFS;->access$000(Lcom/cmcm/adsdk/config/RequestUFS;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ltz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/cmcm/adsdk/config/RequestUFS$UfsRunnable;->this$0:Lcom/cmcm/adsdk/config/RequestUFS;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/config/RequestUFS;->access$100(Lcom/cmcm/adsdk/config/RequestUFS;[B)V

    .line 144
    :cond_0
    return-void
.end method
