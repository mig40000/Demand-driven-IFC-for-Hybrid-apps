.class public Lcom/chartboost/sdk/Libraries/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/chartboost/sdk/Libraries/d$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Libraries/d$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 13
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 14
    if-nez p0, :cond_1

    .line 18
    :cond_0
    return-object p0

    .line 16
    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs a([Lcom/chartboost/sdk/Libraries/d$a;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 35
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 36
    iget-object v4, v3, Lcom/chartboost/sdk/Libraries/d$a;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/d$a;->b:Ljava/lang/Object;

    invoke-static {v0, v4, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 26
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-class v1, Lcom/chartboost/sdk/Libraries/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
