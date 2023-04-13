.class public Lcom/cmcm/picks/mixad/MixBoxAdHelper;
.super Ljava/lang/Object;
.source "MixBoxAdHelper.java"


# static fields
.field private static final THREADNAME:Ljava/lang/String; = "clearUselessPkg"

.field private static final TIME_GMT:I = 0x2

.field private static final TIME_LOCAL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyzeListStr(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "strPosId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/mixad/MixBeans;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "listJsonStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/cmcm/picks/mixad/MixBeans;

    invoke-direct {v0}, Lcom/cmcm/picks/mixad/MixBeans;-><init>()V

    .line 35
    iput-object p0, v0, Lcom/cmcm/picks/mixad/MixBeans;->posId:Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->context:Landroid/content/Context;

    .line 37
    const-string v4, "source"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->source:I

    .line 38
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->type:I

    .line 39
    const-string v4, "priority"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->priority:Ljava/lang/Integer;

    .line 40
    const-string v4, "mt_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->mt_type:I

    .line 41
    const-string v4, "giftimes"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->giftimes:I

    .line 42
    const-string v4, "localtime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->localtime:I

    .line 43
    const-string v4, "box_reddot"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->box_reddot:I

    .line 44
    const-string v4, "shift"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->shift:I

    .line 45
    const-string v4, "frequency"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->frequency:I

    .line 47
    const-string v4, "button_txt"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->button_txt:Ljava/lang/String;

    .line 48
    const-string v4, "desc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->desc:Ljava/lang/String;

    .line 49
    const-string v4, "pic_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url:Ljava/lang/String;

    .line 50
    const-string v4, "pkg_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->pkg_url:Ljava/lang/String;

    .line 51
    const-string v4, "st"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->st:Ljava/lang/String;

    .line 52
    const-string v4, "et"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->et:Ljava/lang/String;

    .line 53
    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    .line 55
    const-string v4, "pkg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/cmcm/picks/mixad/MixBoxAdHelper;->updatePkgs(Ljava/lang/String;Lcom/cmcm/picks/mixad/MixBeans;)V

    .line 57
    const-string v4, "deeplink"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->deeplink:Ljava/lang/String;

    .line 58
    const-string v4, "background"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->background:Ljava/lang/String;

    .line 60
    const-string v4, "showtime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->splash_showtime:I

    .line 61
    const-string v4, "pic_url_w400"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url_w400:Ljava/lang/String;

    .line 62
    const-string v4, "pic_url_w480"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url_w480:Ljava/lang/String;

    .line 63
    const-string v4, "pic_url_w540"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url_w540:Ljava/lang/String;

    .line 64
    const-string v4, "pic_url_w720"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url_w720:Ljava/lang/String;

    .line 65
    const-string v4, "pic_url_w1080"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url_w1080:Ljava/lang/String;

    .line 67
    const-string v4, "res_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->res_type:I

    .line 68
    const-string v4, "des"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->des:Ljava/lang/String;

    .line 69
    const-string v4, "third_imp_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->third_imp_url:Ljava/lang/String;

    .line 70
    const-string v4, "click_tracking_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/picks/mixad/MixBeans;->click_tracking_url:Ljava/lang/String;

    .line 71
    const-string v4, "sug_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/cmcm/picks/mixad/MixBeans;->sug_type:I

    .line 72
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 74
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    .line 77
    goto :goto_1
.end method

.method public static clearUselessPkg(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p0, "strPosId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/mixad/MixBeans;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "mListAd":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/picks/mixad/MixBeans;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    return-void

    .line 89
    :cond_1
    invoke-static {}, Lcom/cmcm/picks/mixad/MixSPUtil;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 90
    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 91
    :goto_0
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/picks/mixad/MixBeans;

    iget-object v1, v1, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v1}, Lcom/cmcm/picks/mixad/MixBeans;->getTitleHashCode()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_4

    .line 102
    invoke-static {p0, v0}, Lcom/cmcm/picks/mixad/MixSPUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 90
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNowFormatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTodayIntevalDaysEx(Ljava/lang/String;I)I
    .locals 8
    .param p0, "startDate"    # Ljava/lang/String;
    .param p1, "nValueDefault"    # I

    .prologue
    .line 199
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    .end local p1    # "nValueDefault":I
    :cond_0
    :goto_0
    return p1

    .line 202
    .restart local p1    # "nValueDefault":I
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 203
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 205
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    long-to-int p1, v0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isInLimitTime(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p0, "localtime"    # I
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;
    .param p3, "days"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd-HH"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x2

    if-ne v3, p0, :cond_0

    .line 136
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 139
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 142
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 143
    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    :cond_1
    :goto_0
    return v0

    .line 146
    :cond_2
    if-gtz p3, :cond_3

    .line 147
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 148
    goto :goto_0

    .line 153
    :cond_3
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 154
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 155
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v5, v6}, Ljava/util/Date;->setDate(I)V

    .line 156
    invoke-virtual {v4, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v5, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 159
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isTodayHadFlag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "posid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 173
    .line 174
    const-string v1, ""

    invoke-static {p0, p1, v1}, Lcom/cmcm/picks/mixad/MixSPUtil;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/cmcm/picks/mixad/MixBoxAdHelper;->getTodayIntevalDaysEx(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setTodayHadFlag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "posId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "yyyyMMdd"

    invoke-static {v0}, Lcom/cmcm/picks/mixad/MixBoxAdHelper;->getNowFormatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {p0, p1, v0}, Lcom/cmcm/picks/mixad/MixSPUtil;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static updatePkgs(Ljava/lang/String;Lcom/cmcm/picks/mixad/MixBeans;)V
    .locals 6
    .param p0, "strPkg"    # Ljava/lang/String;
    .param p1, "beans"    # Lcom/cmcm/picks/mixad/MixBeans;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_2

    array-length v1, v0

    if-gtz v1, :cond_3

    .line 116
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v2

    .line 119
    :cond_3
    array-length v3, v0

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_6

    aget-object v4, v0, v1

    .line 120
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 121
    iget-object v5, p1, Lcom/cmcm/picks/mixad/MixBeans;->mlistExcludePkgs:Ljava/util/List;

    if-nez v5, :cond_4

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p1, Lcom/cmcm/picks/mixad/MixBeans;->mlistExcludePkgs:Ljava/util/List;

    .line 124
    :cond_4
    iget-object v5, p1, Lcom/cmcm/picks/mixad/MixBeans;->mlistExcludePkgs:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_6
    iget-object v0, p1, Lcom/cmcm/picks/mixad/MixBeans;->mlistExcludePkgs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/cmcm/picks/mixad/MixBeans;->mlistExcludePkgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p1, Lcom/cmcm/picks/mixad/MixBeans;->mlistExcludePkgs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    goto :goto_0
.end method
