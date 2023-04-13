.class public final Lcom/flurry/sdk/lt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:Lcom/flurry/sdk/lt;


# instance fields
.field private final c:Lcom/flurry/sdk/lu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/flurry/sdk/lt;->a:J

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/lt;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/flurry/sdk/lu;

    invoke-direct {v0}, Lcom/flurry/sdk/lu;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lt;->c:Lcom/flurry/sdk/lu;

    .line 16
    iget-object v0, p0, Lcom/flurry/sdk/lt;->c:Lcom/flurry/sdk/lu;

    sget-wide v2, Lcom/flurry/sdk/lt;->a:J

    .line 1033
    iput-wide v2, v0, Lcom/flurry/sdk/lu;->a:J

    .line 17
    iget-object v0, p0, Lcom/flurry/sdk/lt;->c:Lcom/flurry/sdk/lu;

    .line 1037
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/lu;->b:Z

    .line 18
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/lt;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/flurry/sdk/lt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/lt;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/flurry/sdk/lt;

    invoke-direct {v0}, Lcom/flurry/sdk/lt;-><init>()V

    sput-object v0, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/lt;

    .line 25
    :cond_0
    sget-object v0, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/lt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/kh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ls;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 42
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/lt;->c:Lcom/flurry/sdk/lu;

    invoke-virtual {v0}, Lcom/flurry/sdk/lu;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/kh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ls;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/ki;->b(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 49
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/lt;->c:Lcom/flurry/sdk/lu;

    invoke-virtual {v0}, Lcom/flurry/sdk/lu;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
