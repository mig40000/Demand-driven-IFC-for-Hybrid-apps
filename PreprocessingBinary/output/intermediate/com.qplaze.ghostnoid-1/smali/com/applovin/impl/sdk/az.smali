.class Lcom/applovin/impl/sdk/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ay;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/az;->a:Lcom/applovin/impl/sdk/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/az;->a:Lcom/applovin/impl/sdk/ay;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ay;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->b(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/adview/AppLovinInterstitialActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->continueVideo()V

    return-void
.end method
