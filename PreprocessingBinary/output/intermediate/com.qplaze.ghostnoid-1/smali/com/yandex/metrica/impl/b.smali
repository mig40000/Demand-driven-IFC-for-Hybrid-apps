.class public abstract Lcom/yandex/metrica/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/b;


# static fields
.field public static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lcom/yandex/metrica/impl/as;

.field protected final c:Lcom/yandex/metrica/impl/au;

.field private d:Lcom/yandex/metrica/impl/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/b;->a:Ljava/util/Collection;

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/au;Lcom/yandex/metrica/impl/as;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    .line 66
    iput-object p4, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-static {}, Lcom/yandex/metrica/impl/utils/e$a;->d()Lcom/yandex/metrica/impl/utils/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/as;->a(Lcom/yandex/metrica/impl/utils/e$a;)V

    .line 71
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/h;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;)V

    .line 288
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/as;)V

    .line 75
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->b(I)V

    .line 246
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    sget-object v0, Lcom/yandex/metrica/impl/b;->a:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    if-nez p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Lcom/yandex/metrica/impl/p;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/h;)V

    .line 203
    :cond_0
    return-void

    .line 200
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method a(Lcom/yandex/metrica/impl/j;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/as;->a(Lcom/yandex/metrica/impl/j;)V

    .line 83
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/dl;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/as;->b(Lcom/yandex/metrica/impl/ob/dl;)V

    .line 79
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/w;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/w;

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->h(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/as;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/au;->b(Lcom/yandex/metrica/impl/as;)V

    .line 125
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/au;->d()V

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/w;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/w;->b()V

    .line 140
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    invoke-static {p1}, Lcom/yandex/metrica/impl/p;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;)V

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->e()Z

    move-result v0

    .line 1151
    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->m:Lcom/yandex/metrica/impl/p$a;

    invoke-static {v1}, Lcom/yandex/metrica/impl/p;->d(Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;)V

    .line 145
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/metrica/impl/au;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/as;)V

    .line 120
    :cond_0
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/au;->e()V

    .line 166
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/w;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/w;->a()V

    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    invoke-static {p1}, Lcom/yandex/metrica/impl/p;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;)V

    .line 170
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->d()V

    .line 172
    :cond_0
    return-void
.end method

.method c()Z
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 274
    :goto_0
    if-eqz v0, :cond_0

    .line 275
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/p;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    iget-object v3, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v2, v1, v3}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;)V

    .line 279
    :cond_0
    return v0

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Lcom/yandex/metrica/impl/as;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 226
    const-string v0, "Native Crash"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/au;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/as;)V

    .line 229
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->a()Z

    move-result v0

    return v0
.end method

.method public onPauseSession()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/b;->c(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onResumeSession()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/b;->b(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 207
    const-string v0, "Message"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/h;)V

    .line 211
    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/b;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "jsonValue"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "Event Name"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/p;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/h;)V

    .line 183
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Event Name"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {p2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    invoke-static {p1}, Lcom/yandex/metrica/impl/p;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/b;->d()Lcom/yandex/metrica/impl/as;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;Ljava/util/Map;)V

    .line 190
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 220
    const-string v0, "Exception"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/au;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/au;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/as;)V

    .line 223
    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 1
    .param p1, "sessionTimeOut"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->c(I)V

    .line 216
    return-void
.end method
