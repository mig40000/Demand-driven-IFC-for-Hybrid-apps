.class Lcom/cmcm/picks/PicksLoadingActivity$1;
.super Ljava/lang/Object;
.source "PicksLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/PicksLoadingActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/PicksLoadingActivity;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/PicksLoadingActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/cmcm/picks/PicksLoadingActivity$1;->a:Lcom/cmcm/picks/PicksLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cmcm/picks/PicksLoadingActivity$1;->a:Lcom/cmcm/picks/PicksLoadingActivity;

    invoke-static {v0}, Lcom/cmcm/picks/PicksLoadingActivity;->a(Lcom/cmcm/picks/PicksLoadingActivity;)V

    .line 164
    return-void
.end method
