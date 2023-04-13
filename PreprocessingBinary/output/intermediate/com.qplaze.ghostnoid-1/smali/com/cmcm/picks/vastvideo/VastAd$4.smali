.class Lcom/cmcm/picks/vastvideo/VastAd$4;
.super Ljava/lang/Object;
.source "VastAd.java"

# interfaces
.implements Lcom/cmcm/picks/vastvideo/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/VastAd;->a(Landroid/content/Context;Ljava/lang/String;)V
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
    .line 281
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastAd$4;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 284
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->assertOnUiThread()V

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    sget-object v2, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vast:download complete, the filepath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastAd$4;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v2, p1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;Ljava/lang/String;)Z

    move-result v2

    .line 289
    sget-object v3, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save cache ad is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastAd$4;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v2, v0, v0, v1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;ZZI)V

    .line 294
    invoke-static {}, Lcom/cmcm/picks/vastvideo/b;->a()Lcom/cmcm/picks/vastvideo/b;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/cmcm/picks/vastvideo/b;->a(Ljava/lang/String;J)V

    .line 297
    :goto_0
    if-nez v0, :cond_0

    .line 298
    const/16 v0, 0x7534

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/VastAd$4;->b(Ljava/lang/String;)V

    .line 300
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 304
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download video file fail\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd$4;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    const/16 v1, 0x7534

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;I)V

    .line 306
    return-void
.end method
