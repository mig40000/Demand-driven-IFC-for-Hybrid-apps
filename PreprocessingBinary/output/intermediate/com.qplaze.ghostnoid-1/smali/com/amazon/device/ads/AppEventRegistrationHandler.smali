.class Lcom/amazon/device/ads/AppEventRegistrationHandler;
.super Ljava/lang/Object;


# static fields
.field protected static final APP_EVENTS_FILE:Ljava/lang/String; = "AppEventsJsonFile"

.field protected static final APP_EVENTS_FILE_MAX_SIZE:J = 0x100000L

.field protected static final APP_EVENT_NAME_KEY:Ljava/lang/String; = "evtName"

.field protected static final APP_EVENT_TIMESTAMP_KEY:Ljava/lang/String; = "ts"

.field protected static final INSTALL_REFERRER_EVENT_NAME:Ljava/lang/String; = "INSTALL_REFERRER"

.field private static final LOGTAG:Ljava/lang/String;

.field protected static instance:Lcom/amazon/device/ads/AppEventRegistrationHandler;


# instance fields
.field protected final appEventsFileLock:Ljava/lang/Object;

.field protected final eventsSent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

.field private fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

.field private fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field protected final newEventsToSave:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOGTAG:Ljava/lang/String;

    new-instance v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/DefaultFileHandlerFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/DefaultFileHandlerFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AppEventRegistrationHandler;-><init>(Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/FileHandlerFactory;)V

    sput-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->instance:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/FileHandlerFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    iput-object p1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    iput-object p2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AppEventRegistrationHandler;)Lcom/amazon/device/ads/MobileAdsInfoStore;
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    return-object v0
.end method

.method private createFileInputHandlerIfNeeded()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "No files directory has been set."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

    const-string v3, "AppEventsJsonFile"

    invoke-interface {v2, v1, v3}, Lcom/amazon/device/ads/FileHandlerFactory;->createFileInputHandler(Ljava/io/File;Ljava/lang/String;)Lcom/amazon/device/ads/FileInputHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    :cond_2
    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createFileOutputHandlerIfNeeded()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "No files directory has been set."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileHandlerFactory:Lcom/amazon/device/ads/FileHandlerFactory;

    const-string v3, "AppEventsJsonFile"

    invoke-interface {v2, v1, v3}, Lcom/amazon/device/ads/FileHandlerFactory;->createFileOutputHandler(Ljava/io/File;Ljava/lang/String;)Lcom/amazon/device/ads/FileOutputHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    :cond_2
    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/amazon/device/ads/AppEventRegistrationHandler;
    .locals 1

    sget-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->instance:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    return-object v0
.end method


# virtual methods
.method public addEventToAppEventsCacheFile(Lcom/amazon/device/ads/AppEvent;)V
    .locals 1

    new-instance v0, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;-><init>(Lcom/amazon/device/ads/AppEventRegistrationHandler;Lcom/amazon/device/ads/AppEvent;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected appendAppEventToFile(Lcom/amazon/device/ads/AppEvent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->createFileOutputHandlerIfNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Error creating file output handler."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "evtName"

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->getPropertyEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Internal error while persisting the application event %s."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v2}, Lcom/amazon/device/ads/FileOutputHandler;->getFileLength()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Couldn\'t write the application event %s to the cache file. Maximum size limit reached."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    sget-object v3, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->APPEND:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/FileOutputHandler;->open(Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/FileOutputHandler;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Added the application event %s to the cache file."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v0}, Lcom/amazon/device/ads/FileOutputHandler;->close()V

    monitor-exit v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Couldn\'t write the application event %s to the file."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public getAppEventsJSONArray()Lorg/json/JSONArray;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->createFileInputHandlerIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Error creating file input handler."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v1}, Lcom/amazon/device/ads/FileInputHandler;->doesFileExist()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v1}, Lcom/amazon/device/ads/FileInputHandler;->open()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "App Events File could not be opened."

    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    iget-object v3, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v3}, Lcom/amazon/device/ads/FileInputHandler;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->onAppEventsRegistered()V

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v1}, Lcom/amazon/device/ads/FileInputHandler;->close()V

    monitor-exit v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileInputHandler:Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v3}, Lcom/amazon/device/ads/FileInputHandler;->close()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onAppEventsRegistered()V
    .locals 6

    invoke-direct {p0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->createFileOutputHandlerIfNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Error creating file output handler."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    sget-object v3, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->APPEND:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/FileOutputHandler;->open(Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    :try_start_5
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/FileOutputHandler;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->fileOutputHandler:Lcom/amazon/device/ads/FileOutputHandler;

    invoke-virtual {v0}, Lcom/amazon/device/ads/FileOutputHandler;->close()V

    :goto_3
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Couldn\'t write the application event(s) to the file."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "AppEventsJsonFile"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3
.end method
