.class Lcom/cmcm/picks/vastvideo/VastAd$3;
.super Ljava/lang/Object;
.source "VastAd.java"

# interfaces
.implements Lcom/cmcm/picks/vastvideo/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/VastAd;->parseVastXML(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/VastAd;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/vastvideo/VastAd;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastAd$3;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmcm/picks/vastvideo/VastModel;)V
    .locals 5

    .prologue
    .line 249
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->assertOnUiThread()V

    .line 250
    const/4 v0, 0x0

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd$3;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastAd;->c(Lcom/cmcm/picks/vastvideo/VastAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cmcm/picks/vastvideo/VastModel;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 253
    sget-object v2, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vast:parse vast success, and media file url= :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 257
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastAd$3;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v2}, Lcom/cmcm/picks/vastvideo/VastAd;->d(Lcom/cmcm/picks/vastvideo/VastAd;)Lcom/cmcm/picks/loader/Ad;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cmcm/picks/vastvideo/VastModel;->a(Lcom/cmcm/picks/loader/Ad;)V

    .line 258
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastAd$3;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v2, p1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;Lcom/cmcm/picks/vastvideo/VastModel;)V

    .line 259
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastAd$3;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/VastAd$3;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v3}, Lcom/cmcm/picks/vastvideo/VastAd;->c(Lcom/cmcm/picks/vastvideo/VastAd;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    :cond_0
    if-nez v0, :cond_1

    .line 263
    const-string v0, "parse model status is wrong"

    invoke-virtual {p0, p1, v0}, Lcom/cmcm/picks/vastvideo/VastAd$3;->a(Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)V

    .line 265
    :cond_1
    return-void
.end method

.method public a(Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    invoke-static {p1}, Lcom/cmcm/picks/vastvideo/a;->a(Lcom/cmcm/picks/vastvideo/VastModel;)V

    .line 273
    :cond_0
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vast:parse failed, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",then issue next"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd$3;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    const/16 v1, 0x7536

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;I)V

    .line 275
    return-void
.end method
