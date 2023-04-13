.class Lcom/cmcm/picks/loader/b$2;
.super Ljava/lang/Object;
.source "AppLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/loader/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/loader/b;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/loader/b;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/cmcm/picks/loader/b$2;->a:Lcom/cmcm/picks/loader/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Lcom/cmcm/picks/loader/i;->a()Lcom/cmcm/picks/loader/i;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/loader/b$2;->a:Lcom/cmcm/picks/loader/b;

    invoke-virtual {v1}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
