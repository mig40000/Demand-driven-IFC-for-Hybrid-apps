.class Lcom/google/android/gms/internal/im$c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/im$c;->j(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ft:Ljava/lang/String;

.field final synthetic HJ:Lcom/google/android/gms/internal/im$c;

.field final synthetic HM:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/im$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/im$c$4;->HJ:Lcom/google/android/gms/internal/im$c;

    iput-object p2, p0, Lcom/google/android/gms/internal/im$c$4;->Ft:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/im$c$4;->HM:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/im$c$4;->HJ:Lcom/google/android/gms/internal/im$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/im$c;->HG:Lcom/google/android/gms/internal/im;

    invoke-static {v0}, Lcom/google/android/gms/internal/im;->g(Lcom/google/android/gms/internal/im;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/im$c$4;->HJ:Lcom/google/android/gms/internal/im$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/im$c;->HG:Lcom/google/android/gms/internal/im;

    invoke-static {v0}, Lcom/google/android/gms/internal/im;->g(Lcom/google/android/gms/internal/im;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/im$c$4;->Ft:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/im$c$4;->HJ:Lcom/google/android/gms/internal/im$c;

    iget-object v1, v1, Lcom/google/android/gms/internal/im$c;->HG:Lcom/google/android/gms/internal/im;

    invoke-static {v1}, Lcom/google/android/gms/internal/im;->h(Lcom/google/android/gms/internal/im;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/im$c$4;->Ft:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/im$c$4;->HM:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;->onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/im;->gd()Lcom/google/android/gms/internal/is;

    move-result-object v0

    const-string v1, "Discarded message for unknown namespace \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/im$c$4;->Ft:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/is;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
