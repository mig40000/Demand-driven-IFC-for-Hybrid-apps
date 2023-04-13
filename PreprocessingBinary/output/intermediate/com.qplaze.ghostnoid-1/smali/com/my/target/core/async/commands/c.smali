.class public Lcom/my/target/core/async/commands/c;
.super Lcom/my/target/core/async/commands/a;
.source "LoadAdCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/async/commands/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/async/commands/a",
        "<",
        "Lcom/my/target/core/models/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected e:Lcom/my/target/core/models/d;

.field protected f:Lcom/my/target/core/a;


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/d;Lcom/my/target/core/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p3}, Lcom/my/target/core/async/commands/a;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p1, p0, Lcom/my/target/core/async/commands/c;->e:Lcom/my/target/core/models/d;

    .line 58
    iput-object p2, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    .line 59
    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 4
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
    .line 147
    invoke-static {}, Lcom/my/target/core/models/c;->a()Lcom/my/target/core/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/utils/i;->a()Ljava/util/Set;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 150
    const-string v0, ""

    .line 151
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 154
    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, "exb"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exclude list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 161
    :cond_1
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/my/target/core/providers/d;->c()Lcom/my/target/core/providers/c;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    .line 95
    invoke-virtual {v1}, Lcom/my/target/core/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/providers/c;->a(Z)V

    .line 96
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/my/target/core/providers/d;->c()Lcom/my/target/core/providers/c;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    .line 98
    invoke-virtual {v1}, Lcom/my/target/core/a;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/providers/c;->b(Z)V

    .line 100
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/async/commands/c;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/my/target/core/providers/d;->a(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcom/my/target/core/utils/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/my/target/core/providers/d;->b()Lcom/my/target/core/providers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/providers/b;->getData()Ljava/util/Map;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/my/target/core/utils/h;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/providers/d;->putDataTo(Ljava/util/Map;)V

    .line 113
    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->b()Lcom/my/target/ads/CustomParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->b()Lcom/my/target/ads/CustomParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/ads/CustomParams;->putDataTo(Ljava/util/Map;)V

    .line 114
    :cond_1
    const-string v0, "formats"

    iget-object v1, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    invoke-virtual {v1}, Lcom/my/target/core/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "adman_ver"

    const-string v1, "4.5.10"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/my/target/core/async/commands/c;->a(Ljava/util/Map;)V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->e:Lcom/my/target/core/models/d;

    invoke-virtual {v0}, Lcom/my/target/core/models/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 120
    const/4 v0, 0x1

    .line 121
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    move-object v3, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    if-eqz v1, :cond_5

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    :try_start_1
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 134
    :goto_2
    if-eqz v2, :cond_3

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error collecting data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 139
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v3, v0

    .line 141
    goto/16 :goto_1

    .line 142
    :cond_4
    return-object v3

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/my/target/core/async/commands/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 6

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/my/target/core/async/commands/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 68
    const/4 v0, 0x0

    .line 69
    new-instance v2, Lcom/my/target/core/async/commands/c$a;

    invoke-direct {v2}, Lcom/my/target/core/async/commands/c$a;-><init>()V

    .line 70
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 72
    invoke-virtual {v2, v1}, Lcom/my/target/core/async/commands/c$a;->a(Ljava/lang/String;)V

    .line 73
    iget-boolean v3, v2, Lcom/my/target/core/async/commands/c$a;->a:Z

    if-nez v3, :cond_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-boolean v0, v2, Lcom/my/target/core/async/commands/c$a;->a:Z

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lcom/my/target/core/models/c;

    iget-object v3, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    invoke-virtual {v3}, Lcom/my/target/core/a;->a()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/my/target/core/models/c;-><init>(J)V

    iput-object v0, p0, Lcom/my/target/core/async/commands/c;->c:Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/core/models/c;

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/c;->a(Ljava/lang/String;)V

    .line 83
    iget-object v1, v2, Lcom/my/target/core/async/commands/c$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    iget-object v3, p0, Lcom/my/target/core/async/commands/c;->e:Lcom/my/target/core/models/d;

    iget-object v4, p0, Lcom/my/target/core/async/commands/c;->b:Landroid/content/Context;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/my/target/core/parsers/b;->a(Ljava/lang/String;Lcom/my/target/core/models/c;Lcom/my/target/core/a;Lcom/my/target/core/models/d;Landroid/content/Context;)V

    .line 86
    :goto_1
    return-void

    .line 85
    :cond_1
    iget-object v0, v2, Lcom/my/target/core/async/commands/c$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/my/target/core/async/commands/c;->d:Ljava/lang/String;

    goto :goto_1
.end method
