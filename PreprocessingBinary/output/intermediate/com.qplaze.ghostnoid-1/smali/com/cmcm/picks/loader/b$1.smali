.class Lcom/cmcm/picks/loader/b$1;
.super Ljava/lang/Object;
.source "AppLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/loader/b;->c(Lcom/cmcm/picks/loader/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/loader/h;

.field final synthetic b:Lcom/cmcm/picks/loader/b;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/loader/b;Lcom/cmcm/picks/loader/h;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cmcm/picks/loader/b$1;->b:Lcom/cmcm/picks/loader/b;

    iput-object p2, p0, Lcom/cmcm/picks/loader/b$1;->a:Lcom/cmcm/picks/loader/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmcm/picks/loader/b$1;->a:Lcom/cmcm/picks/loader/h;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/cmcm/picks/loader/b$1;->b:Lcom/cmcm/picks/loader/b;

    iget-object v1, p0, Lcom/cmcm/picks/loader/b$1;->a:Lcom/cmcm/picks/loader/h;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/b;->a(Lcom/cmcm/picks/loader/h;)V

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/loader/b$1;->a:Lcom/cmcm/picks/loader/h;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/cmcm/picks/loader/b$1;->b:Lcom/cmcm/picks/loader/b;

    iget-object v1, p0, Lcom/cmcm/picks/loader/b$1;->a:Lcom/cmcm/picks/loader/h;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/b;->b(Lcom/cmcm/picks/loader/h;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/loader/b$1;->b:Lcom/cmcm/picks/loader/b;

    iget-object v1, p0, Lcom/cmcm/picks/loader/b$1;->a:Lcom/cmcm/picks/loader/h;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/b;->a(Lcom/cmcm/picks/loader/h;)V

    goto :goto_0
.end method
