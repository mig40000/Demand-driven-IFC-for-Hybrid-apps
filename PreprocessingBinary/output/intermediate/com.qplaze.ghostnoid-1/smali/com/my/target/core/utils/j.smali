.class public final Lcom/my/target/core/utils/j;
.super Ljava/lang/Object;
.source "NavigationHelper.java"

# interfaces
.implements Lcom/my/target/core/async/commands/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/my/target/core/async/commands/b$a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/my/target/core/async/commands/b",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/my/target/core/models/banners/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/utils/j;->a:Ljava/util/Map;

    .line 36
    return-void
.end method

.method private a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/high16 v4, 0x10000000

    .line 125
    iget-object v0, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2254
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {p2}, Lcom/my/target/core/utils/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-static {p2}, Lcom/my/target/core/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    iget-object v2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    const/4 v0, 0x1

    .line 145
    :goto_1
    if-nez v0, :cond_0

    .line 2184
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2185
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->g()Z

    move-result v0

    .line 2186
    if-eqz v0, :cond_4

    .line 2188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2189
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2190
    iget-object v1, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_3
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->j()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/my/target/core/utils/j;->a(ZLjava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 2193
    :cond_4
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2237
    iget-object v0, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2240
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2241
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2242
    const-string v2, "android.support.customtabs.extra.SESSION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2243
    iget-object v2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_5

    .line 2245
    const-string v2, "Starting chrome tab from outside activity Context, creating new task"

    invoke-static {v2}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 2246
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2248
    :cond_5
    const-string v2, "com.android.chrome"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2250
    iget-object v1, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2253
    :catch_0
    move-exception v0

    invoke-direct {p0, p2}, Lcom/my/target/core/utils/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2198
    :cond_6
    invoke-direct {p0, p2}, Lcom/my/target/core/utils/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    const-class v2, Lcom/my/target/ads/MyTargetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v1, "com.my.target.actions.webview"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "com.my.target.extras.web_vew_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 66
    .line 67
    iget-object v1, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    move v0, v2

    .line 94
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v3, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 82
    :goto_1
    if-nez p1, :cond_2

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    move v1, v2

    goto :goto_1

    .line 83
    :cond_2
    if-nez v1, :cond_3

    .line 87
    const/high16 v2, 0x10000000

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 105
    .line 106
    iget-object v1, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 179
    :goto_0
    return v0

    .line 159
    :cond_0
    if-eqz p1, :cond_1

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 162
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.vending"

    const-string v4, "com.google.android.finsky.activities.LaunchUrlHandlerActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 164
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 166
    iget-object v2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 176
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Lcom/my/target/core/async/commands/b;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 27
    check-cast p2, Ljava/lang/String;

    .line 2260
    iget-object v0, p0, Lcom/my/target/core/utils/j;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/c;

    .line 2261
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2263
    invoke-direct {p0, v0, p2}, Lcom/my/target/core/utils/j;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/utils/j;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2267
    iget-object v0, p0, Lcom/my/target/core/utils/j;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/c;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 40
    iput-object p2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/my/target/core/utils/j;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x1

    .line 45
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "store"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 1099
    iget-object v2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 48
    :goto_1
    if-eqz v1, :cond_4

    .line 50
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/my/target/core/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->i()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "deeplinkClick"

    invoke-static {v0, v1, p2}, Lcom/my/target/core/async/a;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1100
    :cond_2
    iget-object v2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 55
    :cond_3
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/my/target/core/utils/j;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    const/4 v0, 0x0

    .line 1205
    :cond_4
    iget-object v1, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1206
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 1207
    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/my/target/core/utils/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1209
    invoke-direct {p0, p1, v1}, Lcom/my/target/core/utils/j;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 1221
    :goto_2
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->i()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "click"

    iget-object v2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/async/a;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1212
    :cond_5
    iget-object v2, p0, Lcom/my/target/core/utils/j;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/my/target/core/factories/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;

    move-result-object v1

    .line 1214
    if-eqz v0, :cond_6

    .line 1216
    invoke-interface {v1, p0}, Lcom/my/target/core/async/commands/b;->a(Lcom/my/target/core/async/commands/b$a;)V

    .line 1217
    iget-object v0, p0, Lcom/my/target/core/utils/j;->a:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    :cond_6
    invoke-interface {v1}, Lcom/my/target/core/async/commands/b;->b()V

    goto :goto_2
.end method
