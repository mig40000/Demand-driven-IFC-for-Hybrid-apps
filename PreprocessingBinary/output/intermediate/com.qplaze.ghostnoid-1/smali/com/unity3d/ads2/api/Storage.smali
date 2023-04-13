.class public Lcom/unity3d/ads2/api/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-static {p0}, Lcom/unity3d/ads2/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads2/device/Storage;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/unity3d/ads2/device/Storage;->clearStorage()Z

    move-result v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_CLEAR_STORAGE:Lcom/unity3d/ads2/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_1
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads2/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-static {p0}, Lcom/unity3d/ads2/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads2/device/Storage;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0, p1}, Lcom/unity3d/ads2/device/Storage;->delete(Ljava/lang/String;)Z

    move-result v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p2, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 166
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_DELETE_VALUE:Lcom/unity3d/ads2/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_1
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads2/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-static {p0}, Lcom/unity3d/ads2/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads2/device/Storage;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0, p1}, Lcom/unity3d/ads2/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_GET_VALUE:Lcom/unity3d/ads2/device/StorageError;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads2/device/StorageError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-static {p0}, Lcom/unity3d/ads2/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads2/device/Storage;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/ads2/device/Storage;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v3

    invoke-virtual {p3, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    aput-object v1, v0, v3

    invoke-virtual {p3, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_1
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads2/device/StorageError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getStorage(Ljava/lang/String;)Lcom/unity3d/ads2/device/Storage;
    .locals 1

    .prologue
    .line 169
    invoke-static {p0}, Lcom/unity3d/ads2/device/StorageManager$StorageType;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads2/device/StorageManager$StorageType;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/unity3d/ads2/device/StorageManager;->getStorage(Lcom/unity3d/ads2/device/StorageManager$StorageType;)Lcom/unity3d/ads2/device/Storage;

    move-result-object v0

    return-object v0
.end method

.method public static read(Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-static {p0}, Lcom/unity3d/ads2/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads2/device/Storage;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/unity3d/ads2/device/Storage;->readStorage()Z

    .line 107
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads2/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads2/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V

    .line 22
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads2/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V

    .line 32
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads2/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V

    .line 17
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads2/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V

    .line 27
    return-void
.end method

.method private static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-static {p0}, Lcom/unity3d/ads2/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads2/device/Storage;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/unity3d/ads2/device/Storage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    invoke-virtual {p3, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_SET_VALUE:Lcom/unity3d/ads2/device/StorageError;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads2/device/StorageError;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 36
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads2/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V

    .line 37
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads2/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V

    .line 47
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads2/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V

    .line 42
    return-void
.end method

.method public static write(Ljava/lang/String;Lcom/unity3d/ads2/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads2/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-static {p0}, Lcom/unity3d/ads2/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads2/device/Storage;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/unity3d/ads2/device/Storage;->writeStorage()Z

    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_WRITE_STORAGE_TO_CACHE:Lcom/unity3d/ads2/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_1
    sget-object v0, Lcom/unity3d/ads2/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads2/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads2/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
