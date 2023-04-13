.class public interface abstract Lcom/chartboost/sdk/Libraries/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Lcom/chartboost/sdk/Libraries/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/chartboost/sdk/Libraries/a;->a:I

    .line 280
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/f$a;

    const/4 v1, 0x0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/f;->b()Lcom/chartboost/sdk/Libraries/f$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/chartboost/sdk/Libraries/a$1;

    invoke-direct {v2}, Lcom/chartboost/sdk/Libraries/a$1;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/f;->b([Lcom/chartboost/sdk/Libraries/f$a;)Lcom/chartboost/sdk/Libraries/f$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/a;->b:Lcom/chartboost/sdk/Libraries/f$a;

    return-void
.end method
