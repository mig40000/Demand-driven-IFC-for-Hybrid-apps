.class Lcom/cmcm/picks/vastvideo/VastAd$1;
.super Ljava/lang/Object;
.source "VastAd.java"

# interfaces
.implements Lcom/cmcm/picks/init/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/VastAd;->load(Lcom/cmcm/picks/vastvideo/VastAd$VastVideoListener;)V
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
    .line 132
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastAd$1;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadError()V
    .locals 4

    .prologue
    .line 150
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    const-string v1, "picks load error"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd$1;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x2712

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;ZZI)V

    .line 152
    return-void
.end method

.method public onLoadSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/Ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "listAd":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/picks/loader/Ad;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "picks load success ,and size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd$1;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd$1;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v1, p1}, Lcom/cmcm/picks/vastvideo/VastAd;->b(Lcom/cmcm/picks/vastvideo/VastAd;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;Ljava/util/List;)Ljava/util/List;

    .line 138
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd$1;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd$1;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastAd$1;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastAd$1;->a:Lcom/cmcm/picks/vastvideo/VastAd;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/loader/Ad;

    invoke-static {v1, v0}, Lcom/cmcm/picks/vastvideo/VastAd;->a(Lcom/cmcm/picks/vastvideo/VastAd;Lcom/cmcm/picks/loader/Ad;)V

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd$1;->onLoadError()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/VastAd$1;->onLoadError()V

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
