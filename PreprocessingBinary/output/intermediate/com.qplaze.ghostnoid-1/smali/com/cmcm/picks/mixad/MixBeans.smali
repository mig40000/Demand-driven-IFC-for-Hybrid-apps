.class public Lcom/cmcm/picks/mixad/MixBeans;
.super Ljava/lang/Object;
.source "MixBeans.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/picks/mixad/MixBeans$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cmcm/picks/mixad/MixBeans;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_CLICKED:Ljava/lang/String; = "clicked"

.field private static final KEY_CLICKED_TIME:Ljava/lang/String; = "clickedTime"

.field private static final KEY_SHOWED:Ljava/lang/String; = "showed"

.field private static final KEY_SHOWED_TIME:Ljava/lang/String; = "showedTime"

.field public static final SOURCE_HOT:I = 0x1

.field public static final SOURCE_OTHER:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_BROWSER:I = 0x100

.field private static final TYPE_DEEPLINK:I = 0x200

.field private static final TYPE_GP:I = 0x8

.field private static final TYPE_WEBVIEW:I = 0x40


# instance fields
.field background:Ljava/lang/String;

.field box_reddot:I

.field button_txt:Ljava/lang/String;

.field click_tracking_url:Ljava/lang/String;

.field context:Landroid/content/Context;

.field deeplink:Ljava/lang/String;

.field des:Ljava/lang/String;

.field desc:Ljava/lang/String;

.field et:Ljava/lang/String;

.field frequency:I

.field giftimes:I

.field localtime:I

.field private mbClicked:Z

.field mlistExcludePkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mt_type:I

.field pic_url:Ljava/lang/String;

.field pic_url_w1080:Ljava/lang/String;

.field pic_url_w400:Ljava/lang/String;

.field pic_url_w480:Ljava/lang/String;

.field pic_url_w540:Ljava/lang/String;

.field pic_url_w720:Ljava/lang/String;

.field pkg:Ljava/lang/String;

.field pkg_url:Ljava/lang/String;

.field posId:Ljava/lang/String;

.field priority:Ljava/lang/Integer;

.field res_type:I

.field shift:I

.field source:I

.field splash_showtime:I

.field st:Ljava/lang/String;

.field sug_type:I

.field third_imp_url:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/picks/mixad/MixBeans;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->mbClicked:Z

    return-void
.end method

.method private getCalculatedUrl(I)Ljava/lang/String;
    .locals 5
    .param p1, "width"    # I

    .prologue
    .line 193
    new-instance v1, Lcom/cmcm/picks/mixad/MixBeans$1;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/mixad/MixBeans$1;-><init>(Lcom/cmcm/picks/mixad/MixBeans;)V

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-direct {p0, v3}, Lcom/cmcm/picks/mixad/MixBeans;->resetUrlMap(Ljava/util/Map;)V

    .line 197
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 198
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    if-gt v0, p1, :cond_0

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 206
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 208
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 209
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    :goto_2
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private isCanShift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "posId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getTitleHashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4, v5}, Lcom/cmcm/picks/mixad/MixSPUtil;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 348
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->frequency:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 297
    iget v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->type:I

    if-lt v1, v0, :cond_2

    iget v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->type:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->priority:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->priority:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->mt_type:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->mt_type:I

    const/16 v2, 0x100

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->mt_type:I

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->mt_type:I

    const/16 v2, 0x200

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->st:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->et:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/cmcm/picks/mixad/MixBeans;->isShift()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->frequency:I

    if-lez v1, :cond_2

    .line 308
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDoneInOneDay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "posId"    # Ljava/lang/String;
    .param p2, "dayKey"    # Ljava/lang/String;
    .param p3, "actionKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-static {p1, p2}, Lcom/cmcm/picks/mixad/MixBoxAdHelper;->isTodayHadFlag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-static {p1, p2}, Lcom/cmcm/picks/mixad/MixBoxAdHelper;->setTodayHadFlag(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {p1, p3, v0}, Lcom/cmcm/picks/mixad/MixSPUtil;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p3, v0}, Lcom/cmcm/picks/mixad/MixSPUtil;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private isHaveDeeplink()Z
    .locals 2

    .prologue
    .line 355
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->mt_type:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->deeplink:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInValidTime(I)Z
    .locals 3
    .param p1, "days"    # I

    .prologue
    .line 312
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->localtime:I

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->st:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->et:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/cmcm/picks/mixad/MixBoxAdHelper;->isInLimitTime(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isInstalled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 360
    :cond_0
    const/4 v0, 0x0

    .line 362
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cmcm/utils/Commons;->isHasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isMatchExcludePkgs(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->mlistExcludePkgs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->mlistExcludePkgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 375
    :goto_0
    return v0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->mlistExcludePkgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    invoke-static {p1, v0}, Lcom/cmcm/utils/Commons;->isHasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 375
    goto :goto_0
.end method

.method private isMatchShift()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 333
    invoke-direct {p0}, Lcom/cmcm/picks/mixad/MixBeans;->isShift()Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->posId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/cmcm/picks/mixad/MixBeans;->isCanShift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShift()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 343
    iget v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->shift:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidType(Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;)Z
    .locals 4
    .param p1, "type"    # Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 316
    if-nez p1, :cond_1

    move v0, v1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    sget-object v2, Lcom/cmcm/picks/mixad/MixBeans$3;->$SwitchMap$com$cmcm$picks$mixad$MixBoxManager$POS_TYPE:[I

    invoke-virtual {p1}, Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 328
    goto :goto_0

    .line 321
    :pswitch_0
    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 323
    :pswitch_1
    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 325
    :pswitch_2
    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetUrlMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "urlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 222
    const/16 v0, 0x438

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url_w1080:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const/16 v0, 0x2d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url_w720:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/16 v0, 0x21c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url_w540:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const/16 v0, 0x1e0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url_w480:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/16 v0, 0x190

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url_w400:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/cmcm/picks/mixad/MixBeans;)I
    .locals 2
    .param p1, "bean"    # Lcom/cmcm/picks/mixad/MixBeans;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->priority:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/cmcm/picks/mixad/MixBeans;->priority:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/cmcm/picks/mixad/MixBeans;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cmcm/picks/mixad/MixBeans;->compareTo(Lcom/cmcm/picks/mixad/MixBeans;)I

    move-result v0

    return v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getBox_reddot()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->box_reddot:I

    return v0
.end method

.method public getButton_txt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->button_txt:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_tracking_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->click_tracking_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->deeplink:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getEt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->et:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->frequency:I

    return v0
.end method

.method public getGiftimes()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->giftimes:I

    return v0
.end method

.method public getLocaltime()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->localtime:I

    return v0
.end method

.method public getMt_type()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->mt_type:I

    return v0
.end method

.method public getPic_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->pic_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->priority:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRes_type()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->res_type:I

    return v0
.end method

.method public getShift()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->shift:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->source:I

    return v0
.end method

.method public getSplashImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/utils/Commons;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 186
    if-gtz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/cmcm/picks/mixad/MixBeans;->getCalculatedUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSplashShowtime()I
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->splash_showtime:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->splash_showtime:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 179
    :cond_0
    const/4 v0, 0x5

    .line 181
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->splash_showtime:I

    goto :goto_0
.end method

.method public getSt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->st:Ljava/lang/String;

    return-object v0
.end method

.method public getSug_type()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->sug_type:I

    return v0
.end method

.method public getThird_imp_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->third_imp_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleHashCode()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->type:I

    return v0
.end method

.method public isClicked()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/cmcm/picks/mixad/MixBeans;->mbClicked:Z

    return v0
.end method

.method public isClickedInOneDay(Ljava/lang/String;)Z
    .locals 3
    .param p1, "posId"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getTitleHashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clickedTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getTitleHashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/cmcm/picks/mixad/MixBeans;->isDoneInOneDay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isShowedInOneDay(Ljava/lang/String;)Z
    .locals 3
    .param p1, "posId"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getTitleHashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "showedTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getTitleHashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "showed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/cmcm/picks/mixad/MixBeans;->isDoneInOneDay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;I)Z
    .locals 6
    .param p1, "type"    # Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;
    .param p2, "days"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Lcom/cmcm/picks/mixad/MixBeans;->isDataValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cmcm/picks/mixad/MixBeans;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data invalid"

    invoke-static {v0, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    :goto_0
    return v1

    .line 264
    :cond_1
    invoke-direct {p0, p1}, Lcom/cmcm/picks/mixad/MixBeans;->isValidType(Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cmcm/picks/mixad/MixBeans;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "invalid data type"

    invoke-static {v0, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-direct {p0, p2}, Lcom/cmcm/picks/mixad/MixBeans;->isInValidTime(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cmcm/picks/mixad/MixBeans;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "out of valid time"

    invoke-static {v0, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_3
    if-lez p2, :cond_4

    move v1, v0

    .line 275
    goto :goto_0

    .line 279
    :cond_4
    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/cmcm/picks/mixad/MixBeans;->isInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cmcm/picks/mixad/MixBeans;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "is installed"

    invoke-static {v0, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/cmcm/picks/mixad/MixBeans;->isHaveDeeplink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/cmcm/picks/mixad/MixBeans;->isMatchShift()Z

    move-result v1

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cmcm/picks/mixad/MixBeans;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "is deeplink"

    invoke-static {v0, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :cond_5
    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/cmcm/picks/mixad/MixBeans;->isMatchExcludePkgs(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 287
    invoke-direct {p0}, Lcom/cmcm/picks/mixad/MixBeans;->isMatchShift()Z

    move-result v2

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cmcm/picks/mixad/MixBeans;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShift:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/cmcm/picks/mixad/MixBeans;->shift:I

    if-ne v5, v0, :cond_6

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", whether can shift : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    .line 290
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cmcm/picks/mixad/MixBeans;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "is installed"

    invoke-static {v0, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public savePkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "posId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "adTitle"    # Ljava/lang/String;
    .param p4, "showTime"    # J

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmcm/picks/mixad/MixBeans;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " impression"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getTitleHashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "showed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/cmcm/picks/mixad/MixSPUtil;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 382
    new-instance v0, Lcom/cmcm/picks/mixad/MixBeans$2;

    const-string v2, "savePkg thread"

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p4

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmcm/picks/mixad/MixBeans$2;-><init>(Lcom/cmcm/picks/mixad/MixBeans;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans$2;->start()V

    .line 392
    return-void
.end method

.method protected setClicked(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "posId"    # Ljava/lang/String;
    .param p2, "bClicked"    # Z

    .prologue
    .line 74
    iput-boolean p2, p0, Lcom/cmcm/picks/mixad/MixBeans;->mbClicked:Z

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBeans;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcm/picks/mixad/MixBeans;->getTitleHashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/cmcm/picks/mixad/MixSPUtil;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method
