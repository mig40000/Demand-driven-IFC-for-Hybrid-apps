.class final Lcom/chartboost/sdk/Chartboost$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->setCustomId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$4;->a:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    .line 720
    return-void
.end method
