.class Lcom/chartboost/sdk/impl/i$2$1;
.super Lcom/chartboost/sdk/impl/bg$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/i$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/i$2;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/i$2;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i$2$1;->a:Lcom/chartboost/sdk/impl/i$2;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/bg;I)V
    .locals 2

    .prologue
    .line 198
    const-string v0, "CBRewardedVideo"

    const-string v1, "post-popup dismissed"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    return-void
.end method
