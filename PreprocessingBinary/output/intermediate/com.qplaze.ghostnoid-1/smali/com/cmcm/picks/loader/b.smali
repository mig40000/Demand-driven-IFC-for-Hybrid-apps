.class public Lcom/cmcm/picks/loader/b;
.super Landroid/os/AsyncTask;
.source "AppLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cmcm/picks/loader/h;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:J

.field protected g:Lcom/cmcm/picks/loader/f$a;

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/cmcm/picks/loader/b;->a:Z

    .line 21
    iput-boolean v1, p0, Lcom/cmcm/picks/loader/b;->b:Z

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmcm/picks/loader/b;->c:I

    .line 24
    iput v1, p0, Lcom/cmcm/picks/loader/b;->i:I

    .line 25
    const/16 v0, 0xa

    iput v0, p0, Lcom/cmcm/picks/loader/b;->j:I

    .line 32
    iput-object p3, p0, Lcom/cmcm/picks/loader/b;->h:Ljava/lang/String;

    .line 33
    iput p1, p0, Lcom/cmcm/picks/loader/b;->i:I

    .line 34
    iput p2, p0, Lcom/cmcm/picks/loader/b;->j:I

    .line 35
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/cmcm/picks/loader/b;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/picks/loader/b;->d:J

    .line 149
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->h()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/cmcm/picks/loader/b;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    return-void
.end method

.method private m()I
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_pageloader_offset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Ljava/net/URI;)Lcom/cmcm/picks/loader/h;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmcm/utils/f;->b(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/cmcm/picks/loader/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cmcm/picks/loader/h;

    move-result-object v0

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Void;)Lcom/cmcm/picks/loader/h;
    .locals 4

    .prologue
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->e()V

    .line 56
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->b()Ljava/net/URI;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/cmcm/picks/loader/b;->a(Ljava/net/URI;)Lcom/cmcm/picks/loader/h;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->g()V

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/cmcm/picks/loader/b;->e(Lcom/cmcm/picks/loader/h;)Z

    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lcom/cmcm/utils/e;->a()Lcom/cmcm/utils/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cmcm/picks/loader/b;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cmcm/utils/e;->a(Ljava/lang/String;Lcom/cmcm/picks/loader/h;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/cmcm/picks/loader/b;->d(Lcom/cmcm/picks/loader/h;)V

    .line 66
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cmcm/picks/loader/b;->b:Z

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->j()Lcom/cmcm/picks/loader/h;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cmcm/picks/loader/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/cmcm/picks/loader/h;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method protected b()Ljava/net/URI;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/cmcm/picks/loader/f$a;

    invoke-direct {v0}, Lcom/cmcm/picks/loader/f$a;-><init>()V

    iput-object v0, p0, Lcom/cmcm/picks/loader/b;->g:Lcom/cmcm/picks/loader/f$a;

    .line 38
    iget-object v0, p0, Lcom/cmcm/picks/loader/b;->g:Lcom/cmcm/picks/loader/f$a;

    iget-object v1, p0, Lcom/cmcm/picks/loader/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/f$a;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/picks/loader/b;->i:I

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/f$a;->c(I)Lcom/cmcm/picks/loader/f$a;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/picks/loader/b;->j:I

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/f$a;->b(I)Lcom/cmcm/picks/loader/f$a;

    .line 39
    iget v0, p0, Lcom/cmcm/picks/loader/b;->i:I

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/cmcm/picks/loader/b;->g:Lcom/cmcm/picks/loader/f$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/f$a;->d(I)Lcom/cmcm/picks/loader/f$a;

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/cmcm/picks/loader/b;->g:Lcom/cmcm/picks/loader/f$a;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/f$a;->a()Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/loader/b;->g:Lcom/cmcm/picks/loader/f$a;

    invoke-direct {p0}, Lcom/cmcm/picks/loader/b;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/f$a;->d(I)Lcom/cmcm/picks/loader/f$a;

    goto :goto_0
.end method

.method public b(Lcom/cmcm/picks/loader/h;)V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_pageloader_offset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cmcm/picks/loader/h;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/loader/b;->b:Z

    .line 95
    return-void
.end method

.method protected final c(Lcom/cmcm/picks/loader/h;)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/cmcm/picks/loader/b$1;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/picks/loader/b$1;-><init>(Lcom/cmcm/picks/loader/b;Lcom/cmcm/picks/loader/h;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method protected d(Lcom/cmcm/picks/loader/h;)V
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/cmcm/picks/loader/b;->i:I

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/cmcm/picks/loader/b;->l()V

    .line 105
    :cond_0
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/cmcm/picks/loader/b;->i:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cmcm/picks/loader/b;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cmcm/picks/loader/b;->a([Ljava/lang/Void;)Lcom/cmcm/picks/loader/h;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/cmcm/picks/loader/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cmcm/picks/loader/i;->a()Lcom/cmcm/picks/loader/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/i;->b(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/cmcm/utils/e;->a()Lcom/cmcm/utils/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/utils/e;->b(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/cmcm/picks/loader/b$2;

    invoke-direct {v0, p0}, Lcom/cmcm/picks/loader/b$2;-><init>(Lcom/cmcm/picks/loader/b;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    return-void
.end method

.method public e(Lcom/cmcm/picks/loader/h;)Z
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Lcom/cmcm/picks/loader/i;->a()Lcom/cmcm/picks/loader/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cmcm/picks/loader/h;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/loader/i;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 211
    invoke-virtual {p1}, Lcom/cmcm/picks/loader/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 153
    iget-wide v0, p0, Lcom/cmcm/picks/loader/b;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->b(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/picks/loader/b;->d:J

    .line 156
    :cond_0
    iget-wide v0, p0, Lcom/cmcm/picks/loader/b;->d:J

    return-wide v0
.end method

.method protected g()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 160
    invoke-static {}, Lcom/cmcm/utils/e;->a()Lcom/cmcm/utils/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/utils/e;->b(Ljava/lang/String;)V

    .line 161
    iput-wide v2, p0, Lcom/cmcm/picks/loader/b;->d:J

    .line 162
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_cache_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/cmcm/picks/loader/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i()Z
    .locals 6

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cmcm/picks/loader/b;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->f()J

    move-result-wide v4

    add-long/2addr v0, v4

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j()Lcom/cmcm/picks/loader/h;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->e()V

    :cond_0
    move-object v0, v1

    .line 201
    :cond_1
    :goto_0
    return-object v0

    .line 190
    :cond_2
    invoke-static {}, Lcom/cmcm/utils/e;->a()Lcom/cmcm/utils/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cmcm/picks/loader/b;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmcm/utils/e;->a(Ljava/lang/String;)Lcom/cmcm/picks/loader/h;

    move-result-object v0

    .line 191
    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lcom/cmcm/picks/loader/h;

    invoke-direct {v0}, Lcom/cmcm/picks/loader/h;-><init>()V

    .line 193
    invoke-static {}, Lcom/cmcm/picks/loader/i;->a()Lcom/cmcm/picks/loader/i;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v1, v1}, Lcom/cmcm/picks/loader/i;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 194
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 195
    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {v0, v2}, Lcom/cmcm/picks/loader/h;->a(Ljava/util/List;)V

    .line 198
    invoke-static {}, Lcom/cmcm/utils/e;->a()Lcom/cmcm/utils/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/picks/loader/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cmcm/utils/e;->a(Ljava/lang/String;Lcom/cmcm/picks/loader/h;)V

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lcom/cmcm/picks/loader/h;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cmcm/picks/loader/b;->c(Lcom/cmcm/picks/loader/h;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
