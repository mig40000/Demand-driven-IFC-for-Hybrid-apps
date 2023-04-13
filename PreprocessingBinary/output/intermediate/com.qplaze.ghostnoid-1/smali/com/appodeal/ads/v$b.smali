.class Lcom/appodeal/ads/v$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/d/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/appodeal/ads/d/a;Lcom/appodeal/ads/d/h;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iput-boolean v4, v0, Lcom/appodeal/ads/aa;->z:Z

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    const/4 v2, -0x2

    iput v2, v0, Lcom/appodeal/ads/aa;->y:I

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/appodeal/ads/d/a;->b()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->p:Lcom/appodeal/ads/w;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v2, 0x100

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->p:Lcom/appodeal/ads/w;

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/appodeal/ads/f;->a(ILjava/lang/String;Z)V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "status"

    const-string v3, "rtbmraid"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "id"

    invoke-virtual {p2}, Lcom/appodeal/ads/d/a;->i()Lcom/appodeal/ads/d/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/d/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ecpm"

    invoke-virtual {p2}, Lcom/appodeal/ads/d/a;->b()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "html"

    invoke-virtual {p2}, Lcom/appodeal/ads/d/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "width"

    const/16 v3, 0x12c

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    const/16 v3, 0xfa

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Lcom/appodeal/ads/v;->b(IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->g()I

    move-result v2

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v3, v0, Lcom/appodeal/ads/aa;->p:Lcom/appodeal/ads/w;

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->r:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {p1, v2, v3, v0, v4}, Lcom/appodeal/ads/y;->a(IILcom/appodeal/ads/w;ZZ)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->s:Z

    goto :goto_1
.end method

.method public a(Lcom/appodeal/ads/d/c;)V
    .locals 1

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/appodeal/ads/d/f;)V
    .locals 1

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
