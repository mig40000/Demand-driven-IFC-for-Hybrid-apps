.class Lcom/chartboost/sdk/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/h;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ak;

.field final synthetic b:Lcom/chartboost/sdk/impl/e;

.field final synthetic c:Lcom/chartboost/sdk/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/impl/e;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/chartboost/sdk/h$5;->c:Lcom/chartboost/sdk/h;

    iput-object p2, p0, Lcom/chartboost/sdk/h$5;->a:Lcom/chartboost/sdk/impl/ak;

    iput-object p3, p0, Lcom/chartboost/sdk/h$5;->b:Lcom/chartboost/sdk/impl/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 321
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "api/install"

    iget-object v2, p0, Lcom/chartboost/sdk/h$5;->a:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 322
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/f$k;

    const/4 v2, 0x0

    const-string v3, "status"

    sget-object v4, Lcom/chartboost/sdk/Libraries/a;->b:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/f$a;)Lcom/chartboost/sdk/Libraries/f$k;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a([Lcom/chartboost/sdk/Libraries/f$k;)V

    .line 323
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->j()V

    .line 324
    iget-object v0, p0, Lcom/chartboost/sdk/h$5;->b:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e;->a()V

    .line 325
    return-void
.end method
