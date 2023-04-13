.class public Lcom/chartboost/sdk/impl/al;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/al$a;
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/ai;

.field private final b:Lcom/chartboost/sdk/impl/al$a;

.field private c:Lcom/chartboost/sdk/Model/a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/al$a;Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/impl/ai;

    .line 39
    iput-object p1, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 178
    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 179
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    instance-of v3, v1, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 181
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 183
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 184
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 190
    :cond_1
    :goto_0
    return v0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    const-string v2, "CBURLOpener"

    const-string v3, "Cannot open URL"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    const-class v2, Lcom/chartboost/sdk/impl/al;

    const-string v3, "canOpenURL"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/al$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$a;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 56
    iput-object p1, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/Model/a;

    .line 59
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/al$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$a;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/al$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$a;)V

    goto :goto_0

    .line 73
    :cond_1
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    invoke-virtual {p0, p2, p3, p4}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$a;)V

    goto :goto_0

    .line 78
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/impl/al$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/chartboost/sdk/impl/al$1;-><init>(Lcom/chartboost/sdk/impl/al;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$a;)V

    .line 125
    invoke-static {}, Lcom/chartboost/sdk/impl/aa;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$a;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/Model/a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$e;->f:Lcom/chartboost/sdk/Model/a$e;

    iput-object v1, v0, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    .line 137
    :cond_0
    if-nez p2, :cond_1

    .line 138
    sget-object p2, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 139
    :cond_1
    if-nez p2, :cond_3

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/Model/a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/al$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$a;)V

    .line 174
    :cond_2
    :goto_0
    return-void

    .line 146
    :cond_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    instance-of v1, p2, Landroid/app/Activity;

    if-nez v1, :cond_4

    .line 148
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/Model/a;

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/al$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$a;)V

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v0, "market://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://market.android.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    instance-of v1, p2, Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 157
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, p1

    .line 165
    goto :goto_1

    .line 160
    :catch_1
    move-exception v0

    move-object v3, p1

    .line 161
    const-string v1, "CBURLOpener"

    const-string v4, "Exception raised openeing an inavld playstore URL"

    invoke-static {v1, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/Model/a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/al$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$a;)V

    goto :goto_0

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    if-eqz v0, :cond_7

    .line 168
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Lcom/chartboost/sdk/impl/al$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->c:Lcom/chartboost/sdk/Model/a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/al$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$a;)V

    :cond_7
    move-object v3, p1

    goto :goto_1
.end method
