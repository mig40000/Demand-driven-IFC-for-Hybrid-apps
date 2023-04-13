.class Lcom/applovin/impl/sdk/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/aw;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ay;->a:Lcom/applovin/impl/sdk/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ay;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->b(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/adview/AppLovinInterstitialActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ay;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->c(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/cb;->V:Lcom/applovin/impl/sdk/cd;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ay;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->c(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/cb;->W:Lcom/applovin/impl/sdk/cd;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ay;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->c(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/cb;->Y:Lcom/applovin/impl/sdk/cd;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/az;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/az;-><init>(Lcom/applovin/impl/sdk/ay;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ay;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->c(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/cb;->X:Lcom/applovin/impl/sdk/cd;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/ba;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/ba;-><init>(Lcom/applovin/impl/sdk/ay;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ay;->a:Lcom/applovin/impl/sdk/aw;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/aw;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
