.class Lcom/chartboost/sdk/Chartboost$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ak;

.field final synthetic b:Lcom/chartboost/sdk/impl/e;

.field final synthetic c:Lcom/chartboost/sdk/h;

.field final synthetic d:Lcom/chartboost/sdk/Chartboost$1;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Chartboost$1;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/h;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$1$1;->d:Lcom/chartboost/sdk/Chartboost$1;

    iput-object p2, p0, Lcom/chartboost/sdk/Chartboost$1$1;->a:Lcom/chartboost/sdk/impl/ak;

    iput-object p3, p0, Lcom/chartboost/sdk/Chartboost$1$1;->b:Lcom/chartboost/sdk/impl/e;

    iput-object p4, p0, Lcom/chartboost/sdk/Chartboost$1$1;->c:Lcom/chartboost/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "api/install"

    iget-object v2, p0, Lcom/chartboost/sdk/Chartboost$1$1;->a:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 207
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/f$k;

    const-string v2, "status"

    sget-object v3, Lcom/chartboost/sdk/Libraries/a;->b:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/f$a;)Lcom/chartboost/sdk/Libraries/f$k;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a([Lcom/chartboost/sdk/Libraries/f$k;)V

    .line 208
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->j()V

    .line 209
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$1$1;->b:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e;->a()V

    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$1$1;->c:Lcom/chartboost/sdk/h;

    iput-boolean v4, v0, Lcom/chartboost/sdk/h;->l:Z

    .line 211
    return-void
.end method
