.class Lcom/unity3d/ads2/cache/CacheThreadHandler;
.super Landroid/os/Handler;
.source "CacheThreadHandler.java"


# instance fields
.field private _active:Z

.field private _canceled:Z

.field private _currentRequest:Lcom/unity3d/ads2/request/WebRequest;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    .line 29
    iput-boolean v1, p0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_canceled:Z

    .line 30
    iput-boolean v1, p0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_active:Z

    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;JIII)V
    .locals 21

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_canceled:Z

    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_2

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unity Ads cache: resuming download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads2/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 77
    :goto_1
    invoke-static {}, Lcom/unity3d/ads2/device/Device;->isActiveNetworkConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 78
    const-string v4, "Unity Ads cache: download cancelled, no internet connection available"

    invoke-static {v4}, Lcom/unity3d/ads2/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/unity3d/ads2/cache/CacheError;->NO_INTERNET:Lcom/unity3d/ads2/cache/CacheError;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unity Ads cache: start downloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads2/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_active:Z

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 86
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 v5, 0x0

    .line 90
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    const-wide/16 v6, 0x0

    cmp-long v4, p3, v6

    if-lez v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    .line 91
    :try_start_1
    invoke-direct/range {v4 .. v9}, Lcom/unity3d/ads2/cache/CacheThreadHandler;->getWebRequest(Ljava/lang/String;JII)Lcom/unity3d/ads2/request/WebRequest;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    new-instance v5, Lcom/unity3d/ads2/cache/CacheThreadHandler$1;

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/unity3d/ads2/cache/CacheThreadHandler$1;-><init>(Lcom/unity3d/ads2/cache/CacheThreadHandler;JI)V

    invoke-virtual {v4, v5}, Lcom/unity3d/ads2/request/WebRequest;->setProgressListener(Lcom/unity3d/ads2/request/IWebRequestProgressListener;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/unity3d/ads2/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    move-result-wide v10

    .line 112
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_active:Z

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    invoke-virtual {v4}, Lcom/unity3d/ads2/request/WebRequest;->getContentLength()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    invoke-virtual {v4}, Lcom/unity3d/ads2/request/WebRequest;->isCanceled()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    invoke-virtual {v4}, Lcom/unity3d/ads2/request/WebRequest;->getResponseCode()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    invoke-virtual {v4}, Lcom/unity3d/ads2/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v16

    move-object/from16 v5, p0

    move-wide/from16 v6, v18

    move-object/from16 v8, p1

    move-object/from16 v9, v20

    invoke-direct/range {v5 .. v16}, Lcom/unity3d/ads2/cache/CacheThreadHandler;->postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    .line 133
    if-eqz v17, :cond_0

    .line 134
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v4

    .line 137
    const-string v5, "Error closing stream"

    invoke-static {v5, v4}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v5

    sget-object v6, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v7, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/unity3d/ads2/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads2/cache/CacheError;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 90
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 115
    :catch_1
    move-exception v4

    .line 116
    :goto_3
    :try_start_3
    const-string v6, "Couldn\'t create target file"

    invoke-static {v6, v4}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 117
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_active:Z

    .line 118
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v8, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/unity3d/ads2/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads2/cache/CacheError;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 131
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    .line 133
    if-eqz v5, :cond_0

    .line 134
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 136
    :catch_2
    move-exception v4

    .line 137
    const-string v5, "Error closing stream"

    invoke-static {v5, v4}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v5

    sget-object v6, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v7, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/unity3d/ads2/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads2/cache/CacheError;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 120
    :catch_3
    move-exception v4

    move-object/from16 v17, v5

    .line 121
    :goto_4
    :try_start_5
    const-string v5, "Malformed URL"

    invoke-static {v5, v4}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_active:Z

    .line 123
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v5

    sget-object v6, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v7, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/unity3d/ads2/cache/CacheError;->MALFORMED_URL:Lcom/unity3d/ads2/cache/CacheError;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 131
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    .line 133
    if-eqz v17, :cond_0

    .line 134
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 136
    :catch_4
    move-exception v4

    .line 137
    const-string v5, "Error closing stream"

    invoke-static {v5, v4}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v5

    sget-object v6, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v7, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/unity3d/ads2/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads2/cache/CacheError;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 125
    :catch_5
    move-exception v4

    move-object/from16 v17, v5

    .line 126
    :goto_5
    :try_start_7
    const-string v5, "Couldn\'t request stream"

    invoke-static {v5, v4}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 127
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_active:Z

    .line 128
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v5

    sget-object v6, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v7, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/unity3d/ads2/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads2/cache/CacheError;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 131
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    .line 133
    if-eqz v17, :cond_0

    .line 134
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 136
    :catch_6
    move-exception v4

    .line 137
    const-string v5, "Error closing stream"

    invoke-static {v5, v4}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v5

    sget-object v6, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v7, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/unity3d/ads2/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads2/cache/CacheError;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 131
    :catchall_0
    move-exception v4

    move-object/from16 v17, v5

    :goto_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    .line 133
    if-eqz v17, :cond_5

    .line 134
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 139
    :cond_5
    :goto_7
    throw v4

    .line 136
    :catch_7
    move-exception v5

    .line 137
    const-string v6, "Error closing stream"

    invoke-static {v6, v5}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v6

    sget-object v7, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v8, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/unity3d/ads2/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads2/cache/CacheError;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 131
    :catchall_1
    move-exception v4

    goto :goto_6

    :catchall_2
    move-exception v4

    move-object/from16 v17, v5

    goto :goto_6

    .line 125
    :catch_8
    move-exception v4

    goto/16 :goto_5

    .line 120
    :catch_9
    move-exception v4

    goto/16 :goto_4

    .line 115
    :catch_a
    move-exception v4

    move-object/from16 v5, v17

    goto/16 :goto_3
.end method

.method private getWebRequest(Ljava/lang/String;JII)Lcom/unity3d/ads2/request/WebRequest;
    .locals 6

    .prologue
    .line 162
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 163
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    const-string v1, "Range"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    new-instance v0, Lcom/unity3d/ads2/request/WebRequest;

    const-string v2, "GET"

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads2/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-object v0
.end method

.method private postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "JJZI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 147
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    .line 148
    if-nez v2, :cond_0

    .line 149
    const-string v2, "Unity Ads cache: could not set file readable!"

    invoke-static {v2}, Lcom/unity3d/ads2/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 152
    :cond_0
    if-nez p9, :cond_1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads cache: File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes downloaded in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads2/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_END:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    invoke-static/range {p11 .. p11}, Lcom/unity3d/ads2/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads cache: downloading of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads2/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads2/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/ads2/cache/CacheEvent;->DOWNLOAD_STOPPED:Lcom/unity3d/ads2/cache/CacheEvent;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    invoke-static/range {p11 .. p11}, Lcom/unity3d/ads2/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    const-string v1, "connectTimeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 38
    const-string v1, "readTimeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 39
    const-string v1, "progressInterval"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 43
    :pswitch_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/unity3d/ads2/cache/CacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;JIII)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_active:Z

    return v0
.end method

.method public setCancelStatus(Z)V
    .locals 1

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_canceled:Z

    .line 55
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_active:Z

    .line 57
    iget-object v0, p0, Lcom/unity3d/ads2/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads2/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/ads2/request/WebRequest;->cancel()V

    .line 59
    :cond_0
    return-void
.end method
