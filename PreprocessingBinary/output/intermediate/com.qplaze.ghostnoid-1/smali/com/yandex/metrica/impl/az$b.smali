.class Lcom/yandex/metrica/impl/az$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yandex/metrica/impl/az$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 86
    new-instance v0, Lcom/yandex/metrica/impl/ob/cu;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/cu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    const-string v1, "_boundentrypreferences"

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/da;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 90
    sget-object v2, Lcom/yandex/metrica/impl/ob/cu;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    sget-object v3, Lcom/yandex/metrica/impl/ob/cu;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 92
    if-eqz v2, :cond_0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 93
    new-instance v3, Lcom/yandex/metrica/impl/a$a;

    invoke-direct {v3, v2, v4, v5}, Lcom/yandex/metrica/impl/a$a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/cu;->a(Lcom/yandex/metrica/impl/a$a;)Lcom/yandex/metrica/impl/ob/cu;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cu;->k()V

    .line 96
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/cu;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/cu;->d:Lcom/yandex/metrica/impl/ob/cz;

    .line 97
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    :cond_0
    return-void
.end method
