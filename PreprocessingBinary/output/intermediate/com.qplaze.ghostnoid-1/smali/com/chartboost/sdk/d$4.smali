.class Lcom/chartboost/sdk/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/aj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Model/a;

.field final synthetic b:Lcom/chartboost/sdk/d;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    iput-object p2, p0, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;)V
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/chartboost/sdk/d$4$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/d$4$1;-><init>(Lcom/chartboost/sdk/d$4;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 1

    .prologue
    .line 474
    new-instance v0, Lcom/chartboost/sdk/d$4$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/chartboost/sdk/d$4$2;-><init>(Lcom/chartboost/sdk/d$4;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 487
    return-void
.end method
