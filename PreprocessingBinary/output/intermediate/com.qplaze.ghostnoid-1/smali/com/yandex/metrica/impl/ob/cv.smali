.class public Lcom/yandex/metrica/impl/ob/cv;
.super Lcom/yandex/metrica/impl/ob/cs;
.source "SourceFile"


# static fields
.field private static final c:Lcom/yandex/metrica/impl/ob/cz;

.field private static final d:Lcom/yandex/metrica/impl/ob/cz;


# instance fields
.field private e:Lcom/yandex/metrica/impl/ob/cz;

.field private f:Lcom/yandex/metrica/impl/ob/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "SERVICE_API_LEVEL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/cv;->c:Lcom/yandex/metrica/impl/ob/cz;

    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "CLIENT_API_LEVEL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/cv;->d:Lcom/yandex/metrica/impl/ob/cz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/cs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cv;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cv;->e:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/cv;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cv;->e:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/cv;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cs;

    .line 58
    return-object p0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/cv;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cv;->f:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/cv;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cs;

    .line 63
    return-object p0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "_migrationpreferences"

    return-object v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/cs;->h()V

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/cv;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cv;->e:Lcom/yandex/metrica/impl/ob/cz;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v1, Lcom/yandex/metrica/impl/ob/cv;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cv;->f:Lcom/yandex/metrica/impl/ob/cz;

    .line 33
    return-void
.end method
