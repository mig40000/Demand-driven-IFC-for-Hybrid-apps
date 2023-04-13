.class public Lcom/chartboost/sdk/impl/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/ah;

.field public final b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ah;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    .line 14
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/Exception;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
