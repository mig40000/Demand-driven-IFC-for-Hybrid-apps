.class public Lcom/cmcm/picks/vastvideo/VastAd;
.super Ljava/lang/Object;
.source "VastAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/picks/vastvideo/VastAd$VastVideoLogListener;,
        Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;

.field private f:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoLogListener;

.field private g:Lcom/cmcm/picks/loader/Ad;

.field private h:Lcom/cmcm/picks/vastvideo/VastModel;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/Ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->a:Z

    .line 33
    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->d:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->b:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/cmcm/picks/vastvideo/VastAd;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastAd;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastAd;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/Ad;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/Ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/loader/Ad;

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getAppShowType()I

    move-result v2

    const v3, 0xc356

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cmcm/picks/loader/Ad;->setShowed(Z)V

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 189
    :cond_2
    const/4 p1, 0x0

    :cond_3
    return-object p1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastAd;->b(I)V

    .line 194
    new-instance v0, Lcom/cmcm/picks/vastvideo/VastAd$2;

    invoke-direct {v0, p0}, Lcom/cmcm/picks/vastvideo/VastAd$2;-><init>(Lcom/cmcm/picks/vastvideo/VastAd;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lcom/cmcm/picks/vastvideo/h;

    new-instance v1, Lcom/cmcm/picks/vastvideo/VastAd$4;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/vastvideo/VastAd$4;-><init>(Lcom/cmcm/picks/vastvideo/VastAd;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/cmcm/picks/vastvideo/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/vastvideo/h$b;)V

    .line 308
    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method private a(Lcom/cmcm/picks/loader/Ad;)V
    .locals 4

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->g:Lcom/cmcm/picks/loader/Ad;

    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/picks/loader/Ad;->getCreateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastAd;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastAd;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastAd;Lcom/cmcm/picks/loader/Ad;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastAd;->b(Lcom/cmcm/picks/loader/Ad;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastAd;Lcom/cmcm/picks/vastvideo/VastModel;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastModel;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastAd;ZZI)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/cmcm/picks/vastvideo/VastAd;->a(ZZI)V

    return-void
.end method

.method private a(Lcom/cmcm/picks/vastvideo/VastModel;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->h:Lcom/cmcm/picks/vastvideo/VastModel;

    .line 71
    return-void
.end method

.method private a(ZZI)V
    .locals 1

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->a:Z

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->e:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;

    if-eqz v0, :cond_1

    .line 345
    if-eqz p2, :cond_2

    .line 346
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->e:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;

    invoke-interface {v0}, Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;->onLoadSuccess()V

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->e:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;

    invoke-interface {v0, p3}, Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;->onLoadError(I)V

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->h:Lcom/cmcm/picks/vastvideo/VastModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->h:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/VastModel;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->h:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/VastModel;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->g:Lcom/cmcm/picks/loader/Ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->g:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v1}, Lcom/cmcm/picks/loader/Ad;->isShowed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->g:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v1}, Lcom/cmcm/picks/loader/Ad;->isAvailAble()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 81
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastAd;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cmcm/picks/vastvideo/VastModel;->g(Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 323
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcm/picks/vastvideo/VastModel;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcm/picks/vastvideo/VastModel;->v()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/cmcm/adsdk/ImageDownloadListener;->getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcm/picks/vastvideo/VastModel;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcm/picks/vastvideo/VastModel;->u()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/cmcm/adsdk/ImageDownloadListener;->getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    sget-object v2, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushVastAd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/VastAd;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->f:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoLogListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->f:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoLogListener;

    invoke-interface {v0, p1}, Lcom/cmcm/picks/vastvideo/VastAd$VastVideoLogListener;->onLogPrint(I)V

    .line 206
    :cond_0
    return-void
.end method

.method private b(Lcom/cmcm/picks/loader/Ad;)V
    .locals 4

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    const/16 v0, 0x7533

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->a(I)V

    .line 238
    :goto_0
    return-void

    .line 228
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/loader/Ad;)V

    .line 229
    invoke-virtual {p1}, Lcom/cmcm/picks/loader/Ad;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    sget-object v1, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolve vast url, url ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->parseVastXML(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    :cond_1
    const/16 v0, 0x7535

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->a(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/VastAd;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->d()V

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->h:Lcom/cmcm/picks/vastvideo/VastModel;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cmcm/picks/vastvideo/b;->a()Lcom/cmcm/picks/vastvideo/b;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->h:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/VastModel;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/cmcm/picks/vastvideo/VastAd;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/loader/Ad;

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->isShowed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->isAvailAble()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 173
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/cmcm/picks/vastvideo/VastAd;)Lcom/cmcm/picks/loader/Ad;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->g:Lcom/cmcm/picks/loader/Ad;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->g:Lcom/cmcm/picks/loader/Ad;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->g:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0, v4}, Lcom/cmcm/picks/loader/Ad;->setShowed(Z)V

    .line 212
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the ad =["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastAd;->g:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v2}, Lcom/cmcm/picks/loader/Ad;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is invalid\uff0cissue load next"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->c()V

    .line 215
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/loader/Ad;

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->b(Lcom/cmcm/picks/loader/Ad;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_1
    const/16 v0, 0x7533

    invoke-direct {p0, v4, v3, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->a(ZZI)V

    goto :goto_0
.end method


# virtual methods
.method public createVastView(Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;)Lcom/cmcm/picks/vastvideo/VastView;
    .locals 3
    .param p1, "vastVideoProgressListener"    # Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    .prologue
    .line 355
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vast create view, and cache valid = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",file not exist ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use vast model ,and model video file path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcm/picks/vastvideo/VastModel;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v0, Lcom/cmcm/picks/vastvideo/VastView;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/cmcm/picks/vastvideo/VastView;-><init>(Landroid/content/Context;Lcom/cmcm/picks/vastvideo/VastModel;Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;)V

    .line 360
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->h:Lcom/cmcm/picks/vastvideo/VastModel;

    return-object v0
.end method

.method public getVastTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastModel;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;)V
    .locals 5
    .param p1, "vastVideoListener"    # Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;

    .prologue
    const/16 v2, 0x7531

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->e:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;

    .line 99
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have valid vastad, and video file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->getVastModel()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcm/picks/vastvideo/VastModel;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    const-string v1, "file not exist, but ad is valid"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->g:Lcom/cmcm/picks/loader/Ad;

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->b(Lcom/cmcm/picks/loader/Ad;)V

    .line 159
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-direct {p0, v4, v4, v3}, Lcom/cmcm/picks/vastvideo/VastAd;->a(ZZI)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->e:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;

    if-nez v0, :cond_3

    .line 110
    :cond_2
    const/16 v0, 0x7530

    invoke-direct {p0, v4, v3, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->a(ZZI)V

    goto :goto_0

    .line 113
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/utils/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    :cond_4
    invoke-direct {p0, v4, v3, v2}, Lcom/cmcm/picks/vastvideo/VastAd;->a(ZZI)V

    goto :goto_0

    .line 117
    :cond_5
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->d:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/utils/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 118
    invoke-direct {p0, v4, v3, v2}, Lcom/cmcm/picks/vastvideo/VastAd;->a(ZZI)V

    goto :goto_0

    .line 121
    :cond_6
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->a:Z

    if-eqz v0, :cond_7

    .line 122
    const/16 v0, 0x7532

    invoke-direct {p0, v3, v3, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->a(ZZI)V

    goto :goto_0

    .line 125
    :cond_7
    iput-boolean v4, p0, Lcom/cmcm/picks/vastvideo/VastAd;->a:Z

    .line 126
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastAd;->c()V

    .line 127
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 128
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    const-string v1, "picks have vaild cache"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/loader/Ad;

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->b(Lcom/cmcm/picks/loader/Ad;)V

    goto :goto_0

    .line 131
    :cond_8
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    const-string v1, "picks to load ad"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/cmcm/picks/init/PicksMob;->getInstance()Lcom/cmcm/picks/init/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/cmcm/picks/vastvideo/VastAd$1;

    invoke-direct {v2, p0}, Lcom/cmcm/picks/vastvideo/VastAd$1;-><init>(Lcom/cmcm/picks/vastvideo/VastAd;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmcm/picks/init/a;->loadad(ILcom/cmcm/picks/init/ICallBack;IZ)V

    goto/16 :goto_0
.end method

.method public parseVastXML(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const/16 v0, 0x7535

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->a(I)V

    .line 277
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v0, Lcom/cmcm/picks/vastvideo/g;

    invoke-direct {v0}, Lcom/cmcm/picks/vastvideo/g;-><init>()V

    .line 246
    new-instance v1, Lcom/cmcm/picks/vastvideo/VastAd$3;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/vastvideo/VastAd$3;-><init>(Lcom/cmcm/picks/vastvideo/VastAd;)V

    invoke-virtual {v0, p1, v1}, Lcom/cmcm/picks/vastvideo/g;->a(Ljava/lang/String;Lcom/cmcm/picks/vastvideo/g$a;)V

    goto :goto_0
.end method

.method public setIsNotWifiDownLoad(Z)V
    .locals 0
    .param p1, "isNotWifiDownLoad"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->d:Z

    .line 90
    return-void
.end method

.method public setListener(Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;)V
    .locals 0
    .param p1, "vastVideoListener"    # Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->e:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;

    .line 94
    return-void
.end method

.method public setVastVideoLogListener(Lcom/cmcm/picks/vastvideo/VastAd$VastVideoLogListener;)V
    .locals 0
    .param p1, "vastVideoLogListener"    # Lcom/cmcm/picks/vastvideo/VastAd$VastVideoLogListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastAd;->f:Lcom/cmcm/picks/vastvideo/VastAd$VastVideoLogListener;

    .line 75
    return-void
.end method
