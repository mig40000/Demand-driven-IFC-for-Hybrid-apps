.class Lcom/chartboost/sdk/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Model/a;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/chartboost/sdk/e;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Model/a;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/chartboost/sdk/e$2;->c:Lcom/chartboost/sdk/e;

    iput-object p2, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    iput-object p3, p0, Lcom/chartboost/sdk/e$2;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$e;->e:Lcom/chartboost/sdk/Model/a$e;

    iput-object v1, v0, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    .line 148
    sget-object v0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc$b;

    .line 149
    iget-object v1, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    if-ne v1, v2, :cond_0

    .line 150
    sget-object v0, Lcom/chartboost/sdk/impl/bc$b;->f:Lcom/chartboost/sdk/impl/bc$b;

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$a;

    sget-object v2, Lcom/chartboost/sdk/Model/a$a;->b:Lcom/chartboost/sdk/Model/a$a;

    if-ne v1, v2, :cond_1

    .line 152
    sget-object v0, Lcom/chartboost/sdk/impl/bc$b;->c:Lcom/chartboost/sdk/impl/bc$b;

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a;->w()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "animation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc$b;->a(I)Lcom/chartboost/sdk/impl/bc$b;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/e$2;->c:Lcom/chartboost/sdk/e;

    iget-object v1, v1, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bc;

    iget-object v2, p0, Lcom/chartboost/sdk/e$2;->a:Lcom/chartboost/sdk/Model/a;

    new-instance v3, Lcom/chartboost/sdk/e$2$1;

    invoke-direct {v3, p0}, Lcom/chartboost/sdk/e$2$1;-><init>(Lcom/chartboost/sdk/e$2;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;)V

    .line 165
    return-void
.end method
