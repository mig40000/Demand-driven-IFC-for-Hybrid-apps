.class public Lcom/yandex/metrica/impl/z;
.super Lcom/yandex/metrica/impl/b;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ac;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/au;)V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p2}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/as;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/as;-><init>()V

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/yandex/metrica/impl/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/au;Lcom/yandex/metrica/impl/as;)V

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    new-instance v1, Lcom/yandex/metrica/impl/ak;

    invoke-virtual {p2}, Lcom/yandex/metrica/e;->getPreloadInfo()Lcom/yandex/metrica/PreloadInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ak;-><init>(Lcom/yandex/metrica/PreloadInfo;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/as;->a(Lcom/yandex/metrica/impl/ak;)V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 75
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/yandex/metrica/impl/z;->c:Lcom/yandex/metrica/impl/au;

    invoke-static {v0}, Lcom/yandex/metrica/impl/p;->a(Landroid/net/Uri;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v1, v0, v2}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    const-string v1, "Null activity parameter for reportAppOpen(Activity)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Application;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    const-string v0, "Application"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 91
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    const-string v1, "Enable activity auto tracking"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    new-instance v0, Lcom/yandex/metrica/impl/m;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/m;-><init>(Lcom/yandex/metrica/impl/z;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    const-string v1, "Could not enable activity auto tracking. API level should be more than 14 (ICE_CREAM_SANDWICH)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/location/Location;)V

    .line 143
    return-void
.end method

.method a(Lcom/yandex/metrica/e;Z)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Lcom/yandex/metrica/e;)V

    .line 121
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/z;->d(Z)V

    .line 123
    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/z;->b()V

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->i()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/z;->b(Ljava/util/Map;)V

    .line 127
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getErrorEnvironment()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/z;->a(Ljava/util/Map;)V

    .line 128
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/j;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/j;)V

    .line 49
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/dl;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/ob/dl;)V

    .line 44
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    const-string v1, "Invalid Error Environment (key,value) pair: (%s,%s)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->d(Z)V

    .line 172
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->c:Lcom/yandex/metrica/impl/au;

    invoke-static {}, Lcom/yandex/metrica/impl/p;->a()Lcom/yandex/metrica/impl/h;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;)V

    .line 173
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/z;->d(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/z;->b(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    const-string v1, "Invalid App Environment (key,value) pair: (%s,%s)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->c(Z)V

    .line 148
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/z;->d(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/z;->c(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Z)V

    .line 133
    return-void
.end method

.method d(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_0
    return-object v0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->c:Lcom/yandex/metrica/impl/au;

    iget-object v1, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/au;->a(ZLcom/yandex/metrica/impl/as;)V

    .line 138
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->k()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/as;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->q()Z

    move-result v0

    return v0
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/b;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    const-string v1, "Error received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/b;->reportEvent(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "jsonValue"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/b;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    const-string v1, "Event received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
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
    .line 64
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/b;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    const-string v1, "Event received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method
