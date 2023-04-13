.class Lcom/appodeal/ads/native_ad/c$a;
.super Lcom/appodeal/ads/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/native_ad/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/Double;

.field final k:Ljava/lang/String;

.field final l:Ljava/lang/String;

.field final m:I

.field final n:Lcom/appodeal/ads/ac;

.field private o:Landroid/app/ProgressDialog;

.field private p:Lcom/appodeal/ads/utils/a/b;

.field private q:Lorg/json/JSONArray;

.field private r:Ljava/lang/String;

.field private s:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/a/b;Ljava/lang/String;JILcom/appodeal/ads/ac;)V
    .locals 1

    invoke-direct {p0, p13, p14, p5, p6}, Lcom/appodeal/ads/ab;-><init>(ILcom/appodeal/ads/ac;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/c$a;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/c$a;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/native_ad/c$a;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/native_ad/c$a;->j:Ljava/lang/Double;

    iput-object p7, p0, Lcom/appodeal/ads/native_ad/c$a;->k:Ljava/lang/String;

    iput-object p8, p0, Lcom/appodeal/ads/native_ad/c$a;->l:Ljava/lang/String;

    iput p13, p0, Lcom/appodeal/ads/native_ad/c$a;->m:I

    iput-object p14, p0, Lcom/appodeal/ads/native_ad/c$a;->n:Lcom/appodeal/ads/ac;

    iput-object p9, p0, Lcom/appodeal/ads/native_ad/c$a;->p:Lcom/appodeal/ads/utils/a/b;

    iput-object p10, p0, Lcom/appodeal/ads/native_ad/c$a;->r:Ljava/lang/String;

    iput-wide p11, p0, Lcom/appodeal/ads/native_ad/c$a;->s:J

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/c$a;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->o:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/c$a;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/c$a;->o:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/c$a;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/c$a;->q:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic b(Lcom/appodeal/ads/native_ad/c$a;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->q:Lorg/json/JSONArray;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a;->r:Ljava/lang/String;

    iget-wide v2, p0, Lcom/appodeal/ads/native_ad/c$a;->s:J

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/utils/n;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->k:Ljava/lang/String;

    const-string v1, "appodeal://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->q:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->q:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a;->q:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Loading..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->o:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->o:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->o:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v0, Lcom/appodeal/ads/native_ad/c$a$1;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/native_ad/c$a$1;-><init>(Lcom/appodeal/ads/native_ad/c$a;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v2, p0, Lcom/appodeal/ads/native_ad/c$a;->m:I

    iget-object v3, p0, Lcom/appodeal/ads/native_ad/c$a;->n:Lcom/appodeal/ads/ac;

    new-instance v4, Lcom/appodeal/ads/native_ad/c$a$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/appodeal/ads/native_ad/c$a$2;-><init>(Lcom/appodeal/ads/native_ad/c$a;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-static {v2, v3, p0, v4}, Lcom/appodeal/ads/ae;->a(ILcom/appodeal/ads/ac;Lcom/appodeal/ads/NativeAd;Lcom/appodeal/ads/t$a;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/appodeal/ads/native_ad/c$a;->m:I

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a;->n:Lcom/appodeal/ads/ac;

    invoke-static {v0, v1, p0}, Lcom/appodeal/ads/ae;->c(ILcom/appodeal/ads/ac;Lcom/appodeal/ads/NativeAd;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/c$a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->p:Lcom/appodeal/ads/utils/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->p:Lcom/appodeal/ads/utils/a/b;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/utils/a/b;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public containsVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/c$a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/c$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getAdProvider()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/native_ad/c;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/ac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/appodeal/ads/ab;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->j:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->j:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->j:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/appodeal/ads/ab;->getRating()F

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->j:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/c$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/c$a;->j()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
