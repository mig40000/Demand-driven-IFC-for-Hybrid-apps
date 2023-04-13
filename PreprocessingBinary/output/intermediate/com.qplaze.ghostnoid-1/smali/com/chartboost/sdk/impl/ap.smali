.class Lcom/chartboost/sdk/impl/ap;
.super Lcom/chartboost/sdk/impl/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/ac",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final i:Lcom/chartboost/sdk/impl/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/ag",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/ap;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ag;Lcom/chartboost/sdk/impl/ab;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/ag",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/chartboost/sdk/impl/ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcom/chartboost/sdk/impl/ac$a;->a:Lcom/chartboost/sdk/impl/ac$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p3, v1}, Lcom/chartboost/sdk/impl/ac;-><init>(Lcom/chartboost/sdk/impl/ac$a;Ljava/lang/String;Lcom/chartboost/sdk/impl/ab;Ljava/io/File;)V

    .line 27
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ag;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/impl/ae;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ah;",
            ")",
            "Lcom/chartboost/sdk/impl/ae",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    sget-object v1, Lcom/chartboost/sdk/impl/ap;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    invoke-interface {p1}, Lcom/chartboost/sdk/impl/ah;->a()[B

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/g;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-static {v0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/ae;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    :try_start_2
    new-instance v0, Lcom/chartboost/sdk/impl/aw;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/aw;-><init>()V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Exception;)Lcom/chartboost/sdk/impl/ae;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    :try_start_4
    new-instance v2, Lcom/chartboost/sdk/impl/aw;

    invoke-direct {v2, v0}, Lcom/chartboost/sdk/impl/aw;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Exception;)Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap;->i:Lcom/chartboost/sdk/impl/ag;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ap;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
