.class Lcom/cmcm/picks/vastvideo/g$2;
.super Ljava/lang/Object;
.source "VastXmlParse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/g;->a(Ljava/lang/String;Lcom/cmcm/picks/vastvideo/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmcm/picks/vastvideo/g$a;

.field final synthetic c:Lcom/cmcm/picks/vastvideo/g;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/vastvideo/g;Ljava/lang/String;Lcom/cmcm/picks/vastvideo/g$a;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/g$2;->c:Lcom/cmcm/picks/vastvideo/g;

    iput-object p2, p0, Lcom/cmcm/picks/vastvideo/g$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmcm/picks/vastvideo/g$2;->b:Lcom/cmcm/picks/vastvideo/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 49
    .line 50
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    const-string v2, "xml to parse"

    invoke-static {v0, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/g$2;->c:Lcom/cmcm/picks/vastvideo/g;

    new-instance v2, Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-direct {v2}, Lcom/cmcm/picks/vastvideo/VastModel;-><init>()V

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/g$2;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/cmcm/picks/vastvideo/g;->a(Lcom/cmcm/picks/vastvideo/g;Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/g$2;->c:Lcom/cmcm/picks/vastvideo/g;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/g$2;->b:Lcom/cmcm/picks/vastvideo/g$a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmcm/picks/vastvideo/g;->a(Lcom/cmcm/picks/vastvideo/g;Lcom/cmcm/picks/vastvideo/VastModel;ZLcom/cmcm/picks/vastvideo/g$a;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/g$2;->c:Lcom/cmcm/picks/vastvideo/g;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/g$2;->b:Lcom/cmcm/picks/vastvideo/g$a;

    const-string v4, "parse model null"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmcm/picks/vastvideo/g;->a(Lcom/cmcm/picks/vastvideo/g;Lcom/cmcm/picks/vastvideo/VastModel;ZLcom/cmcm/picks/vastvideo/g$a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    sget-object v2, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xml parse failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/g$2;->c:Lcom/cmcm/picks/vastvideo/g;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/g$2;->b:Lcom/cmcm/picks/vastvideo/g$a;

    const-string v3, "parse model exception"

    invoke-static {v0, v1, v5, v2, v3}, Lcom/cmcm/picks/vastvideo/g;->a(Lcom/cmcm/picks/vastvideo/g;Lcom/cmcm/picks/vastvideo/VastModel;ZLcom/cmcm/picks/vastvideo/g$a;Ljava/lang/String;)V

    goto :goto_0
.end method
