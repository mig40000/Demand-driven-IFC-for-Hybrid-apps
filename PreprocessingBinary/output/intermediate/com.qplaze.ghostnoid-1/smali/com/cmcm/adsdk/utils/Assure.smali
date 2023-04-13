.class public Lcom/cmcm/adsdk/utils/Assure;
.super Ljava/lang/Object;
.source "Assure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/utils/Assure$AssureException;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_STACK:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static DCHECK(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 140
    :cond_0
    return-void
.end method

.method public static NOTREACHED()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "NOTREACHED"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static NOT_IMPLEMENTED()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "NOT_IMPLEMENTED"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static checkEqual(II)V
    .locals 1
    .param p0, "expect"    # I
    .param p1, "real"    # I

    .prologue
    .line 100
    if-eq p0, p1, :cond_0

    .line 101
    const-string v0, "AssureEqual"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public static checkEqual(JJ)V
    .locals 2
    .param p0, "expect"    # J
    .param p2, "real"    # J

    .prologue
    .line 105
    cmp-long v0, p0, p2

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "AssureEqual"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public static checkEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expect"    # Ljava/lang/Object;
    .param p1, "real"    # Ljava/lang/Object;

    .prologue
    .line 95
    if-eq p0, p1, :cond_0

    .line 96
    const-string v0, "AssureEqual"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static checkEqualNoCase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expect"    # Ljava/lang/String;
    .param p1, "real"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    .line 114
    :cond_2
    const-string v0, "AssureEqual"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 116
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "AssureEqual"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkFalse(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 66
    const-string v0, "AssureFalse"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static checkNotEmptyArray([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "collection":[Ljava/lang/Object;, "[TE;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 132
    :cond_0
    const-string v0, "checkNotEmptyArray"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 133
    :cond_1
    return-void
.end method

.method public static checkNotEmptyCollection(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    const-string v0, "AssureNotEmptyCollection"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 128
    :cond_1
    return-void
.end method

.method public static checkNotEmptyString(Ljava/lang/String;)V
    .locals 1
    .param p0, "webUrl"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "AssureNotEmptyString"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public static checkNotEqual(II)V
    .locals 1
    .param p0, "expectNot"    # I
    .param p1, "real"    # I

    .prologue
    .line 80
    if-ne p0, p1, :cond_0

    .line 81
    const-string v0, "AssureNotEqual"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static checkNotEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expectNot"    # Ljava/lang/Object;
    .param p1, "real"    # Ljava/lang/Object;

    .prologue
    .line 85
    if-ne p0, p1, :cond_0

    .line 86
    const-string v0, "AssureNotEqual"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 88
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "AssureNotEqual"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const-string v0, "AssureNotNull"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public static checkNotOnUIThread()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->DCHECK(Z)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 70
    if-eqz p0, :cond_0

    .line 71
    const-string v0, "AssureNull"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public static checkRunningOnUIThread()V
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/cmcm/utils/ThreadHelper;->runningOnUiThread()Z

    move-result v0

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->DCHECK(Z)V

    .line 144
    return-void
.end method

.method public static checkTrue(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const-string v0, "AssureTrue"

    invoke-static {v0}, Lcom/cmcm/adsdk/utils/Assure;->throwMessage(Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method private static getCurrentStackMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, ""

    return-object v0
.end method

.method public static throwMessage(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "ASSURE fail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmcm/adsdk/utils/Assure;->getCurrentStackMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method
