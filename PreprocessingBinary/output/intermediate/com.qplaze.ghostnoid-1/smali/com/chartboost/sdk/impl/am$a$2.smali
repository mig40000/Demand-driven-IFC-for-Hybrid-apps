.class Lcom/chartboost/sdk/impl/am$a$2;
.super Lcom/chartboost/sdk/impl/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/am$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/ac",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/am$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/am$a;Lcom/chartboost/sdk/impl/ac$a;Ljava/lang/String;Lcom/chartboost/sdk/impl/ab;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/chartboost/sdk/impl/ac;-><init>(Lcom/chartboost/sdk/impl/ac$a;Ljava/lang/String;Lcom/chartboost/sdk/impl/ab;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/impl/ae;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ah;",
            ")",
            "Lcom/chartboost/sdk/impl/ae",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-interface {p1}, Lcom/chartboost/sdk/impl/ah;->a()[B

    move-result-object v1

    .line 153
    array-length v0, v1

    if-lez v0, :cond_2

    .line 155
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/b;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const-string v0, ""

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/am$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    iput-object v0, v2, Lcom/chartboost/sdk/impl/am$a;->e:Ljava/lang/String;

    .line 168
    const-string v0, "CBWebImageCache:ImageDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: checksum did not match while downloading from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/am$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/am$a;->g:Lcom/chartboost/sdk/impl/am;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/am;->c:Lcom/chartboost/sdk/Libraries/g;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/am$a;->g:Lcom/chartboost/sdk/impl/am;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/am;->c:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/g;->c()Ljava/io/File;

    move-result-object v2

    const-string v3, "%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    iget-object v6, v6, Lcom/chartboost/sdk/impl/am$a;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ".png"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;[B)V

    .line 173
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/am$a;->g:Lcom/chartboost/sdk/impl/am;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/am$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/i$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->b()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    :goto_0
    return-object v0

    .line 175
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap response data is empty, unable to download the bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Exception;)Lcom/chartboost/sdk/impl/ae;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-class v1, Lcom/chartboost/sdk/impl/am$a;

    const-string v2, "parseServerResponse"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap response data is empty, unable to download the bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Exception;)Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/chartboost/sdk/impl/aq;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    new-instance v0, Lcom/chartboost/sdk/impl/aq;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/am$a;->g:Lcom/chartboost/sdk/impl/am;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/am;->b:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ak;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/chartboost/sdk/impl/aq;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/am$a$2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am$a$2;->a:Lcom/chartboost/sdk/impl/am$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/am$a;->a()V

    .line 187
    return-void
.end method
