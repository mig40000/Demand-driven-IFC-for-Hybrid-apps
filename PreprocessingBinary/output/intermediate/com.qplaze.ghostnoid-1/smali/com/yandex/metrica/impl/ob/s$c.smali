.class Lcom/yandex/metrica/impl/ob/s$c;
.super Lcom/yandex/metrica/impl/ob/s$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/cr;

.field private final b:Lcom/yandex/metrica/impl/ob/bu;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/s$e;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 157
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->w()Lcom/yandex/metrica/impl/ob/cr;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/cr;

    .line 158
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->v()Lcom/yandex/metrica/impl/ob/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->b:Lcom/yandex/metrica/impl/ob/bu;

    .line 159
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    const-string v0, "DONE"

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/cr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DONE"

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/cr;

    .line 164
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/cr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/cr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "DONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->b:Lcom/yandex/metrica/impl/ob/bu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bu;->b()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/cr;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$c;->b:Lcom/yandex/metrica/impl/ob/bu;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bu;->c(Ljava/lang/String;)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/cr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, "DONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->b:Lcom/yandex/metrica/impl/ob/bu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bu;->a()V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cr;->d()V

    .line 186
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cr;->e()V

    .line 187
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cr;->c()V

    .line 188
    return-void
.end method
