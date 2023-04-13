.class Lcom/chartboost/sdk/impl/r$1;
.super Lcom/chartboost/sdk/impl/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/r;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/r;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/r;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/chartboost/sdk/impl/r$1;->a:Lcom/chartboost/sdk/impl/r;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bf;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 96
    new-array v0, v5, [Lcom/chartboost/sdk/Libraries/d$a;

    const-string v1, "paused"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->a([Lcom/chartboost/sdk/Libraries/d$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 97
    const-string v1, "click_coordinates"

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/d$a;

    const-string v3, "x"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "y"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "w"

    iget-object v5, p0, Lcom/chartboost/sdk/impl/r$1;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/bf;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "h"

    iget-object v5, p0, Lcom/chartboost/sdk/impl/r$1;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/bf;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/d;->a([Lcom/chartboost/sdk/Libraries/d$a;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r$1;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/l;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 105
    return-void
.end method
