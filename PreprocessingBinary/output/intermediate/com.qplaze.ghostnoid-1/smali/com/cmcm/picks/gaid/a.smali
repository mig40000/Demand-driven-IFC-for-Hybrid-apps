.class public Lcom/cmcm/picks/gaid/a;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/picks/gaid/a$a;
    }
.end annotation


# static fields
.field private static c:Lcom/cmcm/picks/gaid/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/picks/gaid/a;->c:Lcom/cmcm/picks/gaid/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/picks/gaid/a;->a:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/gaid/a;->b:Z

    .line 174
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 87
    if-nez p0, :cond_1

    .line 88
    const/4 v0, 0x0

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/cmcm/picks/gaid/b;

    if-nez v1, :cond_0

    .line 94
    :cond_2
    new-instance v0, Lcom/cmcm/picks/gaid/a$a;

    invoke-direct {v0, p0}, Lcom/cmcm/picks/gaid/a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Lcom/cmcm/picks/gaid/c;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 20
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    new-instance v0, Lcom/cmcm/picks/gaid/c;

    invoke-direct {v0}, Lcom/cmcm/picks/gaid/c;-><init>()V

    .line 26
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 22
    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 32
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 34
    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/picks/gaid/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cmcm/picks/gaid/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/picks/gaid/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cmcm/picks/gaid/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/picks/gaid/a;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/cmcm/picks/gaid/a;->b:Z

    return p1
.end method

.method public static c()Lcom/cmcm/picks/gaid/a;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/cmcm/picks/gaid/a;->c:Lcom/cmcm/picks/gaid/a;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/cmcm/picks/gaid/a;

    invoke-direct {v0}, Lcom/cmcm/picks/gaid/a;-><init>()V

    sput-object v0, Lcom/cmcm/picks/gaid/a;->c:Lcom/cmcm/picks/gaid/a;

    .line 170
    :cond_0
    sget-object v0, Lcom/cmcm/picks/gaid/a;->c:Lcom/cmcm/picks/gaid/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cmcm/picks/gaid/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmcm/picks/gaid/a$1;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/gaid/a$1;-><init>(Lcom/cmcm/picks/gaid/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method
