.class public Lcom/cmcm/utils/ReportFactory;
.super Ljava/lang/Object;
.source "ReportFactory.java"


# static fields
.field public static final CLICK:Ljava/lang/String; = "click"

.field public static final CLICK_FAILED:Ljava/lang/String; = "click_failed"

.field public static final DETAIL_CLICK:Ljava/lang/String; = "detail_click"

.field public static final DOWN_SUCCESS:Ljava/lang/String; = "down_success"

.field public static final INSTALL_SUCCESS:Ljava/lang/String; = "install_success"

.field public static final MPA_CLICK:Ljava/lang/String; = "mpa_click"

.field public static final MPA_SHOW:Ljava/lang/String; = "mpa_show"

.field public static final VAST_CLICK:Ljava/lang/String; = "vast_click"

.field public static final VAST_PLAY:Ljava/lang/String; = "vast_play"

.field public static final VIEW:Ljava/lang/String; = "view"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLoadingPage(Lcom/cmcm/picks/loader/Ad;)I
    .locals 3
    .param p0, "ad"    # Lcom/cmcm/picks/loader/Ad;

    .prologue
    const/4 v0, 0x0

    .line 132
    if-nez p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/Commons;->isHasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->isDeepLink()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    const/4 v0, 0x2

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static parsePublicData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmcm/picks/loader/e;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "rf"    # Ljava/lang/String;
    .param p2, "posid"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/cmcm/utils/ReportFactory;->parsePublicData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    return-object v0
.end method

.method private static parsePublicData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "rf"    # Ljava/lang/String;
    .param p2, "posid"    # Ljava/lang/String;
    .param p3, "ac"    # I

    .prologue
    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 p1, 0x0

    .line 107
    :cond_0
    const-string v0, "view"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const/16 v0, 0x32

    invoke-static {p2, v0}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 109
    :cond_1
    const-string v0, "click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const/16 v0, 0x3c

    invoke-static {p2, v0}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "detail_click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    const/16 v0, 0x3d

    invoke-static {p2, v0}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "install_success"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    const/16 v0, 0x26

    invoke-static {p2, v0}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_4
    const-string v0, "down_success"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    const/16 v0, 0x24

    invoke-static {p2, v0}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_5
    const-string v0, "click_failed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    const/16 v0, 0x3e

    invoke-static {p2, v0}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_6
    const-string v0, "vast_play"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    const/16 v0, 0x36

    invoke-static {p2, v0}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_7
    const-string v0, "vast_click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    const/16 v0, 0x40

    invoke-static {p2, v0}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :cond_8
    const-string v0, "mpa_show"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    invoke-static {p2, p3}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    goto/16 :goto_0

    .line 125
    :cond_9
    const-string v0, "mpa_click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    invoke-static {p2, p3}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/picks/loader/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/e;

    move-result-object v0

    goto/16 :goto_0

    .line 128
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p2, "posid"    # Ljava/lang/String;
    .param p3, "rf"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    return-void
.end method

.method public static report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p2, "posid"    # Ljava/lang/String;
    .param p3, "rf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmcm/picks/loader/Ad;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "extraReportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 33
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v7}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method private static report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p2, "posid"    # Ljava/lang/String;
    .param p3, "rf"    # Ljava/lang/String;
    .param p5, "o"    # Ljava/lang/Object;
    .param p6, "o1"    # Ljava/lang/Object;
    .param p7, "ac"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmcm/picks/loader/Ad;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p4, "extraReportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public static report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p2, "posid"    # Ljava/lang/String;
    .param p3, "rf"    # Ljava/lang/String;
    .param p5, "placementId"    # Ljava/lang/String;
    .param p6, "rawJson"    # Ljava/lang/String;
    .param p7, "ac"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmcm/picks/loader/Ad;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p4, "extraReportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 37
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {p0, p3, p2, p7}, Lcom/cmcm/utils/ReportFactory;->parsePublicData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/picks/loader/e;

    move-result-object v2

    .line 42
    if-eqz v2, :cond_0

    .line 45
    const-string v0, "view"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    :cond_2
    const-string v0, "click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    invoke-static {p1}, Lcom/cmcm/utils/ReportFactory;->getLoadingPage(Lcom/cmcm/picks/loader/Ad;)I

    move-result v0

    .line 50
    :goto_1
    invoke-virtual {v2, v0}, Lcom/cmcm/picks/loader/e;->a(I)V

    .line 52
    :cond_3
    invoke-virtual {v2, p4}, Lcom/cmcm/picks/loader/e;->a(Ljava/util/Map;)V

    .line 53
    invoke-static {p1}, Lcom/cmcm/utils/ReportFactory;->toBuinessDataItem(Lcom/cmcm/picks/loader/Ad;)Lcom/cmcm/picks/loader/d;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p5, p6}, Lcom/cmcm/picks/loader/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v3, Lcom/cmcm/utils/c;

    invoke-direct {v3}, Lcom/cmcm/utils/c;-><init>()V

    .line 56
    invoke-virtual {v3, v0, v2}, Lcom/cmcm/utils/c;->a(Lcom/cmcm/picks/loader/d;Lcom/cmcm/picks/loader/e;)V

    .line 57
    if-eqz v3, :cond_4

    .line 58
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/cmcm/utils/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    :cond_4
    const-string v0, "view"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    invoke-virtual {p1}, Lcom/cmcm/picks/loader/Ad;->getThirdImpUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/utils/ReportFactory;->reportTracking(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cmcm/picks/loader/Ad;->setShowed(Z)V

    .line 63
    new-instance v0, Lcom/cmcm/utils/ReportFactory$1;

    invoke-direct {v0, p2, p1}, Lcom/cmcm/utils/ReportFactory$1;-><init>(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 69
    :cond_5
    const-string v0, "click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/cmcm/picks/loader/Ad;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/utils/ReportFactory;->reportTracking(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public static reportForMpa(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p2, "posid"    # Ljava/lang/String;
    .param p3, "rf"    # Ljava/lang/String;
    .param p5, "ac"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmcm/picks/loader/Ad;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, "extraReportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public static reportTracking(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 150
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 151
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 152
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_0

    .line 154
    new-instance v3, Lcom/cmcm/utils/ReportFactory$2;

    invoke-direct {v3, v2}, Lcom/cmcm/utils/ReportFactory$2;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v3}, Lcom/cmcm/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 169
    :cond_1
    return-void
.end method

.method private static toBuinessDataItem(Lcom/cmcm/picks/loader/Ad;)Lcom/cmcm/picks/loader/d;
    .locals 1
    .param p0, "ad"    # Lcom/cmcm/picks/loader/Ad;

    .prologue
    const/4 v0, -0x1

    .line 92
    invoke-static {p0, v0, v0, v0}, Lcom/cmcm/utils/ReportFactory;->toBuinessDataItem(Lcom/cmcm/picks/loader/Ad;III)Lcom/cmcm/picks/loader/d;

    move-result-object v0

    return-object v0
.end method

.method private static toBuinessDataItem(Lcom/cmcm/picks/loader/Ad;III)Lcom/cmcm/picks/loader/d;
    .locals 7
    .param p0, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p1, "duration"    # I
    .param p2, "playtime"    # I
    .param p3, "event"    # I

    .prologue
    .line 96
    new-instance v0, Lcom/cmcm/picks/loader/d;

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->getResType()I

    move-result v2

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->getDes()Ljava/lang/String;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/cmcm/picks/loader/d;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 97
    return-object v0
.end method
