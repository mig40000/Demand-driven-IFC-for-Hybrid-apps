.class public Lcom/chartboost/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/chartboost/sdk/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/chartboost/sdk/g;

    invoke-direct {v0}, Lcom/chartboost/sdk/g;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/g;->a:Lcom/chartboost/sdk/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/chartboost/sdk/g;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/chartboost/sdk/g;->a:Lcom/chartboost/sdk/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/bb;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/chartboost/sdk/impl/bb;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/bb;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/r;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/chartboost/sdk/impl/r;

    invoke-direct {v0, p1, p2}, Lcom/chartboost/sdk/impl/r;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 49
    return-object p1
.end method

.method public b(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/j;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/chartboost/sdk/impl/j;

    invoke-direct {v0, p1, p2}, Lcom/chartboost/sdk/impl/j;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)V

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lcom/chartboost/sdk/impl/n;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/chartboost/sdk/impl/n;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/n;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/m;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/chartboost/sdk/impl/m;

    invoke-direct {v0, p1, p2}, Lcom/chartboost/sdk/impl/m;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)V

    return-object v0
.end method
