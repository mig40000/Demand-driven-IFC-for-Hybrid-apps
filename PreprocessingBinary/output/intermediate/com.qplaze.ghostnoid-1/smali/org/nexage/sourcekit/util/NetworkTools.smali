.class public Lorg/nexage/sourcekit/util/NetworkTools;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/nexage/sourcekit/util/HttpTools;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/nexage/sourcekit/util/NetworkTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectedToInternet(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lorg/nexage/sourcekit/util/NetworkTools;->TAG:Ljava/lang/String;

    const-string v3, "Testing connectivity:"

    invoke-static {v0, v3}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lorg/nexage/sourcekit/util/NetworkTools;->TAG:Ljava/lang/String;

    const-string v2, "Connected to Internet"

    invoke-static {v0, v2}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lorg/nexage/sourcekit/util/NetworkTools;->TAG:Ljava/lang/String;

    const-string v2, "Connected to Internet"

    invoke-static {v0, v2}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/nexage/sourcekit/util/NetworkTools;->TAG:Ljava/lang/String;

    const-string v2, "Connected to Internet"

    invoke-static {v0, v2}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/nexage/sourcekit/util/NetworkTools;->TAG:Ljava/lang/String;

    const-string v1, "No Internet connection"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method
