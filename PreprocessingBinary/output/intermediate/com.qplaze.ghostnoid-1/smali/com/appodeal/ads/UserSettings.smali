.class public Lcom/appodeal/ads/UserSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/UserSettings$Alcohol;,
        Lcom/appodeal/ads/UserSettings$Smoking;,
        Lcom/appodeal/ads/UserSettings$Relation;,
        Lcom/appodeal/ads/UserSettings$Occupation;,
        Lcom/appodeal/ads/UserSettings$Gender;
    }
.end annotation


# static fields
.field public static sendingInProgress:Z

.field public static userData:Lorg/json/JSONObject;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "appodeal"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/UserSettings;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/UserSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/appodeal/ads/UserSettings;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/UserSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0, p1, p2}, Lcom/appodeal/ads/UserSettings;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/UserSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/UserSettings;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/UserSettings;->a:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq p3, v0, :cond_0

    const-string v0, "should_update_user_settings"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/UserSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, " "

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "should_update_user_settings"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/UserSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/UserSettings;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "email"

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "gender"

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getGender()Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getGender()Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/UserSettings$Gender;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "birthday"

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "age"

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getAge()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "occupation"

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getOccupation()Lcom/appodeal/ads/UserSettings$Occupation;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getOccupation()Lcom/appodeal/ads/UserSettings$Occupation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/UserSettings$Occupation;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "relation"

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getRelation()Lcom/appodeal/ads/UserSettings$Relation;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getRelation()Lcom/appodeal/ads/UserSettings$Relation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/UserSettings$Relation;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "smoking"

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getSmoking()Lcom/appodeal/ads/UserSettings$Smoking;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getSmoking()Lcom/appodeal/ads/UserSettings$Smoking;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/UserSettings$Smoking;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "alcohol"

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getAlcohol()Lcom/appodeal/ads/UserSettings$Alcohol;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getAlcohol()Lcom/appodeal/ads/UserSettings$Alcohol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/UserSettings$Alcohol;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "interests"

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getInterests()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object v2

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public getAge()Ljava/lang/Integer;
    .locals 1

    const-string v0, "age"

    invoke-direct {p0, v0}, Lcom/appodeal/ads/UserSettings;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAlcohol()Lcom/appodeal/ads/UserSettings$Alcohol;
    .locals 1

    const-string v0, "alcohol"

    invoke-direct {p0, v0}, Lcom/appodeal/ads/UserSettings;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/UserSettings$Alcohol;->a(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Alcohol;

    move-result-object v0

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    const-string v0, "birthday"

    invoke-direct {p0, v0}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    const-string v0, "email"

    invoke-direct {p0, v0}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/appodeal/ads/UserSettings$Gender;
    .locals 1

    const-string v0, "gender"

    invoke-direct {p0, v0}, Lcom/appodeal/ads/UserSettings;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/UserSettings$Gender;->a(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    const-string v0, "interests"

    invoke-direct {p0, v0}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOccupation()Lcom/appodeal/ads/UserSettings$Occupation;
    .locals 1

    const-string v0, "occupation"

    invoke-direct {p0, v0}, Lcom/appodeal/ads/UserSettings;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/UserSettings$Occupation;->a(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Occupation;

    move-result-object v0

    return-object v0
.end method

.method public getRelation()Lcom/appodeal/ads/UserSettings$Relation;
    .locals 1

    const-string v0, "relation"

    invoke-direct {p0, v0}, Lcom/appodeal/ads/UserSettings;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/UserSettings$Relation;->a(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Relation;

    move-result-object v0

    return-object v0
.end method

.method public getSmoking()Lcom/appodeal/ads/UserSettings$Smoking;
    .locals 1

    const-string v0, "smoking"

    invoke-direct {p0, v0}, Lcom/appodeal/ads/UserSettings;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/UserSettings$Smoking;->a(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Smoking;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    invoke-direct {p0, v0}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAge(I)Lcom/appodeal/ads/UserSettings;
    .locals 4

    const-string v0, "Set age: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    const-string v0, "age"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public setAlcohol(Lcom/appodeal/ads/UserSettings$Alcohol;)Lcom/appodeal/ads/UserSettings;
    .locals 4
    .param p1    # Lcom/appodeal/ads/UserSettings$Alcohol;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set alcohol to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Set alcohol: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/appodeal/ads/UserSettings$Alcohol;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    const-string v0, "alcohol"

    invoke-virtual {p1}, Lcom/appodeal/ads/UserSettings$Alcohol;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings;

    move-result-object p0

    goto :goto_0
.end method

.method public setBirthday(Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set birthday to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Set birthday: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    const-string v0, "birthday"

    invoke-direct {p0, v0, p1}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;

    move-result-object p0

    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set email to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Set email: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    const-string v0, "email"

    invoke-direct {p0, v0, p1}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;

    move-result-object p0

    goto :goto_0
.end method

.method public setGender(Lcom/appodeal/ads/UserSettings$Gender;)Lcom/appodeal/ads/UserSettings;
    .locals 4
    .param p1    # Lcom/appodeal/ads/UserSettings$Gender;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set gender to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Set gender: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/appodeal/ads/UserSettings$Gender;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    const-string v0, "gender"

    invoke-virtual {p1}, Lcom/appodeal/ads/UserSettings$Gender;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings;

    move-result-object p0

    goto :goto_0
.end method

.method public setInterests(Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set interests to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Set interests: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    const-string v0, "interests"

    invoke-direct {p0, v0, p1}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;

    move-result-object p0

    goto :goto_0
.end method

.method public setOccupation(Lcom/appodeal/ads/UserSettings$Occupation;)Lcom/appodeal/ads/UserSettings;
    .locals 4
    .param p1    # Lcom/appodeal/ads/UserSettings$Occupation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set occupation to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Set occupation: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/appodeal/ads/UserSettings$Occupation;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    const-string v0, "occupation"

    invoke-virtual {p1}, Lcom/appodeal/ads/UserSettings$Occupation;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings;

    move-result-object p0

    goto :goto_0
.end method

.method public setRelation(Lcom/appodeal/ads/UserSettings$Relation;)Lcom/appodeal/ads/UserSettings;
    .locals 4
    .param p1    # Lcom/appodeal/ads/UserSettings$Relation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set relation to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Set relation: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/appodeal/ads/UserSettings$Relation;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    const-string v0, "relation"

    invoke-virtual {p1}, Lcom/appodeal/ads/UserSettings$Relation;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings;

    move-result-object p0

    goto :goto_0
.end method

.method public setSmoking(Lcom/appodeal/ads/UserSettings$Smoking;)Lcom/appodeal/ads/UserSettings;
    .locals 4
    .param p1    # Lcom/appodeal/ads/UserSettings$Smoking;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set smoking to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Set smoking: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/appodeal/ads/UserSettings$Smoking;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    const-string v0, "smoking"

    invoke-virtual {p1}, Lcom/appodeal/ads/UserSettings$Smoking;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings;

    move-result-object p0

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/b/a;

    const-string v1, "Unable to set user id to null"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Set userId: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    const-string v0, "userId"

    invoke-direct {p0, v0, p1}, Lcom/appodeal/ads/UserSettings;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;

    move-result-object p0

    goto :goto_0
.end method

.method public toMopubString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2c

    const-string v0, ""

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getGender()Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m_gender:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getGender()Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/UserSettings$Gender;->getMopubValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getAge()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m_age:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getAge()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getRelation()Lcom/appodeal/ads/UserSettings$Relation;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m_marital:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/UserSettings;->getRelation()Lcom/appodeal/ads/UserSettings$Relation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/UserSettings$Relation;->getMopubValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
