.class public Lcom/cmcm/utils/i;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public static a(I)Z
    .locals 1

    .prologue
    .line 121
    .line 122
    packed-switch p0, :pswitch_data_0

    .line 131
    :pswitch_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 128
    :pswitch_1
    const/4 v0, 0x1

    .line 129
    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    if-nez v0, :cond_0

    move v0, v1

    .line 46
    :goto_0
    return v0

    .line 33
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    if-nez v0, :cond_1

    move v0, v1

    .line 36
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    move v0, v1

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 43
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v2

    .line 44
    goto :goto_0

    :cond_3
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x4

    .line 56
    if-nez p0, :cond_0

    .line 88
    :goto_0
    return v3

    .line 61
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 64
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 65
    if-ne v4, v2, :cond_2

    .line 66
    invoke-static {p0}, Lcom/cmcm/utils/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x3

    :goto_1
    move v3, v0

    .line 88
    goto :goto_0

    :cond_1
    move v0, v1

    .line 69
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 73
    invoke-static {v0}, Lcom/cmcm/utils/i;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {v0}, Lcom/cmcm/utils/i;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    const/4 v0, 0x2

    goto :goto_1

    .line 77
    :cond_4
    invoke-static {v0}, Lcom/cmcm/utils/i;->b(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    .line 78
    const/4 v0, 0x5

    goto :goto_1

    :cond_5
    move v0, v1

    .line 82
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    move v0, v3

    .line 85
    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(I)Z
    .locals 1

    .prologue
    .line 144
    .line 145
    packed-switch p0, :pswitch_data_0

    .line 158
    :pswitch_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    .line 155
    :pswitch_1
    const/4 v0, 0x1

    .line 156
    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    if-nez p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v2

    .line 107
    :cond_1
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 108
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 109
    if-nez v1, :cond_2

    move v1, v2

    .line 110
    :goto_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 111
    const/4 v2, 0x1

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-static {p0}, Lcom/cmcm/utils/i;->b(Landroid/content/Context;)I

    move-result v1

    .line 166
    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 182
    if-eqz p0, :cond_1

    .line 183
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 185
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 192
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 198
    goto :goto_0
.end method
