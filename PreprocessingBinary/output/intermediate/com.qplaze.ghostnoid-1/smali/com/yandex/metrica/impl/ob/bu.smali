.class public Lcom/yandex/metrica/impl/ob/bu;
.super Lcom/yandex/metrica/impl/ob/bx;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/cz;

.field private final b:Lcom/yandex/metrica/impl/ob/cz;

.field private final c:Lcom/yandex/metrica/impl/ob/cz;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bn;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bx;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "init_event_pref_key"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->a:Lcom/yandex/metrica/impl/ob/cz;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "first_event_pref_key"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->b:Lcom/yandex/metrica/impl/ob/cz;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "first_event_description_key"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->c:Lcom/yandex/metrica/impl/ob/cz;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->a:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bu;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->a:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bu;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bx;->h()V

    .line 36
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->b:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bu;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->b:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bu;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bx;->h()V

    .line 40
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bu;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bx;->h()V

    .line 60
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bu;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->c:Lcom/yandex/metrica/impl/ob/cz;

    .line 1071
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bu;->s(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bx;->h()V

    .line 68
    return-void
.end method
