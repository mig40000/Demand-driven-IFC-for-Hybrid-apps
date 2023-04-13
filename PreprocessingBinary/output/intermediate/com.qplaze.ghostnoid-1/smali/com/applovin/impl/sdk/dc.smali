.class abstract Lcom/applovin/impl/sdk/dc;
.super Lcom/applovin/impl/sdk/ca;

# interfaces
.implements Lcom/applovin/impl/sdk/p;


# instance fields
.field private a:I

.field private b:J

.field private final c:Lcom/applovin/impl/sdk/p;

.field private d:Lcom/applovin/impl/sdk/cd;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/ca;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/applovin/impl/sdk/dc;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/dc;->d:Lcom/applovin/impl/sdk/cd;

    iput p2, p0, Lcom/applovin/impl/sdk/dc;->a:I

    new-instance v0, Lcom/applovin/impl/sdk/dd;

    invoke-direct {v0, p0, p3, p1}, Lcom/applovin/impl/sdk/dd;-><init>(Lcom/applovin/impl/sdk/dc;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/dc;->c:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/cd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-virtual {p3, p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/applovin/impl/sdk/dc;-><init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/dc;)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/dc;->a:I

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/dc;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/dc;->a:I

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/dc;)J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/dc;->b:J

    return-wide v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/dc;->d:Lcom/applovin/impl/sdk/cd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/dc;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/dc;->d:Lcom/applovin/impl/sdk/cd;

    iget-object v2, p0, Lcom/applovin/impl/sdk/dc;->d:Lcom/applovin/impl/sdk/cd;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/cd;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/ce;->a(Lcom/applovin/impl/sdk/cd;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ce;->b()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/dc;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/dc;->c()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/dc;->b:J

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/dc;->d:Lcom/applovin/impl/sdk/cd;

    return-void
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)V
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/dc;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getConnectionManager()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/dc;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/dc;->a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method
