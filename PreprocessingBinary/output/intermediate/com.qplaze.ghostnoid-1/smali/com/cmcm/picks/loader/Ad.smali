.class public Lcom/cmcm/picks/loader/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# static fields
.field public static final MT_TYPE_OPEN_BROWSER:I = 0x100

.field public static final MT_TYPE_OPEN_DEEPLINK:I = 0x200

.field public static final MT_TYPE_OPEN_DOWNLOAD:I = 0x8

.field public static final MT_TYPE_OPEN_INTERNAL:I = 0x40

.field public static final SHOW_TYPE_AD_MPA:I = 0x11178

.field public static final SHOW_TYPE_HAVE_PIC_BIG_CARD:I = 0xc350

.field public static final SHOW_TYPE_NEWS_SMALL_PIC:I = 0x11173

.field public static final SHOW_TYPE_NEWS_THREE_PIC:I = 0x11172

.field public static final SHOW_TYPE_NO_PIC_SMALL_CARD:I = 0xc351

.field public static final SHOW_TYPE_VAST:I = 0xc356


# instance fields
.field private app_show_type:I

.field private background:Ljava/lang/String;

.field private button_txt:Ljava/lang/String;

.field private des:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private download_num:Ljava/lang/String;

.field private html:Ljava/lang/String;

.field private mClickTrackingUrl:Ljava/lang/String;

.field private mCreateTime:J

.field private mDeepLink:Ljava/lang/String;

.field private mExtPicks:Ljava/lang/String;

.field private mExtension:Ljava/lang/String;

.field private mIsShowed:Z

.field private mPosid:Ljava/lang/String;

.field private mPriority:I

.field private mThirdImpUrl:Ljava/lang/String;

.field private mpa:Ljava/lang/String;

.field private mpaModule:Lcom/cmcm/picks/loader/MpaModule;

.field private mt_type:I

.field private pic_url:Ljava/lang/String;

.field private pkg:Ljava/lang/String;

.field private pkg_size:Ljava/lang/String;

.field private pkg_url:Ljava/lang/String;

.field private rating:D

.field private res_type:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmcm/picks/loader/Ad;->app_show_type:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/loader/Ad;->mIsShowed:Z

    return-void
.end method

.method public static createAd(Ljava/lang/String;)Lcom/cmcm/picks/loader/Ad;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Lcom/cmcm/picks/loader/Ad;

    invoke-direct {v0}, Lcom/cmcm/picks/loader/Ad;-><init>()V

    .line 251
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/Ad;->setDes(Ljava/lang/String;)V

    .line 252
    iput-object p0, v0, Lcom/cmcm/picks/loader/Ad;->pkg:Ljava/lang/String;

    .line 253
    return-object v0
.end method

.method public static getShowTypeHavePicBigCard()I
    .locals 1

    .prologue
    .line 293
    const v0, 0xc350

    return v0
.end method


# virtual methods
.method public getAppShowType()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->app_show_type:I

    return v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->button_txt:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->mClickTrackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/cmcm/picks/loader/Ad;->mCreateTime:J

    return-wide v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->mDeepLink:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->download_num:Ljava/lang/String;

    return-object v0
.end method

.method public getExtPick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->mExtPicks:Ljava/lang/String;

    return-object v0
.end method

.method public getExtPics()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->getBackground()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->getExtPick()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 276
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 277
    if-eqz v3, :cond_1

    .line 278
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 284
    :cond_2
    return-object v1
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->mExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getMpa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->mpa:Ljava/lang/String;

    return-object v0
.end method

.method public getMpaModule()Lcom/cmcm/picks/loader/MpaModule;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->mpaModule:Lcom/cmcm/picks/loader/MpaModule;

    return-object v0
.end method

.method public getMtType()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->mt_type:I

    return v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->pic_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->pkg_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPosid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->mPosid:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->mPriority:I

    return v0
.end method

.method public getRating()D
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/cmcm/picks/loader/Ad;->rating:D

    return-wide v0
.end method

.method public getResType()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->res_type:I

    return v0
.end method

.method public getThirdImpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->mThirdImpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getpkg_size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cmcm/picks/loader/Ad;->pkg_size:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailAble()Z
    .locals 6

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->getPosid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/picks/loader/g;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->getCreateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeepLink()Z
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->mt_type:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMtTypeAvail()Z
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->mt_type:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->mt_type:I

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->mt_type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->mt_type:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenBrowser()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->mt_type:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenInternal()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/cmcm/picks/loader/Ad;->mt_type:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPriority()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/Ad;->getPriority()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowed()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/cmcm/picks/loader/Ad;->mIsShowed:Z

    return v0
.end method

.method public setAppShowType(I)V
    .locals 0
    .param p1, "app_show_type"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/cmcm/picks/loader/Ad;->app_show_type:I

    .line 199
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->background:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setButtonTxt(Ljava/lang/String;)V
    .locals 0
    .param p1, "button_txt"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->button_txt:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setClickTrackingUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickTrackingUrl"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->mClickTrackingUrl:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/cmcm/picks/loader/Ad;->mCreateTime:J

    .line 87
    return-void
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "deeplink"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->mDeepLink:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->des:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->desc:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDownloadNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "download_num"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->download_num:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setExtPicks(Ljava/lang/String;)V
    .locals 0
    .param p1, "extPicks"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->mExtPicks:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "strExtension"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->mExtension:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->html:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setMpa(Ljava/lang/String;)V
    .locals 0
    .param p1, "mpa"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->mpa:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setMpaModule(Lcom/cmcm/picks/loader/MpaModule;)V
    .locals 0
    .param p1, "mpaModule"    # Lcom/cmcm/picks/loader/MpaModule;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->mpaModule:Lcom/cmcm/picks/loader/MpaModule;

    .line 310
    return-void
.end method

.method public setMtType(I)V
    .locals 0
    .param p1, "mt_type"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/cmcm/picks/loader/Ad;->mt_type:I

    .line 187
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pic_url"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->pic_url:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->pkg:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setPkgSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "ps"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->pkg_size:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setPkgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg_url"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->pkg_url:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setPosid(Ljava/lang/String;)V
    .locals 0
    .param p1, "posid"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->mPosid:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/cmcm/picks/loader/Ad;->mPriority:I

    .line 94
    return-void
.end method

.method public setRating(D)V
    .locals 1
    .param p1, "rating"    # D

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/cmcm/picks/loader/Ad;->rating:D

    .line 183
    return-void
.end method

.method public setResType(I)V
    .locals 0
    .param p1, "rt"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/cmcm/picks/loader/Ad;->res_type:I

    .line 171
    return-void
.end method

.method public setShowed(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/cmcm/picks/loader/Ad;->mIsShowed:Z

    .line 219
    return-void
.end method

.method public setThirdImpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "thirdImpUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->mThirdImpUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cmcm/picks/loader/Ad;->title:Ljava/lang/String;

    .line 106
    return-void
.end method
