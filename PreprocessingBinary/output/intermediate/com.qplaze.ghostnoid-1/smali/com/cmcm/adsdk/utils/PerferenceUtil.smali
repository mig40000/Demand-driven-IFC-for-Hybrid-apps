.class public Lcom/cmcm/adsdk/utils/PerferenceUtil;
.super Ljava/lang/Object;
.source "PerferenceUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PerferenceUtil"

.field private static final key:Ljava/lang/String; = "config_cache"

.field private static mContext:Landroid/content/Context;

.field private static sSharePreference:Landroid/content/SharedPreferences;

.field private static spfName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyEditor(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static getAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 128
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 86
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 89
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getCacheJsonStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "defValue"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 30
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    const-string v2, "config_cache"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 34
    :goto_0
    monitor-exit v1

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    :try_start_1
    const-string v2, "PerferenceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get cache json error..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 102
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 105
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 118
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 121
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 73
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 21
    sput-object p0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    .line 22
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "cmadsdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 77
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 80
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-static {v0}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->applyEditor(Landroid/content/SharedPreferences$Editor;)V

    .line 83
    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 93
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 96
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-static {v0}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->applyEditor(Landroid/content/SharedPreferences$Editor;)V

    .line 99
    return-void
.end method

.method public static putLong(Ljava/lang/String;J)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 109
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 112
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-static {v0}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->applyEditor(Landroid/content/SharedPreferences$Editor;)V

    .line 115
    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 64
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-static {v0}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->applyEditor(Landroid/content/SharedPreferences$Editor;)V

    .line 67
    return-void
.end method

.method public static declared-synchronized saveCacheJsonStr(Ljava/lang/String;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v1, Lcom/cmcm/adsdk/utils/PerferenceUtil;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/cmcm/adsdk/utils/PerferenceUtil;->spfName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    .line 44
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/utils/PerferenceUtil;->sSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    const-string v2, "config_cache"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-static {v0}, Lcom/cmcm/adsdk/utils/PerferenceUtil;->applyEditor(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    monitor-exit v1

    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :try_start_1
    const-string v2, "PerferenceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save cache json error..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
