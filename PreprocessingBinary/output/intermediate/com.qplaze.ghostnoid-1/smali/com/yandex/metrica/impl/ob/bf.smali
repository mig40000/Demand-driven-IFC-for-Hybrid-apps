.class public Lcom/yandex/metrica/impl/ob/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/bb;

.field private b:Lcom/yandex/metrica/impl/ob/az;

.field private c:Lcom/yandex/metrica/impl/ob/t;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bw;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bf;->c:Lcom/yandex/metrica/impl/ob/t;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/bb;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bc;

    invoke-direct {v1, p2}, Lcom/yandex/metrica/impl/ob/bc;-><init>(Lcom/yandex/metrica/impl/ob/bw;)V

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/bb;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bc;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->a:Lcom/yandex/metrica/impl/ob/bb;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/az;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ba;

    invoke-direct {v1, p2}, Lcom/yandex/metrica/impl/ob/ba;-><init>(Lcom/yandex/metrica/impl/ob/bw;)V

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/az;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/ba;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->b:Lcom/yandex/metrica/impl/ob/az;

    .line 31
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bd;Lcom/yandex/metrica/impl/ob/bd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bd;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bd;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bf;->c:Lcom/yandex/metrica/impl/ob/t;

    .line 1323
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object v2

    .line 56
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/bf;->a(Lcom/yandex/metrica/impl/ob/bd;)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;)V

    .line 57
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/bd;->a(Z)V

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/bd;->h()V

    .line 63
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bd;->d()V

    .line 64
    const/4 v0, 0x1

    .line 68
    :goto_1
    return v0

    .line 58
    :cond_1
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/bd;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bf;->c:Lcom/yandex/metrica/impl/ob/t;

    .line 2323
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object v2

    .line 59
    invoke-virtual {p0, p3}, Lcom/yandex/metrica/impl/ob/bf;->a(Lcom/yandex/metrica/impl/ob/bd;)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bg;)V

    .line 60
    invoke-virtual {p3, v0}, Lcom/yandex/metrica/impl/ob/bd;->a(Z)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bd;->i()V

    goto :goto_1
.end method

.method private f()Lcom/yandex/metrica/impl/ob/bd;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->a:Lcom/yandex/metrica/impl/ob/bb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->a:Lcom/yandex/metrica/impl/ob/bb;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->b:Lcom/yandex/metrica/impl/ob/az;

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/bd;)Lcom/yandex/metrica/impl/ob/bg;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lcom/yandex/metrica/impl/ob/bg;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/bg;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bd;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bg;->a(J)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bd;->a()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bg;->a(Lcom/yandex/metrica/impl/ob/bi;)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bd;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bg;->b(J)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bd;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bg;->c(J)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->a:Lcom/yandex/metrica/impl/ob/bb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bb;->i()V

    .line 35
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bf;->f()Lcom/yandex/metrica/impl/ob/bd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bd;->a(Z)V

    .line 73
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/h;)Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->a:Lcom/yandex/metrica/impl/ob/bb;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bf;->b:Lcom/yandex/metrica/impl/ob/az;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/bf;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bd;Lcom/yandex/metrica/impl/ob/bd;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->a:Lcom/yandex/metrica/impl/ob/bb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bb;->h()V

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->b:Lcom/yandex/metrica/impl/ob/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/az;->h()V

    .line 40
    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/h;)Z
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->a:Lcom/yandex/metrica/impl/ob/bb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bb;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bf;->b:Lcom/yandex/metrica/impl/ob/az;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bf;->a:Lcom/yandex/metrica/impl/ob/bb;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/bf;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bd;Lcom/yandex/metrica/impl/ob/bd;)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()[J
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bf;->b:Lcom/yandex/metrica/impl/ob/az;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/az;->c()J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bf;->a:Lcom/yandex/metrica/impl/ob/bb;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bb;->c()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/bg;
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bf;->f()Lcom/yandex/metrica/impl/ob/bd;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/yandex/metrica/impl/ob/bg;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/bg;-><init>()V

    .line 91
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bd;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bg;->a(J)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bd;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bg;->b(J)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bd;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bg;->c(J)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bd;->a()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bg;->a(Lcom/yandex/metrica/impl/ob/bi;)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/bg;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 3029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 104
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bf;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->i()Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v2

    sget-object v3, Lcom/yandex/metrica/impl/ob/bi;->b:Lcom/yandex/metrica/impl/ob/bi;

    invoke-virtual {v2, v0, v1, v3}, Lcom/yandex/metrica/impl/ob/bk;->a(JLcom/yandex/metrica/impl/ob/bi;)V

    .line 105
    new-instance v2, Lcom/yandex/metrica/impl/ob/bg;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/bg;-><init>()V

    .line 106
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bg;->a(J)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/bi;->b:Lcom/yandex/metrica/impl/ob/bi;

    .line 107
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bg;->a(Lcom/yandex/metrica/impl/ob/bi;)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/bg;->b(J)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/bg;->c(J)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object v0

    return-object v0
.end method
