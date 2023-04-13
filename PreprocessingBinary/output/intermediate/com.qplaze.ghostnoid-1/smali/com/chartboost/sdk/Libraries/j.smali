.class public final Lcom/chartboost/sdk/Libraries/j;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/chartboost/sdk/Libraries/j;


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/Libraries/j;->a:I

    .line 19
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/chartboost/sdk/Libraries/j;->b:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/j;->b:Lcom/chartboost/sdk/Libraries/j;

    iget v0, v0, Lcom/chartboost/sdk/Libraries/j;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 29
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/j;->b:Lcom/chartboost/sdk/Libraries/j;

    .line 31
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/j;->b:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/chartboost/sdk/Libraries/j;->a:I

    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 57
    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 60
    :cond_0
    return-object v0
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/Libraries/j;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/j;->a()I

    move-result v0

    return v0
.end method
