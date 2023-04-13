.class public Lcom/yandex/metrica/impl/ob/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ci$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Lcom/yandex/metrica/impl/ob/ey;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/yandex/metrica/impl/ob/ci$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/ci$1;-><init>(Lcom/yandex/metrica/impl/ob/ci;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->d:Lcom/yandex/metrica/impl/ob/ey;

    .line 49
    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/ci;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/yandex/metrica/impl/ob/ci$a;->a:Lcom/yandex/metrica/impl/ob/ci;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ci;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static d()Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 110
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/a;->a()[Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 112
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/em;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 71
    monitor-enter p0

    .line 1095
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1096
    const-string v2, "https://certificate.mobile.yandex.net/api/v1/pins"

    move-object v3, v2

    .line 1103
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1104
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ci;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ci;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    .line 72
    :goto_2
    if-eqz v0, :cond_0

    .line 73
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ci;->b:Ljava/lang/String;

    .line 74
    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/ci;->a:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/yandex/metrica/impl/ob/es;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ci;->d:Lcom/yandex/metrica/impl/ob/ey;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/es;-><init>(Lcom/yandex/metrica/impl/ob/ey;ZZ)V

    .line 76
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->d()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ci;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/es;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 83
    new-instance v1, Lcom/yandex/metrica/impl/ob/el;

    invoke-direct {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/el;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/es;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    new-instance v0, Lcom/yandex/metrica/impl/ob/eo;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/eo;-><init>(Lcom/yandex/metrica/impl/ob/ez;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/eo;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_0
    :goto_3
    monitor-exit p0

    return-void

    .line 1098
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api/v1/pins"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 1104
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ci;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
