.class Lcom/applovin/impl/sdk/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/aw;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ax;->a:Lcom/applovin/impl/sdk/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/aw;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/aw;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
