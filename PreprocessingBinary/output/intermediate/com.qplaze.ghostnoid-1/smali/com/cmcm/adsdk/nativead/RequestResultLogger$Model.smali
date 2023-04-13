.class public Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;
.super Ljava/lang/Object;
.source "RequestResultLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/nativead/RequestResultLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Model"
.end annotation


# static fields
.field public static final KEY_ADTYPE:Ljava/lang/String; = "Adtype"

.field public static final KEY_ERRORINFO:Ljava/lang/String; = "ErrorInfo"

.field public static final KEY_IS_SUCCESS:Ljava/lang/String; = "IsSuccess"

.field public static final KEY_loadtime:Ljava/lang/String; = "time"


# instance fields
.field private mFailReason:Ljava/lang/String;

.field mFinished:Z

.field private mIsSuccess:Z

.field mRequestBegin:J

.field mRequestEnd:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mFinished:Z

    .line 30
    iput-wide v2, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mRequestBegin:J

    .line 31
    iput-wide v2, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mRequestEnd:J

    .line 34
    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mFinished:Z

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mRequestBegin:J

    .line 36
    return-void
.end method


# virtual methods
.method public getFailReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mFailReason:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mIsSuccess:Z

    return v0
.end method

.method public update(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .param p2, "failReason"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mIsSuccess:Z

    .line 40
    iput-object p2, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mFailReason:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mFinished:Z

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/adsdk/nativead/RequestResultLogger$Model;->mRequestEnd:J

    .line 43
    return-void
.end method
