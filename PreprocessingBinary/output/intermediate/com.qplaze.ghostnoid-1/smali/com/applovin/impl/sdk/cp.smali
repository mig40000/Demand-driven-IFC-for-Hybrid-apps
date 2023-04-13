.class public Lcom/applovin/impl/sdk/cp;
.super Lcom/applovin/impl/sdk/ca;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/applovin/sdk/AppLovinPostbackListener;

.field private d:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;Ljava/util/Map;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    const-string v0, "TaskDispatchPostback"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/ca;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/impl/sdk/cp;->j:I

    iput-object p2, p0, Lcom/applovin/impl/sdk/cp;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/impl/sdk/cp;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    iput-object p3, p0, Lcom/applovin/impl/sdk/cp;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/cp;)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/cp;->j:I

    return v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/cp;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cp;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/cp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cp;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/cp;)Lcom/applovin/sdk/AppLovinPostbackListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cp;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/cp;->d:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/cp;->i:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/cp;->j:I

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/cp;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cp;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "TaskDispatchPostback"

    const-string v2, "Requested URL is not valid; nothing to do..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/cp;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cp;->a:Ljava/lang/String;

    const/16 v2, -0x384

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/applovin/impl/sdk/cp;->d:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cp;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/cb;->ay:Lcom/applovin/impl/sdk/cd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    new-instance v1, Lcom/applovin/impl/sdk/cq;

    const-string v2, "RepeatTaskDispatchPostback"

    iget-object v3, p0, Lcom/applovin/impl/sdk/cp;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/applovin/impl/sdk/cq;-><init>(Lcom/applovin/impl/sdk/cp;Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget v0, p0, Lcom/applovin/impl/sdk/cp;->i:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/dc;->a(J)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/dc;->run()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/applovin/impl/sdk/cp;->d:I

    goto :goto_1
.end method
