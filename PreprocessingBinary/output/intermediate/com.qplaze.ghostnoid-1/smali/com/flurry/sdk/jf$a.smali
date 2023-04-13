.class public final Lcom/flurry/sdk/jf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lg",
        "<",
        "Lcom/flurry/sdk/jf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    .line 1247
    if-nez p1, :cond_1

    .line 1248
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 1251
    :cond_1
    new-instance v1, Lcom/flurry/sdk/jf$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/jf$a$2;-><init>(Lcom/flurry/sdk/jf$a;Ljava/io/InputStream;)V

    .line 1258
    new-instance v0, Lcom/flurry/sdk/jf;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/jf;-><init>(B)V

    .line 1262
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 1263
    if-lez v2, :cond_0

    .line 1264
    new-array v2, v2, [B

    .line 1265
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1268
    iput-object v2, v0, Lcom/flurry/sdk/jf;->a:[B

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    check-cast p2, Lcom/flurry/sdk/jf;

    .line 2220
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2224
    :cond_1
    new-instance v1, Lcom/flurry/sdk/jf$a$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/jf$a$1;-><init>(Lcom/flurry/sdk/jf$a;Ljava/io/OutputStream;)V

    .line 2231
    const/4 v0, 0x0

    .line 2232
    iget-object v2, p2, Lcom/flurry/sdk/jf;->a:[B

    if-eqz v2, :cond_2

    .line 2233
    iget-object v0, p2, Lcom/flurry/sdk/jf;->a:[B

    array-length v0, v0

    .line 2237
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2238
    if-lez v0, :cond_3

    .line 2239
    iget-object v0, p2, Lcom/flurry/sdk/jf;->a:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 2242
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
