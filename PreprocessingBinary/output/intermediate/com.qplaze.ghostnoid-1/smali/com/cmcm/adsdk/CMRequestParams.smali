.class public Lcom/cmcm/adsdk/CMRequestParams;
.super Ljava/lang/Object;
.source "CMRequestParams.java"


# static fields
.field public static final KEY_BANNER_VIEW_SIZE:Ljava/lang/String; = "key_banner_view_size"

.field public static final KEY_REPORT_SHOW_IGNORE_VIEW:Ljava/lang/String; = "report_show_ignore_view"

.field public static final KEY_SELECT_ALL_PRIORITYAD:Ljava/lang/String; = "key_select_all_priority"


# instance fields
.field protected mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public getReportShowIgnoreView()Z
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    const-string v1, "report_show_ignore_view"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectAllPriorityAd()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    const-string v1, "key_select_all_priority"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    const-string v1, "key_select_all_priority"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setReportShowIgnoreView(Z)V
    .locals 3
    .param p1, "ignoreView"    # Z

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    const-string v1, "report_show_ignore_view"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    return-void
.end method

.method public setSelectAllPriorityAd(Z)V
    .locals 3
    .param p1, "select"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/cmcm/adsdk/CMRequestParams;->mParams:Ljava/util/Map;

    const-string v1, "key_select_all_priority"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-void
.end method
