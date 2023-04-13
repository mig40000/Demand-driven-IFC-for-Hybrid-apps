.class public Lcom/cmcm/adsdk/config/PosBean;
.super Ljava/lang/Object;
.source "PosBean.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cmcm/adsdk/config/PosBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "posinfo"

.field private static final TAG:Ljava/lang/String; = "PosBean"


# instance fields
.field public adtype:I

.field public name:Ljava/lang/String;

.field public parameter:Ljava/lang/String;

.field public placeid:Ljava/lang/String;

.field public weight:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "placeid"    # Ljava/lang/String;
    .param p3, "weight"    # Ljava/lang/Integer;
    .param p4, "adType"    # I
    .param p5, "parameter"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p4, p0, Lcom/cmcm/adsdk/config/PosBean;->adtype:I

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/cmcm/adsdk/config/PosBean;->placeid:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/cmcm/adsdk/config/PosBean;->weight:Ljava/lang/Integer;

    .line 64
    iput-object p5, p0, Lcom/cmcm/adsdk/config/PosBean;->parameter:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cmcm/adsdk/config/PosBean;)I
    .locals 2
    .param p1, "bean"    # Lcom/cmcm/adsdk/config/PosBean;

    .prologue
    .line 125
    iget-object v0, p1, Lcom/cmcm/adsdk/config/PosBean;->weight:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/cmcm/adsdk/config/PosBean;->weight:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Lcom/cmcm/adsdk/config/PosBean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cmcm/adsdk/config/PosBean;->compareTo(Lcom/cmcm/adsdk/config/PosBean;)I

    move-result v0

    return v0
.end method

.method public getAdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/cmcm/adsdk/config/PosBean;->adtype:I

    return v0
.end method

.method public isCMAd()Z
    .locals 2

    .prologue
    .line 36
    const-string v0, "cm"

    iget-object v1, p0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFBAd()Z
    .locals 2

    .prologue
    .line 32
    const-string v0, "fb"

    iget-object v1, p0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidInfo()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmcm/adsdk/config/PosBean;->weight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
