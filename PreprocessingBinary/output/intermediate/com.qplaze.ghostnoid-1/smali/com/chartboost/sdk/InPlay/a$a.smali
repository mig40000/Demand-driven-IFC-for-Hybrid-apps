.class Lcom/chartboost/sdk/InPlay/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/InPlay/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field final synthetic b:Lcom/chartboost/sdk/InPlay/a;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/InPlay/a;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/a$a;->b:Lcom/chartboost/sdk/InPlay/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/InPlay/a$1;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/InPlay/a$a;-><init>(Lcom/chartboost/sdk/InPlay/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ad;)V
    .locals 3

    .prologue
    .line 199
    const-string v0, "CBInPlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap download failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ad;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/a$a;->a:Ljava/lang/String;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 204
    :cond_0
    return-void
.end method
