.class Lcom/yandex/metrica/impl/ap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ap;->a(Lcom/yandex/metrica/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/c$a;

.field final synthetic b:Lcom/yandex/metrica/impl/ap;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ap;Lcom/yandex/metrica/c$a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$1;->b:Lcom/yandex/metrica/impl/ap;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ap$1;->a:Lcom/yandex/metrica/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/dv;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v3, p0, Lcom/yandex/metrica/impl/ap$1;->a:Lcom/yandex/metrica/c$a;

    .line 1136
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dv;->c()Ljava/util/List;

    move-result-object v4

    .line 1137
    invoke-static {v4}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1138
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v3, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    move v1, v2

    .line 1140
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1141
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1143
    iget-object v5, v3, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    aput-object v0, v5, v1

    .line 1144
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$1;->b:Lcom/yandex/metrica/impl/ap;

    iget v5, v0, Lcom/yandex/metrica/impl/ap;->q:I

    iget-object v6, v3, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 1145
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$1;->b:Lcom/yandex/metrica/impl/ap;

    iget v5, v0, Lcom/yandex/metrica/impl/ap;->q:I

    const/16 v6, 0x9

    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 1140
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ap$1;->a:Lcom/yandex/metrica/c$a;

    .line 2122
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dv;->a()Ljava/util/List;

    move-result-object v3

    .line 2123
    invoke-static {v3}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2124
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$h;

    iput-object v0, v1, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$h;

    .line 2126
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2127
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/dt;

    .line 2128
    iget-object v4, v1, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$h;

    invoke-static {v0}, Lcom/yandex/metrica/impl/al;->a(Lcom/yandex/metrica/impl/ob/dt;)Lcom/yandex/metrica/c$a$h;

    move-result-object v0

    aput-object v0, v4, v2

    .line 2129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$1;->b:Lcom/yandex/metrica/impl/ap;

    iget v4, v0, Lcom/yandex/metrica/impl/ap;->q:I

    iget-object v5, v1, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$h;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/b;->b(Lcom/yandex/metrica/impl/ob/d;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 2130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$1;->b:Lcom/yandex/metrica/impl/ap;

    iget v4, v0, Lcom/yandex/metrica/impl/ap;->q:I

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/yandex/metrica/impl/ap;->q:I

    .line 2126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_2
    return-void
.end method
