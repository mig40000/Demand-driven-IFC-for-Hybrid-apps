.class abstract Lcom/yandex/metrica/impl/l;
.super Lcom/yandex/metrica/impl/ah;
.source "SourceFile"


# static fields
.field static final a:Landroid/content/ContentValues;


# instance fields
.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/yandex/metrica/impl/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/ContentValues;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ah;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/l;->b:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/aw;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/aw;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    return-void
.end method


# virtual methods
.method a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/l;
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 33
    iget-object v2, p0, Lcom/yandex/metrica/impl/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/l;->b(Landroid/content/ContentValues;)V

    .line 37
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/yandex/metrica/impl/ah;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 41
    const-string v0, "report_request_parameters"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    :try_start_0
    new-instance v1, Lcom/yandex/metrica/impl/utils/f$a;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/utils/f$a;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "dId"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->b(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "uId"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->a(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "kitVer"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->e(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "clientKitVer"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->f(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "kitBuildNumber"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->g(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "kitBuildType"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->h(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "appVer"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->k(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "appBuild"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->m(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "osVer"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->i(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "osApiLev"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/utils/f$a;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->a(I)V

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "lang"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/aw;->j(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/aw;

    const-string v2, "root"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/utils/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/aw;->q(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
