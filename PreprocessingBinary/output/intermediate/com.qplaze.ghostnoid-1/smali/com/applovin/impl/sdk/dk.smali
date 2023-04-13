.class Lcom/applovin/impl/sdk/dk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/p;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/dj;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/dj;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/dk;->a:Lcom/applovin/impl/sdk/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/dk;->a:Lcom/applovin/impl/sdk/dj;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/dj;->a(Lcom/applovin/impl/sdk/dj;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/dk;->a:Lcom/applovin/impl/sdk/dj;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/dj;->a(Lcom/applovin/impl/sdk/dj;Lorg/json/JSONObject;)V

    return-void
.end method
