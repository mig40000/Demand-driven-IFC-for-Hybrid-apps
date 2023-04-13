.class public Lcom/yandex/metrica/impl/ob/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const-string v3, ""

    invoke-virtual {v0, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_1
    return-object v1
.end method

.method private a(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 90
    new-instance v0, Lcom/yandex/metrica/impl/ob/bz;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bz;-><init>(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcom/yandex/metrica/impl/ob/cx;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/yandex/metrica/impl/ob/cx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/ob/cx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bz;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 97
    :cond_0
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cx;->a()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bz;->q(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 101
    :cond_1
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/ob/cx;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 103
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bz;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 105
    :cond_2
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/ob/cx;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 107
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bz;->n(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 109
    :cond_3
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/ob/cx;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 111
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bz;->m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 113
    :cond_4
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/ob/cx;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 115
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bz;->o(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 117
    :cond_5
    invoke-virtual {v1, v6, v7}, Lcom/yandex/metrica/impl/ob/cx;->a(J)J

    move-result-wide v2

    .line 118
    cmp-long v4, v2, v6

    if-eqz v4, :cond_6

    .line 119
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bz;->b(J)Lcom/yandex/metrica/impl/ob/bz;

    .line 121
    :cond_6
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/ob/cx;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 123
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bz;->l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 126
    :cond_7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->h()V

    .line 127
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cx;->b()V

    .line 128
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Landroid/content/Context;

    const-string v1, "_bidoptpreferences"

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/da;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1062
    sget-object v0, Lcom/yandex/metrica/impl/ob/cx;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    new-instance v2, Lcom/yandex/metrica/impl/ob/cx;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/cx;-><init>(Landroid/content/Context;)V

    .line 1064
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v6}, Lcom/yandex/metrica/impl/ob/cx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1065
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/cx;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cx;->k()V

    .line 1066
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/yandex/metrica/impl/ob/cx;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2037
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 2038
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2039
    sget-object v2, Lcom/yandex/metrica/impl/ob/cx;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/cp;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2040
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2041
    new-instance v3, Lcom/yandex/metrica/impl/ob/cz;

    sget-object v4, Lcom/yandex/metrica/impl/ob/cx;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2042
    new-instance v4, Lcom/yandex/metrica/impl/ob/cx;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/yandex/metrica/impl/ob/cx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2043
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, v6}, Lcom/yandex/metrica/impl/ob/cx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2044
    invoke-virtual {v4, v3}, Lcom/yandex/metrica/impl/ob/cx;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cx;->k()V

    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    :cond_3
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->c()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v1

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Landroid/content/Context;

    const-string v2, "_startupserviceinfopreferences"

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/da;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2131
    new-instance v2, Lcom/yandex/metrica/impl/ob/bz;

    invoke-direct {v2, v1, v5}, Lcom/yandex/metrica/impl/ob/bz;-><init>(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V

    .line 2132
    sget-object v3, Lcom/yandex/metrica/impl/ob/cx;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2133
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v5}, Lcom/yandex/metrica/impl/ob/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2134
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/bz;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bz;->h()V

    .line 2135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/yandex/metrica/impl/ob/cx;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2140
    :cond_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/bz;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/yandex/metrica/impl/ob/bz;-><init>(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V

    .line 2141
    sget-object v3, Lcom/yandex/metrica/impl/ob/cx;->e:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2142
    if-eqz v3, :cond_1

    .line 2143
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/bz;->c(Z)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bz;->h()V

    .line 2148
    :cond_1
    new-instance v2, Lcom/yandex/metrica/impl/ob/bz;

    invoke-direct {v2, v1, v5}, Lcom/yandex/metrica/impl/ob/bz;-><init>(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V

    .line 2149
    sget-object v3, Lcom/yandex/metrica/impl/ob/cx;->f:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2150
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v5}, Lcom/yandex/metrica/impl/ob/bz;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2151
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/bz;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bz;->h()V

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yandex/metrica/impl/ob/cp;->a(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V

    .line 3082
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 3083
    sget-object v2, Lcom/yandex/metrica/impl/ob/cx;->d:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/cp;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3084
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3085
    invoke-direct {p0, v1, v0}, Lcom/yandex/metrica/impl/ob/cp;->a(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method
