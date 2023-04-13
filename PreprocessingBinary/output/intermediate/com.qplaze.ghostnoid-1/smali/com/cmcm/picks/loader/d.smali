.class public Lcom/cmcm/picks/loader/d;
.super Ljava/lang/Object;
.source "BuinessDataItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const-string v0, "&"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/loader/d;->a:Ljava/lang/String;

    .line 27
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmcm/picks/loader/d;->b:I

    .line 28
    iput p2, p0, Lcom/cmcm/picks/loader/d;->c:I

    .line 29
    iput-object p3, p0, Lcom/cmcm/picks/loader/d;->d:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/cmcm/picks/loader/d;->h:I

    .line 31
    iput p5, p0, Lcom/cmcm/picks/loader/d;->i:I

    .line 32
    iput p6, p0, Lcom/cmcm/picks/loader/d;->j:I

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    :try_start_0
    const-string v0, "pkg"

    iget-object v2, p0, Lcom/cmcm/picks/loader/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v0, "sug"

    iget v2, p0, Lcom/cmcm/picks/loader/d;->b:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v0, "res"

    iget v2, p0, Lcom/cmcm/picks/loader/d;->c:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v2, "des"

    iget-object v0, p0, Lcom/cmcm/picks/loader/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iget-object v0, p0, Lcom/cmcm/picks/loader/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/loader/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const-string v0, "fbpos"

    iget-object v2, p0, Lcom/cmcm/picks/loader/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v0, "fbmeta"

    iget-object v2, p0, Lcom/cmcm/picks/loader/d;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_0
    iget v0, p0, Lcom/cmcm/picks/loader/d;->e:I

    if-lez v0, :cond_1

    .line 53
    const-string v0, "seq"

    iget v2, p0, Lcom/cmcm/picks/loader/d;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    :cond_1
    iget v0, p0, Lcom/cmcm/picks/loader/d;->h:I

    if-lez v0, :cond_2

    .line 56
    const-string v0, "duration"

    iget v2, p0, Lcom/cmcm/picks/loader/d;->h:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string v0, "playtime"

    iget v2, p0, Lcom/cmcm/picks/loader/d;->i:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v0, "event"

    iget v2, p0, Lcom/cmcm/picks/loader/d;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_1
    return-object v0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/cmcm/picks/loader/d;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cmcm/picks/loader/d;->f:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/cmcm/picks/loader/d;->g:Ljava/lang/String;

    .line 38
    return-void
.end method
