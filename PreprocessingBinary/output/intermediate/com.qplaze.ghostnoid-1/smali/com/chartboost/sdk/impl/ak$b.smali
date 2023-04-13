.class public Lcom/chartboost/sdk/impl/ak$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Lorg/json/JSONObject;

.field final b:Lcom/chartboost/sdk/impl/ah;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/ah;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ak$b;->a:Lorg/json/JSONObject;

    .line 294
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ak$b;->b:Lcom/chartboost/sdk/impl/ah;

    .line 295
    return-void
.end method
