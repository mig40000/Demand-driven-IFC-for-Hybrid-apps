.class Lcom/cmcm/picks/init/a$1;
.super Lcom/cmcm/picks/loader/b;
.source "PicksMobBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/init/a;->loadAd(IILcom/cmcm/picks/init/ICallBack;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/init/ICallBack;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/cmcm/picks/init/a;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/init/a;IILjava/lang/String;Lcom/cmcm/picks/init/ICallBack;ZIII)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cmcm/picks/init/a$1;->f:Lcom/cmcm/picks/init/a;

    iput-object p5, p0, Lcom/cmcm/picks/init/a$1;->a:Lcom/cmcm/picks/init/ICallBack;

    iput-boolean p6, p0, Lcom/cmcm/picks/init/a$1;->b:Z

    iput p7, p0, Lcom/cmcm/picks/init/a$1;->c:I

    iput p8, p0, Lcom/cmcm/picks/init/a$1;->d:I

    iput p9, p0, Lcom/cmcm/picks/init/a$1;->e:I

    invoke-direct {p0, p2, p3, p4}, Lcom/cmcm/picks/loader/b;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmcm/picks/loader/h;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cmcm/picks/init/a$1;->f:Lcom/cmcm/picks/init/a;

    iget-object v1, p0, Lcom/cmcm/picks/init/a$1;->a:Lcom/cmcm/picks/init/ICallBack;

    invoke-static {v0, v1}, Lcom/cmcm/picks/init/a;->access$000(Lcom/cmcm/picks/init/a;Lcom/cmcm/picks/init/ICallBack;)V

    .line 67
    return-void
.end method

.method public b(Lcom/cmcm/picks/loader/h;)V
    .locals 5

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/cmcm/picks/loader/b;->b(Lcom/cmcm/picks/loader/h;)V

    .line 72
    if-nez p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/cmcm/picks/init/a$1;->f:Lcom/cmcm/picks/init/a;

    iget-object v1, p0, Lcom/cmcm/picks/init/a$1;->a:Lcom/cmcm/picks/init/ICallBack;

    invoke-static {v0, v1}, Lcom/cmcm/picks/init/a;->access$000(Lcom/cmcm/picks/init/a;Lcom/cmcm/picks/init/ICallBack;)V

    .line 96
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/cmcm/picks/loader/h;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/cmcm/picks/loader/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 78
    invoke-virtual {p1}, Lcom/cmcm/picks/loader/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-boolean v0, p0, Lcom/cmcm/picks/init/a$1;->b:Z

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 81
    :goto_1
    iget-object v2, p0, Lcom/cmcm/picks/init/a$1;->f:Lcom/cmcm/picks/init/a;

    invoke-static {v2, v1}, Lcom/cmcm/picks/init/a;->access$100(Lcom/cmcm/picks/init/a;Ljava/util/List;)V

    .line 82
    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/cmcm/picks/init/a$1;->f:Lcom/cmcm/picks/init/a;

    iget v1, p0, Lcom/cmcm/picks/init/a$1;->c:I

    iget v2, p0, Lcom/cmcm/picks/init/a$1;->d:I

    iget-object v3, p0, Lcom/cmcm/picks/init/a$1;->a:Lcom/cmcm/picks/init/ICallBack;

    iget v4, p0, Lcom/cmcm/picks/init/a$1;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmcm/picks/init/a;->access$200(Lcom/cmcm/picks/init/a;IILcom/cmcm/picks/init/ICallBack;I)V

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p1, v1}, Lcom/cmcm/picks/loader/h;->b(Ljava/util/List;)V

    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/cmcm/picks/init/a$1;->f:Lcom/cmcm/picks/init/a;

    iget-object v2, p0, Lcom/cmcm/picks/init/a$1;->a:Lcom/cmcm/picks/init/ICallBack;

    invoke-static {v0, v2, v1}, Lcom/cmcm/picks/init/a;->access$300(Lcom/cmcm/picks/init/a;Lcom/cmcm/picks/init/ICallBack;Ljava/util/List;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/cmcm/picks/init/a$1;->f:Lcom/cmcm/picks/init/a;

    iget-object v1, p0, Lcom/cmcm/picks/init/a$1;->a:Lcom/cmcm/picks/init/ICallBack;

    invoke-static {v0, v1}, Lcom/cmcm/picks/init/a;->access$000(Lcom/cmcm/picks/init/a;Lcom/cmcm/picks/init/ICallBack;)V

    goto :goto_0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/cmcm/picks/init/a$1;->f:Lcom/cmcm/picks/init/a;

    iget-object v1, p0, Lcom/cmcm/picks/init/a$1;->a:Lcom/cmcm/picks/init/ICallBack;

    invoke-static {v0, v1}, Lcom/cmcm/picks/init/a;->access$000(Lcom/cmcm/picks/init/a;Lcom/cmcm/picks/init/ICallBack;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/cmcm/picks/loader/b;->onPreExecute()V

    .line 101
    iget-object v0, p0, Lcom/cmcm/picks/init/a$1;->a:Lcom/cmcm/picks/init/ICallBack;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/cmcm/picks/init/a$1;->a:Lcom/cmcm/picks/init/ICallBack;

    invoke-interface {v0}, Lcom/cmcm/picks/init/ICallBack;->onPreExecute()V

    .line 104
    :cond_0
    return-void
.end method
