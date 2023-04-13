.class public Lcom/applovin/impl/sdk/aw;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/adview/AppLovinInterstitialActivity;

.field private c:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aw;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aw;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/aw;->c:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/adview/AppLovinInterstitialActivity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    new-instance v1, Lcom/applovin/impl/sdk/ax;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/ax;-><init>(Lcom/applovin/impl/sdk/aw;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    new-instance v1, Lcom/applovin/impl/sdk/ay;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/ay;-><init>(Lcom/applovin/impl/sdk/aw;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
