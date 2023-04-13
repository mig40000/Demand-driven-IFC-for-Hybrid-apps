.class Lcom/cmcm/picks/vastvideo/h$a;
.super Ljava/util/TimerTask;
.source "VideoDownLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/vastvideo/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/h;

.field private b:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/cmcm/picks/vastvideo/h;Ljava/io/FileOutputStream;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/h$a;->a:Lcom/cmcm/picks/vastvideo/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 323
    iput-object p2, p0, Lcom/cmcm/picks/vastvideo/h$a;->b:Ljava/io/FileOutputStream;

    .line 324
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h$a;->a:Lcom/cmcm/picks/vastvideo/h;

    const-string v1, "time out error"

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/h;->a(Lcom/cmcm/picks/vastvideo/h;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h$a;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h$a;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h$a;->a:Lcom/cmcm/picks/vastvideo/h;

    const-string v1, "time out error"

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/h;->a(Lcom/cmcm/picks/vastvideo/h;Ljava/lang/String;)V

    goto :goto_0
.end method
