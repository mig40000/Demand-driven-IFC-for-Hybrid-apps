.class public Lcom/chartboost/sdk/impl/ak$a;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/Model/CBError;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/CBError;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ak$a;->a:Lcom/chartboost/sdk/Model/CBError;

    .line 285
    return-void
.end method
