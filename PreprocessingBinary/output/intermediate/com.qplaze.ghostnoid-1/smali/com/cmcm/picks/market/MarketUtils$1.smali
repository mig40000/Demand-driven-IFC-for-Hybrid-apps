.class final Lcom/cmcm/picks/market/MarketUtils$1;
.super Ljava/lang/Object;
.source "MarketUtils.java"

# interfaces
.implements Lcom/cmcm/utils/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/market/MarketUtils;->smartGo2GooglePlayEx(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cmcm/picks/loader/Ad;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/cmcm/picks/market/MarketUtils$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmcm/picks/market/MarketUtils$1;->b:Lcom/cmcm/picks/loader/Ad;

    iput-object p3, p0, Lcom/cmcm/picks/market/MarketUtils$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmcm/picks/market/MarketUtils$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cmcm/picks/market/MarketUtils$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/picks/market/MarketUtils;->stopLoadingActivity(Landroid/content/Context;)Z

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-static {p1}, Lcom/cmcm/picks/market/MarketUtils;->isGooglePlayUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/market/MarketUtils$1;->b:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v1}, Lcom/cmcm/picks/loader/Ad;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    const-string v0, "click_failed"

    iget-object v1, p0, Lcom/cmcm/picks/market/MarketUtils$1;->b:Lcom/cmcm/picks/loader/Ad;

    iget-object v2, p0, Lcom/cmcm/picks/market/MarketUtils$1;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/market/MarketUtils$1;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cmcm/utils/Commons;->openGooglePlayByUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 137
    sget-object v0, Lcom/cmcm/picks/market/MarketUtils;->sAdTraceMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/cmcm/picks/market/MarketUtils$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    return-void
.end method
