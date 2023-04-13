.class public Lcom/cmcm/picks/init/PicksMob;
.super Lcom/cmcm/picks/init/a;
.source "PicksMob.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cmcm/picks/init/a;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadSuccessReport(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;)V
    .locals 0
    .param p1, "posid"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p3, "rf"    # Ljava/lang/String;

    .prologue
    .line 8
    return-void
.end method

.method public ishaveInternalDown()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public reportDowned(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 12
    return-void
.end method

.method public reportInstall(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method
