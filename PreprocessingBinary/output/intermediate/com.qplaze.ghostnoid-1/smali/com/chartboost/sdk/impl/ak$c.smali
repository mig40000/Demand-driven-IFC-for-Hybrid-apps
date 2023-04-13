.class Lcom/chartboost/sdk/impl/ak$c;
.super Lcom/chartboost/sdk/impl/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/ac",
        "<",
        "Lcom/chartboost/sdk/impl/ak$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ak;

.field private final i:Lcom/chartboost/sdk/impl/aj;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/impl/ac$a;Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ak$c;->a:Lcom/chartboost/sdk/impl/ak;

    .line 139
    invoke-direct {p0, p2, p3, v0, v0}, Lcom/chartboost/sdk/impl/ac;-><init>(Lcom/chartboost/sdk/impl/ac$a;Ljava/lang/String;Lcom/chartboost/sdk/impl/ab;Ljava/io/File;)V

    .line 140
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    .line 141
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/impl/ae;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ah;",
            ")",
            "Lcom/chartboost/sdk/impl/ae",
            "<",
            "Lcom/chartboost/sdk/impl/ak$b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 179
    .line 182
    invoke-interface {p1}, Lcom/chartboost/sdk/impl/ah;->b()I

    move-result v2

    .line 183
    const/16 v1, 0x12c

    if-le v2, v1, :cond_0

    const/16 v1, 0xc8

    if-ge v2, v1, :cond_0

    .line 184
    const-string v1, "CBRequestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/aj;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed. Response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request failed. Response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not valid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    .line 217
    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 218
    new-instance v1, Lcom/chartboost/sdk/impl/ak$b;

    invoke-direct {v1, v0, p1}, Lcom/chartboost/sdk/impl/ak$b;-><init>(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/ah;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    .line 220
    :goto_1
    return-object v0

    .line 189
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/chartboost/sdk/impl/ah;->a()[B

    move-result-object v3

    .line 190
    if-eqz v3, :cond_5

    .line 191
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 192
    :goto_2
    if-eqz v1, :cond_3

    .line 193
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 194
    :try_start_1
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/aj;->g()Lcom/chartboost/sdk/Libraries/f$a;

    move-result-object v3

    .line 197
    const-string v4, "CBRequestManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/aj;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded. Response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", body: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x194

    if-ne v2, v4, :cond_2

    .line 201
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->g:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v3, "404 error from server"

    invoke-direct {v0, v2, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    :cond_1
    :goto_3
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 209
    goto :goto_0

    .line 203
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/chartboost/sdk/Libraries/f$a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v4, "Json response failed validation"

    invoke-direct {v0, v3, v4}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    .line 206
    const-string v3, "CBRequestManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Json response failed validation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 212
    :catch_0
    move-exception v0

    .line 213
    :goto_4
    new-instance v2, Lcom/chartboost/sdk/Model/CBError;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "parseServerResponse"

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_0

    .line 210
    :cond_3
    :try_start_2
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->c:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v3, "Response is not a valid json object"

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 212
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    .line 220
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/impl/ak$a;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ak$a;-><init>(Lcom/chartboost/sdk/Model/CBError;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Exception;)Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_2
.end method

.method public a()Lcom/chartboost/sdk/impl/aq;
    .locals 7

    .prologue
    .line 146
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->a()V

    .line 148
    sget-object v0, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    .line 149
    sget-object v1, Lcom/chartboost/sdk/i;->l:Ljava/lang/String;

    .line 150
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s %s\n%s\n%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/chartboost/sdk/impl/ak$c;->b:Lcom/chartboost/sdk/impl/ac$a;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/aj;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/aj;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/b;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 155
    const-string v3, "Accept"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v3, "X-Chartboost-Client"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v3, "X-Chartboost-API"

    const-string v4, "6.6.1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v3, "X-Chartboost-App"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "X-Chartboost-Signature"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->f()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 169
    :goto_0
    new-instance v1, Lcom/chartboost/sdk/impl/aq;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v3, "application/json"

    invoke-direct {v1, v2, v0, v3}, Lcom/chartboost/sdk/impl/aq;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/impl/ad;)V
    .locals 5

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/chartboost/sdk/impl/ak$a;

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/Exception;

    check-cast v0, Lcom/chartboost/sdk/impl/ak$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ak$a;->a:Lcom/chartboost/sdk/Model/CBError;

    move-object v1, v0

    .line 251
    :goto_1
    const/4 v0, 0x0

    .line 253
    :try_start_0
    iget-object v2, p1, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    invoke-interface {v2}, Lcom/chartboost/sdk/impl/ah;->a()[B

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    invoke-interface {v2}, Lcom/chartboost/sdk/impl/ah;->a()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_2

    .line 255
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    invoke-interface {v4}, Lcom/chartboost/sdk/impl/ah;->a()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 260
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 261
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 263
    :cond_3
    iget-object v2, p1, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    invoke-interface {v2}, Lcom/chartboost/sdk/impl/ah;->b()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    .line 265
    new-instance v1, Lcom/chartboost/sdk/impl/ak$b;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/impl/ak$b;-><init>(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/ah;)V

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ak$c;->a(Lcom/chartboost/sdk/impl/ak$b;)V

    goto :goto_0

    .line 245
    :cond_4
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/impl/ak$a;

    if-eqz v0, :cond_5

    .line 246
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ak$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ak$a;->a:Lcom/chartboost/sdk/Model/CBError;

    move-object v1, v0

    goto :goto_1

    .line 248
    :cond_5
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ad;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    .line 257
    :catch_0
    move-exception v2

    .line 258
    const-string v3, "CBRequestManager"

    const-string v4, "unable to read error json"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 267
    :cond_6
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/aj;->i()Lcom/chartboost/sdk/impl/aj$a;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 268
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/aj;->i()Lcom/chartboost/sdk/impl/aj$a;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-interface {v2, v0, v3, v1}, Lcom/chartboost/sdk/impl/aj$a;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$c;->a:Lcom/chartboost/sdk/impl/ak;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/Model/CBError;Z)V

    goto/16 :goto_0
.end method

.method public a(Lcom/chartboost/sdk/impl/ak$b;)V
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->i()Lcom/chartboost/sdk/impl/aj$a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->i()Lcom/chartboost/sdk/impl/aj$a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ak$b;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj$a;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$c;->a:Lcom/chartboost/sdk/impl/ak;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ak$b;->b:Lcom/chartboost/sdk/impl/ah;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/Model/CBError;Z)V

    .line 233
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Lcom/chartboost/sdk/impl/ak$b;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ak$c;->a(Lcom/chartboost/sdk/impl/ak$b;)V

    return-void
.end method

.method public b()Lcom/chartboost/sdk/impl/ac$b;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$c;->i:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->h()Lcom/chartboost/sdk/impl/ac$b;

    move-result-object v0

    return-object v0
.end method
