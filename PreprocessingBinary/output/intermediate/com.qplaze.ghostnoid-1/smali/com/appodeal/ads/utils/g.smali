.class public Lcom/appodeal/ads/utils/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/g$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/Integer;

.field private static c:Landroid/util/SparseIntArray;

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/appodeal/ads/utils/g;->d:Z

    sput-boolean v2, Lcom/appodeal/ads/utils/g;->e:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "api.appodeal.com"

    aput-object v1, v0, v2

    const-string v1, "dev.appodeal.com"

    aput-object v1, v0, v3

    const-string v1, "appodeal.local"

    aput-object v1, v0, v4

    const-string v1, "staging.appodeal.com"

    aput-object v1, v0, v5

    const-string v1, "staging2.appodeal.com"

    aput-object v1, v0, v6

    sput-object v0, Lcom/appodeal/ads/utils/g;->a:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x1bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1f90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x1f91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/appodeal/ads/utils/g;->b:[Ljava/lang/Integer;

    return-void
.end method

.method public static a()I
    .locals 2

    sget-object v0, Lcom/appodeal/ads/utils/g$a;->b:Lcom/appodeal/ads/utils/g$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/g$a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/g;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/appodeal/ads/utils/g$a;->e:Lcom/appodeal/ads/utils/g$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/g$a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/g;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/Log$LogLevel;->getValue()I

    move-result v0

    :goto_0
    sget-object v1, Lcom/appodeal/ads/AppodealSettings;->c:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-virtual {v1}, Lcom/appodeal/ads/utils/Log$LogLevel;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->debug:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/Log$LogLevel;->getValue()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->none:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/Log$LogLevel;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/appodeal/ads/utils/g;->f()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/utils/g;->f()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/utils/g;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appodeal.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    sget-boolean v4, Lcom/appodeal/ads/utils/g;->d:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    sput-boolean v4, Lcom/appodeal/ads/utils/g;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x3ff

    invoke-static {p0, v4}, Lcom/appodeal/ads/Appodeal;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/appodeal/ads/Appodeal;->disableNetwork(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_1
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/appodeal/ads/utils/g$a;->values()[Lcom/appodeal/ads/utils/g$a;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    invoke-virtual {v6}, Lcom/appodeal/ads/utils/g$a;->a()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-gt v7, v8, :cond_2

    invoke-virtual {v6}, Lcom/appodeal/ads/utils/g$a;->a()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    invoke-static {}, Lcom/appodeal/ads/utils/g;->f()Landroid/util/SparseIntArray;

    move-result-object v8

    invoke-virtual {v6}, Lcom/appodeal/ads/utils/g$a;->a()I

    move-result v6

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/utils/g;->f()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/appodeal/ads/utils/g;->f()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_5
    invoke-static {v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_6

    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_6

    sget-boolean v0, Lcom/appodeal/ads/utils/g;->e:Z

    if-nez v0, :cond_4

    sput-boolean v9, Lcom/appodeal/ads/utils/g;->e:Z

    const-string v0, "Appodeal"

    const-string v2, "WRITE_EXTERNAL_STORAGE permission is missing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    invoke-static {}, Lcom/appodeal/ads/utils/g;->f()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_4
    :try_start_9
    throw v0

    :catch_4
    move-exception v2

    invoke-static {v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    :cond_6
    const-string v2, "Appodeal"

    const-string v3, "Invalid debug file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Appodeal"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/appodeal/ads/utils/u;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;ZI)I"
        }
    .end annotation

    const/4 v8, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, p3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "package_name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package_name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    array-length v0, v2

    if-le v0, v8, :cond_1

    const/4 v0, 0x1

    aget-object v3, v2, v0

    :goto_2
    const-string v0, "offer"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/appodeal/ads/utils/u;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    const-string v5, "ecpm"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/utils/u;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "status"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_1
    const-string v3, "-1"

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/appodeal/ads/utils/u;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    const-string v5, "ecpm"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/utils/u;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1bb

    if-ne p0, v0, :cond_0

    const-string v0, "https://"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/appodeal/ads/utils/g$a;->values()[Lcom/appodeal/ads/utils/g$a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/appodeal/ads/utils/g$a;->a()I

    move-result v3

    invoke-static {p0, v3}, Lcom/appodeal/ads/utils/g;->a(Landroid/content/Context;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/appodeal/ads/utils/u;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/appodeal/ads/utils/g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)I

    return-void
.end method

.method private static b(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/appodeal/ads/utils/g;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/utils/g;->a:[Ljava/lang/String;

    invoke-static {}, Lcom/appodeal/ads/utils/g;->g()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static c()I
    .locals 2

    sget-object v0, Lcom/appodeal/ads/utils/g;->b:[Ljava/lang/Integer;

    invoke-static {}, Lcom/appodeal/ads/utils/g;->h()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f()Landroid/util/SparseIntArray;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/g;->c:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/appodeal/ads/utils/g;->c:Landroid/util/SparseIntArray;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/utils/g;->c:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private static g()I
    .locals 2

    sget-object v0, Lcom/appodeal/ads/utils/g$a;->c:Lcom/appodeal/ads/utils/g$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/g$a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/g;->b(I)I

    move-result v0

    sget-object v1, Lcom/appodeal/ads/utils/g;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static h()I
    .locals 2

    sget-object v0, Lcom/appodeal/ads/utils/g$a;->d:Lcom/appodeal/ads/utils/g$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/g$a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/g;->b(I)I

    move-result v0

    sget-object v1, Lcom/appodeal/ads/utils/g;->b:[Ljava/lang/Integer;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
