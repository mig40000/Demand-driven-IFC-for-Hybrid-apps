.class Lcom/applovin/impl/sdk/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/z;

.field private final b:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/z;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ab;->a:Lcom/applovin/impl/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/ab;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ab;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ab;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object v0
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/ab;->a:Lcom/applovin/impl/sdk/z;

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/z;Lcom/applovin/impl/sdk/AppLovinAdImpl;)Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ab;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ab;->a:Lcom/applovin/impl/sdk/z;

    invoke-static {v0}, Lcom/applovin/impl/sdk/z;->c(Lcom/applovin/impl/sdk/z;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/ac;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/ac;-><init>(Lcom/applovin/impl/sdk/ab;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ab;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ab;->a:Lcom/applovin/impl/sdk/z;

    invoke-static {v0}, Lcom/applovin/impl/sdk/z;->c(Lcom/applovin/impl/sdk/z;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/ad;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/ad;-><init>(Lcom/applovin/impl/sdk/ab;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
