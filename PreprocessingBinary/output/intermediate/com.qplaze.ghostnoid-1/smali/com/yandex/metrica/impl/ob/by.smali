.class public Lcom/yandex/metrica/impl/ob/by;
.super Lcom/yandex/metrica/impl/ob/bx;
.source "SourceFile"


# static fields
.field static final a:Lcom/yandex/metrica/impl/ob/cz;

.field static final b:Lcom/yandex/metrica/impl/ob/cz;

.field static final c:Lcom/yandex/metrica/impl/ob/cz;

.field static final d:Lcom/yandex/metrica/impl/ob/cz;

.field private static final e:Lcom/yandex/metrica/impl/ob/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "LOCATION_TRACKING_ENABLED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/by;->a:Lcom/yandex/metrica/impl/ob/cz;

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "COLLECT_INSTALLED_APPS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/by;->b:Lcom/yandex/metrica/impl/ob/cz;

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "REFERRER"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/by;->c:Lcom/yandex/metrica/impl/ob/cz;

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "PREF_KEY_OFFSET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/by;->d:Lcom/yandex/metrica/impl/ob/cz;

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "LAST_MIGRATION_VERSION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/by;->e:Lcom/yandex/metrica/impl/ob/cz;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bn;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bx;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->e:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a()Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 4

    .prologue
    .line 32
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->b:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v1, v1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/yandex/metrica/impl/ob/by;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/by;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/by;
    .locals 4

    .prologue
    .line 41
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->b:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/by;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->a:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bx;->h()V

    .line 62
    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/by;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/by;->s(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/by;

    return-object v0
.end method

.method public b(I)Lcom/yandex/metrica/impl/ob/by;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->e:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/by;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/by;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/by;

    return-object v0
.end method

.method public c(I)J
    .locals 4

    .prologue
    .line 69
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/yandex/metrica/impl/ob/by;->a:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
