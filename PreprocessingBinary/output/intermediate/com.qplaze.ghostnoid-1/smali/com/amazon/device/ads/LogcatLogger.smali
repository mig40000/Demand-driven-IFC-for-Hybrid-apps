.class Lcom/amazon/device/ads/LogcatLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/device/ads/Logger;


# instance fields
.field private logTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/LogcatLogger;
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/LogcatLogger;->logTag:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Logger;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/LogcatLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/LogcatLogger;

    move-result-object v0

    return-object v0
.end method
