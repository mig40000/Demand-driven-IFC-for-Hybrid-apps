.class public Lcom/appodeal/ads/networks/vpaid/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/networks/vpaid/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/appodeal/ads/networks/vpaid/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->e:Lcom/appodeal/ads/networks/vpaid/c$a;

    sput-object v0, Lcom/appodeal/ads/networks/vpaid/c;->a:Lcom/appodeal/ads/networks/vpaid/c$a;

    return-void
.end method

.method public static a(Lcom/appodeal/ads/networks/vpaid/c$a;)V
    .locals 3

    const-string v0, "VPAIDLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing logging level from :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/appodeal/ads/networks/vpaid/c;->a:Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". To:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/appodeal/ads/networks/vpaid/c;->a:Lcom/appodeal/ads/networks/vpaid/c$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/networks/vpaid/c;->a:Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/vpaid/c$a;->a()I

    move-result v0

    sget-object v1, Lcom/appodeal/ads/networks/vpaid/c$a;->d:Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-virtual {v1}, Lcom/appodeal/ads/networks/vpaid/c$a;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "VPAIDLog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/networks/vpaid/c;->a:Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/vpaid/c$a;->a()I

    move-result v0

    sget-object v1, Lcom/appodeal/ads/networks/vpaid/c$a;->b:Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-virtual {v1}, Lcom/appodeal/ads/networks/vpaid/c$a;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VPAIDLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/networks/vpaid/c;->a:Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/vpaid/c$a;->a()I

    move-result v0

    sget-object v1, Lcom/appodeal/ads/networks/vpaid/c$a;->a:Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-virtual {v1}, Lcom/appodeal/ads/networks/vpaid/c$a;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VPAIDLog"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
