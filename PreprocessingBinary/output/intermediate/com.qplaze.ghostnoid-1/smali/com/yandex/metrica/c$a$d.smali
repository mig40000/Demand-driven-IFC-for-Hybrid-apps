.class public final Lcom/yandex/metrica/c$a$d;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public b:D

.field public c:D

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 185
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$d;->d()Lcom/yandex/metrica/c$a$d;

    .line 186
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$d;->b:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(ID)V

    .line 205
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$d;->c:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(ID)V

    .line 206
    iget-wide v0, p0, Lcom/yandex/metrica/c$a$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$d;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 209
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/c$a$d;->e:I

    if-eqz v0, :cond_1

    .line 210
    const/4 v0, 0x4

    iget v1, p0, Lcom/yandex/metrica/c$a$d;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 212
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/c$a$d;->f:I

    if-eqz v0, :cond_2

    .line 213
    const/4 v0, 0x5

    iget v1, p0, Lcom/yandex/metrica/c$a$d;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 215
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/c$a$d;->g:I

    if-eqz v0, :cond_3

    .line 216
    const/4 v0, 0x6

    iget v1, p0, Lcom/yandex/metrica/c$a$d;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 218
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/c$a$d;->h:I

    if-eqz v0, :cond_4

    .line 219
    const/4 v0, 0x7

    iget v1, p0, Lcom/yandex/metrica/c$a$d;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 221
    :cond_4
    iget v0, p0, Lcom/yandex/metrica/c$a$d;->i:I

    if-eqz v0, :cond_5

    .line 222
    const/16 v0, 0x8

    iget v1, p0, Lcom/yandex/metrica/c$a$d;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 224
    :cond_5
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 225
    return-void
.end method

.method protected c()I
    .locals 6

    .prologue
    .line 229
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 230
    const/4 v1, 0x1

    .line 231
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    const/4 v1, 0x2

    .line 233
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    iget-wide v2, p0, Lcom/yandex/metrica/c$a$d;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 235
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$d;->d:J

    .line 236
    invoke-static {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/c$a$d;->e:I

    if-eqz v1, :cond_1

    .line 239
    const/4 v1, 0x4

    iget v2, p0, Lcom/yandex/metrica/c$a$d;->e:I

    .line 240
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/c$a$d;->f:I

    if-eqz v1, :cond_2

    .line 243
    const/4 v1, 0x5

    iget v2, p0, Lcom/yandex/metrica/c$a$d;->f:I

    .line 244
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/c$a$d;->g:I

    if-eqz v1, :cond_3

    .line 247
    const/4 v1, 0x6

    iget v2, p0, Lcom/yandex/metrica/c$a$d;->g:I

    .line 248
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/c$a$d;->h:I

    if-eqz v1, :cond_4

    .line 251
    const/4 v1, 0x7

    iget v2, p0, Lcom/yandex/metrica/c$a$d;->h:I

    .line 252
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    :cond_4
    iget v1, p0, Lcom/yandex/metrica/c$a$d;->i:I

    if-eqz v1, :cond_5

    .line 255
    const/16 v1, 0x8

    iget v2, p0, Lcom/yandex/metrica/c$a$d;->i:I

    .line 256
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    :cond_5
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$d;
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 189
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$d;->b:D

    .line 190
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$d;->c:D

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yandex/metrica/c$a$d;->d:J

    .line 192
    iput v2, p0, Lcom/yandex/metrica/c$a$d;->e:I

    .line 193
    iput v2, p0, Lcom/yandex/metrica/c$a$d;->f:I

    .line 194
    iput v2, p0, Lcom/yandex/metrica/c$a$d;->g:I

    .line 195
    iput v2, p0, Lcom/yandex/metrica/c$a$d;->h:I

    .line 196
    iput v2, p0, Lcom/yandex/metrica/c$a$d;->i:I

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$d;->a:I

    .line 198
    return-object p0
.end method
