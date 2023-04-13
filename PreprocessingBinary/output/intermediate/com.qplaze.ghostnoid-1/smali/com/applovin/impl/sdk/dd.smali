.class Lcom/applovin/impl/sdk/dd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/p;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/applovin/impl/sdk/dc;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/dc;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    iput-object p2, p0, Lcom/applovin/impl/sdk/dd;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object p3, p0, Lcom/applovin/impl/sdk/dd;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_0

    const/16 v2, 0x1f4

    if-lt p1, v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, -0x67

    if-eq p1, v3, :cond_3

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    invoke-static {v0}, Lcom/applovin/impl/sdk/dc;->a(Lcom/applovin/impl/sdk/dc;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    invoke-static {v0}, Lcom/applovin/impl/sdk/dc;->b(Lcom/applovin/impl/sdk/dc;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/dd;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/cb;->l:Lcom/applovin/impl/sdk/cd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/cd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    iget-object v2, p0, Lcom/applovin/impl/sdk/dd;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send request due to server failure (code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    invoke-static {v4}, Lcom/applovin/impl/sdk/dc;->a(Lcom/applovin/impl/sdk/dc;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attempts left, retrying in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    iget-object v3, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    invoke-static {v3}, Lcom/applovin/impl/sdk/dc;->a(Lcom/applovin/impl/sdk/dc;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/dc;->a(Lcom/applovin/impl/sdk/dc;I)I

    iget-object v2, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    invoke-static {v2}, Lcom/applovin/impl/sdk/dc;->a(Lcom/applovin/impl/sdk/dc;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    invoke-static {v2}, Lcom/applovin/impl/sdk/dc;->c(Lcom/applovin/impl/sdk/dc;)V

    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/dd;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cv;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    sget-object v4, Lcom/applovin/impl/sdk/cw;->b:Lcom/applovin/impl/sdk/cw;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/applovin/impl/sdk/cv;->a(Lcom/applovin/impl/sdk/ca;Lcom/applovin/impl/sdk/cw;J)V

    :goto_3
    return-void

    :cond_2
    move v2, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    invoke-static {v0}, Lcom/applovin/impl/sdk/dc;->b(Lcom/applovin/impl/sdk/dc;)J

    move-result-wide v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/dc;->a(I)V

    goto :goto_3
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/dc;->a(Lcom/applovin/impl/sdk/dc;I)I

    iget-object v0, p0, Lcom/applovin/impl/sdk/dd;->c:Lcom/applovin/impl/sdk/dc;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/dc;->a(Lorg/json/JSONObject;I)V

    return-void
.end method
