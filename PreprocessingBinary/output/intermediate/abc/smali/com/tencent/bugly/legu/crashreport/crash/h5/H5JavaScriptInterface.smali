.class public Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Thread;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->b:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->c:Ljava/lang/Thread;

    .line 30
    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->d:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->e:Ljava/util/Map;

    .line 33
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/tencent/bugly/legu/crashreport/crash/h5/a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 72
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;-><init>()V

    .line 79
    const-string v3, "projectRoot"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->a:Ljava/lang/String;

    .line 80
    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "context"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->b:Ljava/lang/String;

    .line 84
    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 87
    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->c:Ljava/lang/String;

    .line 88
    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 91
    const-string v3, "userAgent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->d:Ljava/lang/String;

    .line 92
    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->d:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 95
    const-string v3, "language"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->e:Ljava/lang/String;

    .line 96
    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 99
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->f:Ljava/lang/String;

    .line 100
    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->f:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->f:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    const-string v3, "stacktrace"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    if-eqz v3, :cond_0

    .line 107
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 108
    if-gez v4, :cond_2

    .line 109
    const-string v1, "H5 crash stack\'s format is wrong!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 112
    :cond_2
    add-int/lit8 v5, v4, 0x1

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->h:Ljava/lang/String;

    .line 113
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->g:Ljava/lang/String;

    .line 114
    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->g:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 115
    if-lez v3, :cond_3

    .line 116
    iget-object v4, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->g:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->g:Ljava/lang/String;

    .line 118
    :cond_3
    const-string v3, "file"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->i:Ljava/lang/String;

    .line 119
    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->f:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 122
    const-string v3, "lineNumber"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->j:J

    .line 123
    iget-wide v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->j:J

    cmp-long v3, v3, v6

    if-ltz v3, :cond_0

    .line 126
    const-string v3, "columnNumber"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->k:J

    .line 127
    iget-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->k:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 130
    const-string v2, "H5 crash information is following: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[projectRoot]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[context]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[url]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[userAgent]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[language]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[name]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[message]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[stacktrace]: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[file]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[lineNumber]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[columnNumber]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->k:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 142
    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/webkit/WebView;)Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 37
    if-eqz p0, :cond_0

    sget-object v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :cond_1
    new-instance v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;-><init>()V

    .line 41
    sget-object v2, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->c:Ljava/lang/Thread;

    .line 43
    iget-object v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->c:Ljava/lang/Thread;

    if-nez v2, :cond_2

    :goto_1
    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->d:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "[WebView] ContentDescription"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->e:Ljava/util/Map;

    move-object v0, v1

    .line 45
    goto :goto_0

    .line 43
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "crashreport"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public printLog(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 168
    const-string v0, "Log from js: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public reportJSException(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 178
    if-nez p1, :cond_1

    .line 179
    const-string v0, "Payload from JS is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/a;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    const-string v0, "Same payload from js. Please check whether you\'ve injected bugly.js more than one times."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_2
    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->b:Ljava/lang/String;

    .line 188
    const-string v0, "Handling JS exception ..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 189
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->a(Ljava/lang/String;)Lcom/tencent/bugly/legu/crashreport/crash/h5/a;

    move-result-object v0

    .line 190
    if-nez v0, :cond_3

    .line 191
    const-string v0, "Failed to parse payload."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 195
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v3, "[JS] projectRoot"

    iget-object v4, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v3, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->b:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v3, "[JS] context"

    iget-object v4, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v3, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->c:Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v3, "[JS] url"

    iget-object v4, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v3, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->d:Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v3, "[JS] userAgent"

    iget-object v4, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v3, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->i:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v3, "[JS] file"

    iget-object v4, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-wide v3, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->j:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    const-string v3, "[JS] lineNumber"

    iget-wide v4, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 196
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    const-string v2, "Java Stack"

    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/crash/h5/a;->h:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/tencent/bugly/legu/crashreport/inner/InnerAPI;->postH5CrashAsync(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method