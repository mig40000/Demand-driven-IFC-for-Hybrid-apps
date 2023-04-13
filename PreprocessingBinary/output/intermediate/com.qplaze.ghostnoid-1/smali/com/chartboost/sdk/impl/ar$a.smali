.class Lcom/chartboost/sdk/impl/ar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ar;

.field private final b:Lcom/chartboost/sdk/impl/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/ac",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/chartboost/sdk/impl/ah;

.field private final d:Lcom/chartboost/sdk/impl/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/ae",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ar;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ac",
            "<TT;>;",
            "Lcom/chartboost/sdk/impl/ah;",
            "Lcom/chartboost/sdk/impl/ae",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ar$a;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ar$a;->b:Lcom/chartboost/sdk/impl/ac;

    .line 246
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ar$a;->c:Lcom/chartboost/sdk/impl/ah;

    .line 247
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ar$a;->d:Lcom/chartboost/sdk/impl/ae;

    .line 248
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar$a;->d:Lcom/chartboost/sdk/impl/ae;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar$a;->b:Lcom/chartboost/sdk/impl/ac;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ar$a;->d:Lcom/chartboost/sdk/impl/ae;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ae;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ac;->a(Ljava/lang/Object;)V

    .line 259
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar$a;->b:Lcom/chartboost/sdk/impl/ac;

    new-instance v1, Lcom/chartboost/sdk/impl/ad;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ar$a;->c:Lcom/chartboost/sdk/impl/ah;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ar$a;->d:Lcom/chartboost/sdk/impl/ae;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ae;->b:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/impl/ad;-><init>(Lcom/chartboost/sdk/impl/ah;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ac;->a(Lcom/chartboost/sdk/impl/ad;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    const-class v1, Lcom/chartboost/sdk/impl/ar$a;

    const-string v2, "run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
