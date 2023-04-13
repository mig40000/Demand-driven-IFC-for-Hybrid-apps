.class Lcom/yandex/metrica/impl/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/bv;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bv;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    .line 55
    return-void
.end method

.method private static a(JJJ)Z
    .locals 2

    .prologue
    .line 116
    cmp-long v0, p0, p4

    if-eqz v0, :cond_0

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 59
    new-instance v6, Lcom/yandex/metrica/impl/ob/ct;

    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/ct;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/ct;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    .line 61
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 63
    :cond_0
    invoke-virtual {v6, v2}, Lcom/yandex/metrica/impl/ob/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bv;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    .line 68
    :cond_1
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/ct;->a()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bv;->m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    .line 73
    :cond_2
    invoke-virtual {v6, v2}, Lcom/yandex/metrica/impl/ob/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bv;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    .line 78
    :cond_3
    invoke-virtual {v6, v2}, Lcom/yandex/metrica/impl/ob/ct;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/bv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bv;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    .line 83
    :cond_4
    invoke-virtual {v6, v2}, Lcom/yandex/metrica/impl/ob/ct;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/bv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bv;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    .line 88
    :cond_5
    invoke-virtual {v6, v2}, Lcom/yandex/metrica/impl/ob/ct;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/bv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bv;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    .line 93
    :cond_6
    invoke-virtual {v6, v2}, Lcom/yandex/metrica/impl/ob/ct;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/bv;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 95
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bv;->l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bv;

    .line 100
    :cond_7
    invoke-virtual {v6, v4, v5}, Lcom/yandex/metrica/impl/ob/ct;->a(J)J

    move-result-wide v0

    .line 101
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v2, v4, v5}, Lcom/yandex/metrica/impl/ob/bv;->a(J)J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/yandex/metrica/impl/f$a;->a(JJJ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 102
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->d(J)Lcom/yandex/metrica/impl/ob/bv;

    .line 105
    :cond_8
    invoke-virtual {v6, v4, v5}, Lcom/yandex/metrica/impl/ob/ct;->b(J)J

    move-result-wide v0

    .line 106
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v2, v4, v5}, Lcom/yandex/metrica/impl/ob/bv;->b(J)J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/yandex/metrica/impl/f$a;->a(JJJ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 107
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->e(J)Lcom/yandex/metrica/impl/ob/bv;

    .line 110
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->h()V

    .line 111
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/ct;->b()Lcom/yandex/metrica/impl/ob/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ct;->k()V

    .line 113
    :cond_a
    return-void
.end method
