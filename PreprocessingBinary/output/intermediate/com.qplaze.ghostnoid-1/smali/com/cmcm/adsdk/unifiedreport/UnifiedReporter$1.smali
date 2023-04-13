.class Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter$1;
.super Ljava/lang/Object;
.source "UnifiedReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->report(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;

.field final synthetic val$reportUrl:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;Ljava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter$1;->this$0:Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;

    iput-object p2, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter$1;->val$reportUrl:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter$1;->this$0:Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;

    invoke-static {v0}, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;->access$000(Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/utils/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cmcm/adsdk/unifiedreport/UnifiedReporter$1;->val$reportUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmcm/utils/f;->b(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Z)Ljava/lang/String;

    .line 86
    :cond_0
    return-void
.end method
