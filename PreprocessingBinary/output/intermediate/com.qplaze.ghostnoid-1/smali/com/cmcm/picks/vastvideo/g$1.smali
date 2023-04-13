.class Lcom/cmcm/picks/vastvideo/g$1;
.super Ljava/lang/Object;
.source "VastXmlParse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/vastvideo/g;->a(Lcom/cmcm/picks/vastvideo/VastModel;ZLcom/cmcm/picks/vastvideo/g$a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cmcm/picks/vastvideo/g$a;

.field final synthetic c:Lcom/cmcm/picks/vastvideo/VastModel;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/cmcm/picks/vastvideo/g;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/vastvideo/g;ZLcom/cmcm/picks/vastvideo/g$a;Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/g$1;->e:Lcom/cmcm/picks/vastvideo/g;

    iput-boolean p2, p0, Lcom/cmcm/picks/vastvideo/g$1;->a:Z

    iput-object p3, p0, Lcom/cmcm/picks/vastvideo/g$1;->b:Lcom/cmcm/picks/vastvideo/g$a;

    iput-object p4, p0, Lcom/cmcm/picks/vastvideo/g$1;->c:Lcom/cmcm/picks/vastvideo/VastModel;

    iput-object p5, p0, Lcom/cmcm/picks/vastvideo/g$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/g$1;->a:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/g$1;->b:Lcom/cmcm/picks/vastvideo/g$a;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/g$1;->c:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-interface {v0, v1}, Lcom/cmcm/picks/vastvideo/g$a;->a(Lcom/cmcm/picks/vastvideo/VastModel;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/g$1;->b:Lcom/cmcm/picks/vastvideo/g$a;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/g$1;->c:Lcom/cmcm/picks/vastvideo/VastModel;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/g$1;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/g$a;->a(Lcom/cmcm/picks/vastvideo/VastModel;Ljava/lang/String;)V

    goto :goto_0
.end method
