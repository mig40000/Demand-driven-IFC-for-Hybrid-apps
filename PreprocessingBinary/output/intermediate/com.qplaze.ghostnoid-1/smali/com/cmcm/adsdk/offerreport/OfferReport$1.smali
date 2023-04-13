.class Lcom/cmcm/adsdk/offerreport/OfferReport$1;
.super Ljava/lang/Object;
.source "OfferReport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/offerreport/OfferReport;->report(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/offerreport/OfferReport;

.field final synthetic val$ac:I

.field final synthetic val$logType:I

.field final synthetic val$offerStr:Ljava/lang/String;

.field final synthetic val$posId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/offerreport/OfferReport;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->this$0:Lcom/cmcm/adsdk/offerreport/OfferReport;

    iput-object p2, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->val$offerStr:Ljava/lang/String;

    iput p3, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->val$logType:I

    iput p4, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->val$ac:I

    iput-object p5, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->val$posId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->this$0:Lcom/cmcm/adsdk/offerreport/OfferReport;

    invoke-static {v0}, Lcom/cmcm/adsdk/offerreport/OfferReport;->access$000(Lcom/cmcm/adsdk/offerreport/OfferReport;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/utils/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->this$0:Lcom/cmcm/adsdk/offerreport/OfferReport;

    invoke-static {v0}, Lcom/cmcm/adsdk/offerreport/OfferReport;->access$100(Lcom/cmcm/adsdk/offerreport/OfferReport;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->this$0:Lcom/cmcm/adsdk/offerreport/OfferReport;

    iget-object v4, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->val$offerStr:Ljava/lang/String;

    iget v5, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->val$logType:I

    iget v6, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->val$ac:I

    iget-object v7, p0, Lcom/cmcm/adsdk/offerreport/OfferReport$1;->val$posId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/cmcm/adsdk/offerreport/OfferReport;->access$200(Lcom/cmcm/adsdk/offerreport/OfferReport;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/adsdk/unifiedreport/UnifiedNetUtil;->doPostString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method
