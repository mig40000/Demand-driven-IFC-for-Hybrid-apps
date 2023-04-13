.class public Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;
    }
.end annotation


# static fields
.field private static LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL; = null

.field private static final TAG:Ljava/lang/String; = "MRAID"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    sput-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->debug:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "MRAID"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->debug:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "MRAID"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getLoggingLevel()Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;
    .locals 1

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->info:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "MRAID"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->info:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setLoggingLevel(Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;)V
    .locals 3

    const-string v0, "MRAID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing logging level from :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". To:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->verbose:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "MRAID"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->verbose:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->warning:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "MRAID"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->LEVEL:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->warning:Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
