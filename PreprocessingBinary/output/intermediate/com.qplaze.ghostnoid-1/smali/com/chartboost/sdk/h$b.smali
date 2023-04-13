.class Lcom/chartboost/sdk/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/h;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/h;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 681
    iput-object p1, p0, Lcom/chartboost/sdk/h$b;->a:Lcom/chartboost/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    invoke-direct {p0}, Lcom/chartboost/sdk/h$b;->a()Lcom/chartboost/sdk/a;

    move-result-object v2

    .line 683
    iget-object v0, p1, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/chartboost/sdk/h$b;->b:I

    .line 684
    iget-object v0, p1, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/chartboost/sdk/h$b;->c:I

    .line 685
    if-nez v2, :cond_2

    :goto_2
    iput v1, p0, Lcom/chartboost/sdk/h$b;->d:I

    .line 686
    return-void

    .line 683
    :cond_0
    iget-object v0, p1, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 684
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->hashCode()I

    move-result v0

    goto :goto_1

    .line 685
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/h$1;)V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/h$b;-><init>(Lcom/chartboost/sdk/h;)V

    return-void
.end method

.method private a()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 678
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 689
    invoke-direct {p0}, Lcom/chartboost/sdk/h$b;->a()Lcom/chartboost/sdk/a;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lcom/chartboost/sdk/h$b;->a:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/h$b;->a:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/h$b;->c:I

    if-ne v1, v2, :cond_0

    .line 691
    iget-object v1, p0, Lcom/chartboost/sdk/h$b;->a:Lcom/chartboost/sdk/h;

    iput-object v3, v1, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    .line 692
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/h$b;->d:I

    if-ne v0, v1, :cond_1

    .line 693
    sput-object v3, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 694
    :cond_1
    return-void
.end method
