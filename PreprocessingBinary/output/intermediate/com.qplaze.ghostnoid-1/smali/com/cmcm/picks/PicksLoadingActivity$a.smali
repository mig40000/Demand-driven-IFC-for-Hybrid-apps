.class Lcom/cmcm/picks/PicksLoadingActivity$a;
.super Ljava/lang/Object;
.source "PicksLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/PicksLoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Lcom/cmcm/picks/PicksLoadingActivity$a;->a:I

    .line 182
    iput p2, p0, Lcom/cmcm/picks/PicksLoadingActivity$a;->b:I

    .line 183
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 186
    invoke-static {}, Lcom/cmcm/picks/PicksLoadingActivity;->a()I

    move-result v0

    iget v1, p0, Lcom/cmcm/picks/PicksLoadingActivity$a;->a:I

    if-lt v0, v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/cmcm/picks/PicksLoadingActivity$a;->b:I

    invoke-static {v0}, Lcom/cmcm/picks/PicksLoadingActivity;->a(I)I

    .line 190
    invoke-static {}, Lcom/cmcm/picks/PicksLoadingActivity;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    invoke-static {}, Lcom/cmcm/picks/PicksLoadingActivity;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/picks/PicksLoadingActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 193
    :cond_1
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
