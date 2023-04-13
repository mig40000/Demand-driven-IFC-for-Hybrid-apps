.class public Lcom/yandex/metrica/impl/ob/ct;
.super Lcom/yandex/metrica/impl/ob/cs;
.source "SourceFile"


# static fields
.field private static final c:Lcom/yandex/metrica/impl/ob/cz;

.field private static final d:Lcom/yandex/metrica/impl/ob/cz;

.field private static final e:Lcom/yandex/metrica/impl/ob/cz;

.field private static final f:Lcom/yandex/metrica/impl/ob/cz;

.field private static final g:Lcom/yandex/metrica/impl/ob/cz;

.field private static final h:Lcom/yandex/metrica/impl/ob/cz;

.field private static final i:Lcom/yandex/metrica/impl/ob/cz;

.field private static final j:Lcom/yandex/metrica/impl/ob/cz;

.field private static final k:Lcom/yandex/metrica/impl/ob/cz;

.field private static final l:Lcom/yandex/metrica/impl/ob/cz;


# instance fields
.field private m:Lcom/yandex/metrica/impl/ob/cz;

.field private n:Lcom/yandex/metrica/impl/ob/cz;

.field private o:Lcom/yandex/metrica/impl/ob/cz;

.field private p:Lcom/yandex/metrica/impl/ob/cz;

.field private q:Lcom/yandex/metrica/impl/ob/cz;

.field private r:Lcom/yandex/metrica/impl/ob/cz;

.field private s:Lcom/yandex/metrica/impl/ob/cz;

.field private t:Lcom/yandex/metrica/impl/ob/cz;

.field private u:Lcom/yandex/metrica/impl/ob/cz;

.field private v:Lcom/yandex/metrica/impl/ob/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "UUID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ct;->c:Lcom/yandex/metrica/impl/ob/cz;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "DEVICEID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ct;->d:Lcom/yandex/metrica/impl/ob/cz;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "DEVICEID_2"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ct;->e:Lcom/yandex/metrica/impl/ob/cz;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "DEVICEID_3"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ct;->f:Lcom/yandex/metrica/impl/ob/cz;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "AD_URL_GET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ct;->g:Lcom/yandex/metrica/impl/ob/cz;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "AD_URL_REPORT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ct;->h:Lcom/yandex/metrica/impl/ob/cz;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "HOST_URL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ct;->i:Lcom/yandex/metrica/impl/ob/cz;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "UUID_SOURCE"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "SERVER_TIME_OFFSET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ct;->j:Lcom/yandex/metrica/impl/ob/cz;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "STARTUP_REQUEST_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ct;->k:Lcom/yandex/metrica/impl/ob/cz;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "CLIDS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ct;->l:Lcom/yandex/metrica/impl/ob/cz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/cs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->t:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->o:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ct;->n:Lcom/yandex/metrica/impl/ob/cz;

    .line 86
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->m:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)J
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->u:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/ct;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ct;->i()Lcom/yandex/metrica/impl/ob/cs;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ct;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->p:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->q:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->r:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->s:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "_startupinfopreferences"

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->v:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/cs;->h()V

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ct;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->m:Lcom/yandex/metrica/impl/ob/cz;

    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ct;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->n:Lcom/yandex/metrica/impl/ob/cz;

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ct;->e:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->o:Lcom/yandex/metrica/impl/ob/cz;

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ct;->f:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->p:Lcom/yandex/metrica/impl/ob/cz;

    .line 63
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ct;->g:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->q:Lcom/yandex/metrica/impl/ob/cz;

    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ct;->h:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->r:Lcom/yandex/metrica/impl/ob/cz;

    .line 65
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ct;->i:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->s:Lcom/yandex/metrica/impl/ob/cz;

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ct;->j:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->t:Lcom/yandex/metrica/impl/ob/cz;

    .line 67
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ct;->k:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->u:Lcom/yandex/metrica/impl/ob/cz;

    .line 68
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ct;->l:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->v:Lcom/yandex/metrica/impl/ob/cz;

    .line 69
    return-void
.end method
