.class public final Lcom/chartboost/sdk/Libraries/CBUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(FLandroid/content/Context;)F
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static a(ILandroid/content/Context;)I
    .locals 2

    .prologue
    .line 48
    int-to-float v0, p0

    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/chartboost/sdk/Libraries/e;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    sget-object v3, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 59
    const-string v0, "window"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 64
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 68
    if-eq v0, v7, :cond_2

    move v0, v1

    .line 75
    :goto_0
    if-eqz v4, :cond_0

    if-ne v4, v7, :cond_5

    :cond_0
    move v1, v0

    .line 81
    :cond_1
    :goto_1
    if-eqz v1, :cond_6

    .line 82
    packed-switch v4, :pswitch_data_0

    .line 91
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->a:Lcom/chartboost/sdk/Libraries/e;

    .line 103
    :goto_2
    return-object v0

    :cond_2
    move v0, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v3, v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 78
    :cond_5
    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_1

    .line 84
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->g:Lcom/chartboost/sdk/Libraries/e;

    goto :goto_2

    .line 86
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->c:Lcom/chartboost/sdk/Libraries/e;

    goto :goto_2

    .line 88
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->h:Lcom/chartboost/sdk/Libraries/e;

    goto :goto_2

    .line 94
    :cond_6
    packed-switch v4, :pswitch_data_1

    .line 103
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->b:Lcom/chartboost/sdk/Libraries/e;

    goto :goto_2

    .line 96
    :pswitch_3
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->e:Lcom/chartboost/sdk/Libraries/e;

    goto :goto_2

    .line 98
    :pswitch_4
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->d:Lcom/chartboost/sdk/Libraries/e;

    goto :goto_2

    .line 100
    :pswitch_5
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->f:Lcom/chartboost/sdk/Libraries/e;

    goto :goto_2

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 94
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 192
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->g:Z

    if-nez v0, :cond_2

    .line 193
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "CBUtility"

    const-string v1, "Attempting to show Status and Navigation bars on a fullscreen activity. Please change your Chartboost activity theme to: \"@android:style/Theme.Translucent\"` in your Manifest file"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v1

    .line 200
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const/4 v0, 0x0

    .line 202
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    const/4 v0, 0x2

    .line 204
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    const/16 v0, 0x706

    .line 209
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    const/16 v0, 0x1706

    .line 215
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a$b;Lcom/chartboost/sdk/Model/c;)V
    .locals 2

    .prologue
    .line 165
    if-nez p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/c;->y:Z

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/c;->h:Z

    if-eqz v0, :cond_0

    .line 170
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/chartboost/sdk/Libraries/e;->a:Lcom/chartboost/sdk/Libraries/e;

    if-ne v0, v1, :cond_4

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 173
    :cond_4
    sget-object v1, Lcom/chartboost/sdk/Libraries/e;->c:Lcom/chartboost/sdk/Libraries/e;

    if-ne v0, v1, :cond_5

    .line 174
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 175
    :cond_5
    sget-object v1, Lcom/chartboost/sdk/Libraries/e;->b:Lcom/chartboost/sdk/Libraries/e;

    if-ne v0, v1, :cond_6

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 177
    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/Chartboost$CBFramework;)Z
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    const-string v1, "%s %s %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "Chartboost-Android-SDK"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "6.6.1"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a$b;Lcom/chartboost/sdk/Model/c;)V
    .locals 1

    .prologue
    .line 182
    if-nez p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/c;->y:Z

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/c;->h:Z

    if-eqz v0, :cond_0

    .line 186
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->h()Z

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

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 138
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 142
    :goto_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 143
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'GMT\'ZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private static f()Z
    .locals 2

    .prologue
    .line 147
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 148
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Z
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static h()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/sbin/su"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/su"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/data/local/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/system/sd/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/bin/failsafe/su"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/data/local/su"

    aput-object v4, v3, v2

    .line 158
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 159
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    :goto_1
    return v0

    .line 158
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 161
    goto :goto_1
.end method

.method public static throwProguardError(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 109
    instance-of v0, p0, Ljava/lang/NoSuchMethodException;

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "CBUtility"

    const-string v1, "Chartboost library error! Have you used proguard on your application? Make sure to add the line \'-keep class com.chartboost.sdk.** { *; }\' to your proguard config file."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "CBUtility"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "CBUtility"

    const-string v1, "Unknown Proguard error"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
