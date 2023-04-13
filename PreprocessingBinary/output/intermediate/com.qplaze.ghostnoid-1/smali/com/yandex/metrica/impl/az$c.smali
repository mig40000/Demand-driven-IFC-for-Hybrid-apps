.class Lcom/yandex/metrica/impl/az$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 107
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->b()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/yandex/metrica/impl/ob/by;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/by;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    .line 1158
    new-instance v0, Lcom/yandex/metrica/impl/ob/cy;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cy;-><init>(Landroid/content/Context;)V

    .line 1159
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cy;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1160
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/by;->a(Z)V

    .line 1161
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cy;->b()V

    .line 2149
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/cw;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/yandex/metrica/impl/ob/cw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2150
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/cw;->a(I)J

    move-result-wide v2

    .line 2151
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 2152
    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/by;->a(J)Lcom/yandex/metrica/impl/ob/by;

    .line 2154
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cw;->a()V

    .line 3132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/r;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v0

    .line 3133
    new-instance v2, Lcom/yandex/metrica/impl/ob/cu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/yandex/metrica/impl/ob/cu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3135
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cu;->b()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    .line 3136
    sget-object v3, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    if-eq v0, v3, :cond_2

    .line 3137
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/by;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/by;

    .line 3140
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/cu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3142
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/by;

    .line 3145
    :cond_3
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cu;->e()Lcom/yandex/metrica/impl/ob/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cu;->c()Lcom/yandex/metrica/impl/ob/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cu;->k()V

    .line 114
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->h()V

    .line 116
    new-instance v0, Lcom/yandex/metrica/impl/ob/cp;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cp;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cp;->a()V

    .line 118
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cp;->b()V

    .line 4124
    new-instance v0, Lcom/yandex/metrica/impl/ob/bz;

    .line 4125
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bm;->c()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v1

    .line 4126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bz;-><init>(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V

    .line 4128
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ce;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/ce;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    return-void
.end method
