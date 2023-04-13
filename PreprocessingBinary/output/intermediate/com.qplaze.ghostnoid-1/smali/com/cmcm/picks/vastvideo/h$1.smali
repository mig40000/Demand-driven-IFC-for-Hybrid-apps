.class Lcom/cmcm/picks/vastvideo/h$1;
.super Ljava/lang/Object;
.source "VideoDownLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/h;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmcm/picks/vastvideo/h;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/vastvideo/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/h$1;->b:Lcom/cmcm/picks/vastvideo/h;

    iput-object p2, p0, Lcom/cmcm/picks/vastvideo/h$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h$1;->b:Lcom/cmcm/picks/vastvideo/h;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/h;->a(Lcom/cmcm/picks/vastvideo/h;)Lcom/cmcm/picks/vastvideo/h$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/h$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cmcm/picks/vastvideo/h$b;->b(Ljava/lang/String;)V

    .line 218
    return-void
.end method
