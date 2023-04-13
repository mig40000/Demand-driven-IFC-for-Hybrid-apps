.class public Lcom/cmcm/picks/vastvideo/a;
.super Ljava/lang/Object;
.source "VastAgent.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/cmcm/picks/vastvideo/VastModel;

.field private k:Lcom/cmcm/picks/loader/Ad;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/cmcm/picks/vastvideo/VastModel;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->l:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->m:Z

    .line 61
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->o:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->q:Z

    .line 69
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the vast model is null, please check"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/cmcm/picks/vastvideo/VastModel;->getAd()Lcom/cmcm/picks/loader/Ad;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->k:Lcom/cmcm/picks/loader/Ad;

    .line 74
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->k:Lcom/cmcm/picks/loader/Ad;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->k:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getPosid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->l:Ljava/lang/String;

    .line 77
    :cond_1
    return-void
.end method

.method public static a(Lcom/cmcm/picks/vastvideo/VastModel;)V
    .locals 2

    .prologue
    .line 331
    if-eqz p0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastModel;->c()Ljava/util/List;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 334
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/cmcm/picks/vastvideo/VastModel;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/cmcm/picks/vastvideo/a;->a:I

    .line 109
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->l()Ljava/util/List;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 199
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 201
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 202
    return-void
.end method

.method public a(III)V
    .locals 5

    .prologue
    .line 340
    if-ltz p3, :cond_0

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 342
    const-string v1, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "playtime"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "event"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v1, "vast_play"

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/a;->k:Lcom/cmcm/picks/loader/Ad;

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/a;->l:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 347
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 400
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->r()Ljava/lang/String;

    move-result-object v0

    .line 401
    new-instance v1, Lcom/cmcm/utils/h;

    invoke-direct {v1, p1}, Lcom/cmcm/utils/h;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    const-string v0, "CMCMADSDK"

    const-string v1, "vast:through url is empty"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_0
    return-void

    .line 406
    :cond_0
    const-string v2, "CMCMADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vast:click through url ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {v0}, Lcom/cmcm/picks/market/MarketUtils;->isGooglePlayUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    invoke-static {v0, v1}, Lcom/cmcm/utils/Commons;->openGooglePlayByUrl(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 410
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/picks/market/MarketUtils;->openUriByBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/a;->r:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    .line 174
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    .line 82
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->s:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->m:Z

    .line 85
    :cond_0
    iput v1, p0, Lcom/cmcm/picks/vastvideo/a;->a:I

    .line 86
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->b:Z

    .line 87
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->c:Z

    .line 88
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->d:Z

    .line 89
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->e:Z

    .line 90
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->f:Z

    .line 91
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->g:Z

    .line 92
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->h:Z

    .line 93
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->i:Z

    .line 94
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->p:Z

    .line 95
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->n:Z

    .line 96
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->q:Z

    .line 97
    return-void
.end method

.method public a(ZIZ)V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->b:Z

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/a;->b:Z

    .line 128
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->b:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 129
    invoke-virtual {p0, p2}, Lcom/cmcm/picks/vastvideo/a;->b(I)V

    goto :goto_0
.end method

.method public a(ZZII)V
    .locals 1

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/a;->m:Z

    .line 147
    if-eqz p2, :cond_0

    .line 148
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->m:Z

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0, p3, p4}, Lcom/cmcm/picks/vastvideo/a;->i(II)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/cmcm/picks/vastvideo/a;->j(II)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/cmcm/picks/vastvideo/a;->a:I

    return v0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->h:Z

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->j()Ljava/util/List;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 303
    iget-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->g:Z

    if-nez v1, :cond_2

    .line 304
    int-to-float v1, p1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, p1, v1}, Lcom/cmcm/picks/vastvideo/a;->g(II)V

    .line 306
    :cond_2
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 308
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p1}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->h:Z

    .line 310
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->r:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->r:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    invoke-interface {v0}, Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;->onVastVideoComplete()V

    goto :goto_0
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->o()Ljava/util/List;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 207
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 209
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1, p2}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 210
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/a;->s:Z

    .line 117
    return-void
.end method

.method public c(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->d:Z

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->e()Ljava/util/List;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 218
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 220
    :cond_1
    invoke-virtual {p0, v2, p2, p1}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->d:Z

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/a;->c:Z

    .line 139
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->s:Z

    return v0
.end method

.method public d(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 226
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->i:Z

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    if-nez p2, :cond_4

    .line 230
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->f()Ljava/util/List;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 232
    iget-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->d:Z

    if-nez v1, :cond_2

    .line 233
    invoke-virtual {p0, p1, v2}, Lcom/cmcm/picks/vastvideo/a;->c(II)V

    .line 235
    :cond_2
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->d()Ljava/util/List;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 239
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 243
    :cond_4
    const-string v0, "view"

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/a;->k:Lcom/cmcm/picks/loader/Ad;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/a;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v4, p2, p1}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 246
    iput-boolean v4, p0, Lcom/cmcm/picks/vastvideo/a;->i:Z

    .line 247
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->r:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->r:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    invoke-interface {v0}, Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;->onVastVideoShow()V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/a;->o:Z

    .line 162
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->b:Z

    return v0
.end method

.method public e(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->e:Z

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->g()Ljava/util/List;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 258
    iget-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->i:Z

    if-nez v1, :cond_1

    .line 259
    invoke-virtual {p0, p1, v2}, Lcom/cmcm/picks/vastvideo/a;->d(II)V

    .line 261
    :cond_1
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 263
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2, p1}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->e:Z

    goto :goto_0
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/a;->n:Z

    .line 170
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->c:Z

    return v0
.end method

.method public f(II)V
    .locals 3

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->f:Z

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->h()Ljava/util/List;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 273
    iget-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->e:Z

    if-nez v1, :cond_1

    .line 274
    int-to-float v1, p1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, p1, v1}, Lcom/cmcm/picks/vastvideo/a;->e(II)V

    .line 276
    :cond_1
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 278
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2, p1}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->f:Z

    goto :goto_0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/a;->p:Z

    .line 186
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->m:Z

    return v0
.end method

.method public g(II)V
    .locals 3

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->g:Z

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->i()Ljava/util/List;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 287
    iget-boolean v1, p0, Lcom/cmcm/picks/vastvideo/a;->f:Z

    if-nez v1, :cond_1

    .line 288
    int-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, p1, v1}, Lcom/cmcm/picks/vastvideo/a;->f(II)V

    .line 290
    :cond_1
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 292
    :cond_2
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2, p1}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->g:Z

    goto :goto_0
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/a;->q:Z

    .line 194
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->o:Z

    return v0
.end method

.method public h(II)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->r:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->r:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    invoke-interface {v0}, Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;->onVastVideoClick()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->s()Ljava/util/List;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 356
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 359
    const-string v1, "duration"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v1, "playtime"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v1, "event"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v1, "vast_click"

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v2}, Lcom/cmcm/picks/vastvideo/VastModel;->getAd()Lcom/cmcm/picks/loader/Ad;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/a;->l:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 364
    :cond_1
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->n:Z

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->r:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    .line 178
    return-void
.end method

.method public i(II)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->m()Ljava/util/List;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 369
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 371
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2, p1}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 372
    return-void
.end method

.method public j(II)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->n()Ljava/util/List;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 377
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 379
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2, p1}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 380
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->p:Z

    return v0
.end method

.method public k(II)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->p()Ljava/util/List;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 385
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 387
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2, p1}, Lcom/cmcm/picks/vastvideo/a;->a(III)V

    .line 388
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/a;->q:Z

    return v0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/a;->j:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->c()Ljava/util/List;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 325
    new-instance v1, Lcom/cmcm/picks/vastvideo/d;

    invoke-direct {v1, v0}, Lcom/cmcm/picks/vastvideo/d;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/utils/BackgroundHandler;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 327
    :cond_0
    return-void
.end method
