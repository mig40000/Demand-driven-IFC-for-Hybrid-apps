.class Lcom/applovin/impl/sdk/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cx;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cy;->a:Lcom/applovin/impl/sdk/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/cy;->a:Lcom/applovin/impl/sdk/cx;

    iget-object v0, v0, Lcom/applovin/impl/sdk/cx;->a:Lcom/applovin/impl/sdk/cv;

    invoke-static {v0}, Lcom/applovin/impl/sdk/cv;->b(Lcom/applovin/impl/sdk/cv;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "TaskManager"

    const-string v2, "Caught unhandled exception"

    invoke-interface {v0, v1, v2, p2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
