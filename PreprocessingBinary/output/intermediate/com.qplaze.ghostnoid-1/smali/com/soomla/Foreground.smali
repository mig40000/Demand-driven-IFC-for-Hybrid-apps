.class public abstract Lcom/soomla/Foreground;
.super Ljava/lang/Object;
.source "Foreground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soomla/Foreground$1;,
        Lcom/soomla/Foreground$ForegroundNew;,
        Lcom/soomla/Foreground$ForegroundOld;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static instance:Lcom/soomla/Foreground;


# instance fields
.field public OutsideOperation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOOMLA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/soomla/Foreground;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/soomla/Foreground;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/soomla/Foreground;->OutsideOperation:Z

    .line 78
    return-void
.end method

.method public static init()Lcom/soomla/Foreground;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/soomla/Foreground;->instance:Lcom/soomla/Foreground;

    if-nez v0, :cond_0

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 42
    new-instance v0, Lcom/soomla/Foreground$ForegroundNew;

    invoke-direct {v0}, Lcom/soomla/Foreground$ForegroundNew;-><init>()V

    sput-object v0, Lcom/soomla/Foreground;->instance:Lcom/soomla/Foreground;

    .line 47
    :cond_0
    :goto_0
    sget-object v0, Lcom/soomla/Foreground;->instance:Lcom/soomla/Foreground;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/soomla/Foreground$ForegroundOld;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/soomla/Foreground$ForegroundOld;-><init>(Lcom/soomla/Foreground$1;)V

    sput-object v0, Lcom/soomla/Foreground;->instance:Lcom/soomla/Foreground;

    goto :goto_0
.end method


# virtual methods
.method public abstract isBackground()Z
.end method

.method public abstract isForeground()Z
.end method
