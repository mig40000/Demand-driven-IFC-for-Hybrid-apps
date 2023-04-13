.class Lcom/cmcm/picks/gaid/a$1;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/gaid/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/gaid/a;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/gaid/a;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cmcm/picks/gaid/a$1;->a:Lcom/cmcm/picks/gaid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 134
    invoke-static {v3}, Lcom/cmcm/picks/gaid/a;->a(Landroid/content/Context;)Lcom/cmcm/picks/gaid/c;

    move-result-object v4

    .line 136
    if-nez v4, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const/4 v2, 0x0

    .line 141
    :try_start_0
    invoke-virtual {v4}, Lcom/cmcm/picks/gaid/c;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/picks/gaid/a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/gaid/b;

    .line 144
    invoke-interface {v0}, Lcom/cmcm/picks/gaid/b;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 145
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v0, v5}, Lcom/cmcm/picks/gaid/b;->a(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 150
    if-eqz v4, :cond_2

    .line 151
    :try_start_2
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v1, v2

    .line 156
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/cmcm/picks/gaid/a$1;->a:Lcom/cmcm/picks/gaid/a;

    invoke-static {v2}, Lcom/cmcm/picks/gaid/a;->a(Lcom/cmcm/picks/gaid/a;)Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 158
    :try_start_3
    iget-object v3, p0, Lcom/cmcm/picks/gaid/a$1;->a:Lcom/cmcm/picks/gaid/a;

    invoke-static {v3, v1}, Lcom/cmcm/picks/gaid/a;->a(Lcom/cmcm/picks/gaid/a;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/cmcm/picks/gaid/a$1;->a:Lcom/cmcm/picks/gaid/a;

    invoke-static {v1, v0}, Lcom/cmcm/picks/gaid/a;->a(Lcom/cmcm/picks/gaid/a;Z)Z

    .line 160
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 154
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 155
    goto :goto_1

    .line 146
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 150
    :goto_2
    if-eqz v4, :cond_3

    .line 151
    :try_start_4
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 154
    goto :goto_1

    :catch_2
    move-exception v2

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 155
    goto :goto_1

    .line 149
    :catchall_1
    move-exception v0

    .line 150
    if-eqz v4, :cond_4

    .line 151
    :try_start_5
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 154
    :cond_4
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 146
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method
