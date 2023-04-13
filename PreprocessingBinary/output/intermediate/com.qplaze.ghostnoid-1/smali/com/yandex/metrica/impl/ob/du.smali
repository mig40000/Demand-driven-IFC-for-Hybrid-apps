.class public Lcom/yandex/metrica/impl/ob/du;
.super Lcom/yandex/metrica/impl/ob/dn;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/metrica/impl/ob/du;


# instance fields
.field private c:Lcom/yandex/metrica/impl/ob/dn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/du;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dn;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/dq;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/dq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/du;->c:Lcom/yandex/metrica/impl/ob/dn;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/dr;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dr;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/du;->c:Lcom/yandex/metrica/impl/ob/dn;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/du;
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->b:Lcom/yandex/metrica/impl/ob/du;

    if-nez v0, :cond_1

    .line 26
    sget-object v1, Lcom/yandex/metrica/impl/ob/du;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->b:Lcom/yandex/metrica/impl/ob/du;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/du;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/du;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/du;->b:Lcom/yandex/metrica/impl/ob/du;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->b:Lcom/yandex/metrica/impl/ob/du;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/du;->c:Lcom/yandex/metrica/impl/ob/dn;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dn;->a()V

    .line 48
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/dp;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/du;->c:Lcom/yandex/metrica/impl/ob/dn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dn;->a(Lcom/yandex/metrica/impl/ob/dp;)V

    .line 62
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/dw;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/du;->c:Lcom/yandex/metrica/impl/ob/dn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dn;->a(Lcom/yandex/metrica/impl/ob/dw;)V

    .line 57
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/du;->c:Lcom/yandex/metrica/impl/ob/dn;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dn;->b()V

    .line 52
    return-void
.end method
