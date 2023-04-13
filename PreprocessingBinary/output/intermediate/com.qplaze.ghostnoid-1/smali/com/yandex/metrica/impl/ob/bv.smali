.class public Lcom/yandex/metrica/impl/ob/bv;
.super Lcom/yandex/metrica/impl/ob/bx;
.source "SourceFile"


# static fields
.field static final a:Lcom/yandex/metrica/impl/ob/cz;

.field static final b:Lcom/yandex/metrica/impl/ob/cz;

.field static final c:Lcom/yandex/metrica/impl/ob/cz;

.field static final d:Lcom/yandex/metrica/impl/ob/cz;

.field static final e:Lcom/yandex/metrica/impl/ob/cz;

.field static final f:Lcom/yandex/metrica/impl/ob/cz;

.field static final g:Lcom/yandex/metrica/impl/ob/cz;

.field static final h:Lcom/yandex/metrica/impl/ob/cz;

.field static final i:Lcom/yandex/metrica/impl/ob/cz;

.field static final j:Lcom/yandex/metrica/impl/ob/cz;

.field static final k:Lcom/yandex/metrica/impl/ob/cz;

.field static final l:Lcom/yandex/metrica/impl/ob/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "UUID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->a:Lcom/yandex/metrica/impl/ob/cz;

    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "DEVICE_ID_POSSIBLE"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->b:Lcom/yandex/metrica/impl/ob/cz;

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "DEVICE_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->c:Lcom/yandex/metrica/impl/ob/cz;

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "AD_URL_GET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->d:Lcom/yandex/metrica/impl/ob/cz;

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "AD_URL_REPORT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->e:Lcom/yandex/metrica/impl/ob/cz;

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "HOST_URL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->f:Lcom/yandex/metrica/impl/ob/cz;

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "SERVER_TIME_OFFSET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->g:Lcom/yandex/metrica/impl/ob/cz;

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "STARTUP_REQUEST_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->h:Lcom/yandex/metrica/impl/ob/cz;

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "CLIDS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->i:Lcom/yandex/metrica/impl/ob/cz;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "COOKIE_BROWSERS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->j:Lcom/yandex/metrica/impl/ob/cz;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "BIND_ID_URL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->k:Lcom/yandex/metrica/impl/ob/cz;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "API_LEVEL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bv;->l:Lcom/yandex/metrica/impl/ob/cz;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bn;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bx;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->g:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->b:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->a:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)J
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->h:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)J
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->l:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->g:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->e:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(J)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->h:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->f:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(J)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->l:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->i:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->a:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->f:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->e:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->i:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->b:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->j:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->j:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->k:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/yandex/metrica/impl/ob/bv;->k:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bv;

    return-object v0
.end method
