.class public Lcom/cmcm/picks/loader/MpaModule;
.super Ljava/lang/Object;
.source "MpaModule.java"


# instance fields
.field private mpa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/Mpa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/picks/loader/MpaModule;->mpa:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMpa()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/Mpa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cmcm/picks/loader/MpaModule;->mpa:Ljava/util/List;

    return-object v0
.end method

.method public setMpa(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/Mpa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "mpa":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/picks/loader/Mpa;>;"
    iput-object p1, p0, Lcom/cmcm/picks/loader/MpaModule;->mpa:Ljava/util/List;

    .line 14
    return-void
.end method
