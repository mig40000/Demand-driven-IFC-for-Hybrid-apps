.class Lcom/yandex/metrica/impl/ob/s$a;
.super Lcom/yandex/metrica/impl/ob/s$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/cu;

.field private final b:Lcom/yandex/metrica/impl/ob/bw;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/s$e;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 63
    new-instance v0, Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/cu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    .line 64
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->y()Lcom/yandex/metrica/impl/ob/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    .line 65
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cu;->g()Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    const-wide/high16 v6, -0x8000000000000000L

    const-wide/16 v4, 0x0

    .line 75
    .line 1128
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0, v8, v9}, Lcom/yandex/metrica/impl/ob/cu;->e(J)J

    move-result-wide v0

    .line 1129
    cmp-long v2, v0, v8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    .line 1130
    invoke-virtual {v2, v8, v9}, Lcom/yandex/metrica/impl/ob/bw;->e(J)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    .line 1131
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->n(J)Lcom/yandex/metrica/impl/ob/bw;

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0, v6, v7}, Lcom/yandex/metrica/impl/ob/cu;->b(J)J

    move-result-wide v0

    .line 1134
    cmp-long v2, v0, v6

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v6, v7}, Lcom/yandex/metrica/impl/ob/bw;->b(J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 1135
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->k(J)Lcom/yandex/metrica/impl/ob/bw;

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/cu;->g(J)J

    move-result-wide v0

    .line 1138
    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    .line 1139
    invoke-virtual {v2, v4, v5}, Lcom/yandex/metrica/impl/ob/bw;->g(J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1140
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->p(J)Lcom/yandex/metrica/impl/ob/bw;

    .line 1142
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/cu;->i(J)J

    move-result-wide v0

    .line 1143
    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    .line 1144
    invoke-virtual {v2, v4, v5}, Lcom/yandex/metrica/impl/ob/bw;->i(J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1145
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->r(J)Lcom/yandex/metrica/impl/ob/bw;

    .line 2105
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0, v8, v9}, Lcom/yandex/metrica/impl/ob/cu;->d(J)J

    move-result-wide v0

    .line 2106
    cmp-long v2, v8, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v8, v9}, Lcom/yandex/metrica/impl/ob/bw;->d(J)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_4

    .line 2107
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->m(J)Lcom/yandex/metrica/impl/ob/bw;

    .line 2109
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cu;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2110
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/bw;->a(Z)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 2111
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bw;->b(Z)Lcom/yandex/metrica/impl/ob/bw;

    .line 2113
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0, v6, v7}, Lcom/yandex/metrica/impl/ob/cu;->a(J)J

    move-result-wide v0

    .line 2114
    cmp-long v2, v0, v6

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v6, v7}, Lcom/yandex/metrica/impl/ob/bw;->a(J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_6

    .line 2115
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->j(J)Lcom/yandex/metrica/impl/ob/bw;

    .line 2117
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/cu;->f(J)J

    move-result-wide v0

    .line 2118
    cmp-long v2, v0, v4

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v4, v5}, Lcom/yandex/metrica/impl/ob/bw;->f(J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 2119
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->o(J)Lcom/yandex/metrica/impl/ob/bw;

    .line 2121
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/cu;->h(J)J

    move-result-wide v0

    .line 2122
    cmp-long v2, v0, v4

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v4, v5}, Lcom/yandex/metrica/impl/ob/bw;->h(J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 2123
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->q(J)Lcom/yandex/metrica/impl/ob/bw;

    .line 3081
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cu;->a()Lcom/yandex/metrica/impl/a$a;

    move-result-object v0

    .line 3082
    if-eqz v0, :cond_9

    .line 3083
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bw;->a(Lcom/yandex/metrica/impl/a$a;)Lcom/yandex/metrica/impl/ob/bw;

    .line 3085
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0, v10}, Lcom/yandex/metrica/impl/ob/cu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3086
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v1, v10}, Lcom/yandex/metrica/impl/ob/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3087
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bw;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bw;

    .line 3089
    :cond_a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cu;->b()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    .line 3090
    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    if-eq v0, v1, :cond_b

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    .line 3091
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bw;->b()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v1, v2, :cond_b

    .line 3092
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bw;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/bw;

    .line 3094
    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0, v6, v7}, Lcom/yandex/metrica/impl/ob/cu;->c(J)J

    move-result-wide v0

    .line 3095
    cmp-long v2, v0, v6

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v6, v7}, Lcom/yandex/metrica/impl/ob/bw;->c(J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_c

    .line 3096
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/bw;->l(J)Lcom/yandex/metrica/impl/ob/bw;

    .line 3099
    :cond_c
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/bw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bw;->h()V

    .line 3100
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cu;->l()V

    .line 78
    return-void
.end method
