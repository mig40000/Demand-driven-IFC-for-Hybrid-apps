.class public Lcom/chartboost/sdk/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/al$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$a;)V
    .locals 1

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->w:Z

    .line 244
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/chartboost/sdk/Model/a$e;->e:Lcom/chartboost/sdk/Model/a$e;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    .line 249
    :cond_0
    if-nez p2, :cond_2

    .line 250
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_1

    .line 251
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p3, p4}, Lcom/chartboost/sdk/a;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/impl/aj;

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->j()V

    goto :goto_0

    .line 255
    :cond_3
    if-eqz p5, :cond_1

    .line 256
    invoke-interface {p5}, Lcom/chartboost/sdk/c$a;->a()V

    goto :goto_0
.end method
