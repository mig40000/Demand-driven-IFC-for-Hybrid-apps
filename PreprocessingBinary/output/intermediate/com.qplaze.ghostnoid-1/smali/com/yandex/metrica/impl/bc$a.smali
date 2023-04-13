.class Lcom/yandex/metrica/impl/bc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bc$a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/bc$a$a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/yandex/metrica/impl/ob/di;

.field private n:Lcom/yandex/metrica/impl/ob/dh;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/yandex/metrica/impl/ob/di;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/di;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->m:Lcom/yandex/metrica/impl/ob/di;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->n:Lcom/yandex/metrica/impl/ob/dh;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/bc$a$a;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->a:Lcom/yandex/metrica/impl/bc$a$a;

    .line 179
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/dh;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->n:Lcom/yandex/metrica/impl/ob/dh;

    .line 211
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/di;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->m:Lcom/yandex/metrica/impl/ob/di;

    .line 187
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->e:Ljava/lang/String;

    .line 123
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bc$a;->b:Z

    .line 107
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bc$a;->b:Z

    return v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->f:Ljava/lang/String;

    .line 131
    return-void
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bc$a;->c:Z

    .line 115
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bc$a;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->g:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bc$a;->d:Z

    .line 207
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->i:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->j:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->k:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->l:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$a;->h:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/yandex/metrica/impl/bc$a$a;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->a:Lcom/yandex/metrica/impl/bc$a$a;

    return-object v0
.end method

.method public k()Lcom/yandex/metrica/impl/ob/di;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->m:Lcom/yandex/metrica/impl/ob/di;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bc$a;->d:Z

    return v0
.end method

.method public n()Lcom/yandex/metrica/impl/ob/dh;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc$a;->n:Lcom/yandex/metrica/impl/ob/dh;

    return-object v0
.end method
