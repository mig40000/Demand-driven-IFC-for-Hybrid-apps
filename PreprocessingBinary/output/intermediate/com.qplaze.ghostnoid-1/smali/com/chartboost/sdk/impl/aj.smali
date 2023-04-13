.class public Lcom/chartboost/sdk/impl/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/aj$a;
    }
.end annotation


# instance fields
.field protected final a:Lorg/json/JSONObject;

.field protected final b:Lcom/chartboost/sdk/impl/ak;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/chartboost/sdk/impl/aj$a;

.field private g:Lcom/chartboost/sdk/Libraries/f$a;

.field private h:Lcom/chartboost/sdk/impl/ac$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->f:Lcom/chartboost/sdk/impl/aj$a;

    .line 33
    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->g:Lcom/chartboost/sdk/Libraries/f$a;

    .line 37
    sget-object v0, Lcom/chartboost/sdk/impl/ac$b;->b:Lcom/chartboost/sdk/impl/ac$b;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->h:Lcom/chartboost/sdk/impl/ac$b;

    .line 42
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->a:Lorg/json/JSONObject;

    .line 43
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aj;->c:Ljava/lang/String;

    .line 44
    const-string v0, "POST"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->e:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/chartboost/sdk/impl/aj;->b:Lcom/chartboost/sdk/impl/ak;

    .line 46
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/chartboost/sdk/impl/aj;->b:Lcom/chartboost/sdk/impl/ak;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ak;->c:Lcom/chartboost/sdk/impl/ay;

    .line 62
    const-string v3, "app"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->n:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v3, "model"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->a:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string v3, "device_type"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->o:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string v3, "os"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->b:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    const-string v3, "country"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->c:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string v3, "language"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->d:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v3, "sdk"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->g:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 71
    const-string v4, "timestamp"

    invoke-virtual {p0, v4, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->b:Lcom/chartboost/sdk/impl/ak;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ak;->e:Landroid/content/SharedPreferences;

    const-string v4, "cbPrefSessionCount"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 73
    const-string v4, "session"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v3, "reachability"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/aj;->b:Lcom/chartboost/sdk/impl/ak;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ak;->b:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/ai;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v3, "scale"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->m:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v3, "is_portrait"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    const-string v3, "bundle"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->e:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    const-string v3, "bundle_id"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->f:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string v3, "carrier"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->p:Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v3, "custom_id"

    sget-object v4, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v3, "mediation"

    sget-object v4, Lcom/chartboost/sdk/i;->h:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    sget-object v3, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "framework_version"

    sget-object v4, Lcom/chartboost/sdk/i;->f:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v3, "wrapper_version"

    sget-object v4, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_0
    const-string v3, "rooted_device"

    iget-boolean v4, v2, Lcom/chartboost/sdk/impl/ay;->q:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v3, "timezone"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->r:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v3, "mobile_network"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->s:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v3, "dw"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->j:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v3, "dh"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->k:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v3, "dpi"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->l:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string v3, "w"

    iget-object v4, v2, Lcom/chartboost/sdk/impl/ay;->h:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v3, "h"

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ay;->i:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v2, "commit_hash"

    const-string v3, "63dd0d940a3282a768c7fef5092e3beea28b6689"

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/chartboost/sdk/impl/aj;->b:Lcom/chartboost/sdk/impl/ak;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ak;->a:Lcom/chartboost/sdk/Libraries/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/c;->b()Lcom/chartboost/sdk/Libraries/c$a;

    move-result-object v2

    .line 97
    const-string v3, "identity"

    iget-object v4, v2, Lcom/chartboost/sdk/Libraries/c$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    iget v3, v2, Lcom/chartboost/sdk/Libraries/c$a;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 99
    iget v2, v2, Lcom/chartboost/sdk/Libraries/c$a;->a:I

    if-ne v2, v0, :cond_3

    .line 100
    :goto_0
    const-string v1, "limit_ad_tracking"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->b:Lcom/chartboost/sdk/impl/ak;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ak;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->a:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    const-string v1, "config_variant"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/f$a;)V
    .locals 2

    .prologue
    .line 152
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/f;->c(Lcom/chartboost/sdk/Libraries/f$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "CBRequest"

    const-string v1, "Validation predicate must be a dictionary style -- either VDictionary, VDictionaryExact, VDictionaryWithValues, or just a list of KV pairs."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aj;->g:Lcom/chartboost/sdk/Libraries/f$a;

    .line 156
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/ac$b;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aj;->h:Lcom/chartboost/sdk/impl/ac$b;

    .line 172
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/aj$a;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aj;->f:Lcom/chartboost/sdk/impl/aj$a;

    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->b:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v0, p0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/impl/aj$a;)V

    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aj;->c:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 53
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public varargs a([Lcom/chartboost/sdk/Libraries/f$k;)V
    .locals 1

    .prologue
    .line 159
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/f;->a([Lcom/chartboost/sdk/Libraries/f$k;)Lcom/chartboost/sdk/Libraries/f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->g:Lcom/chartboost/sdk/Libraries/f$a;

    .line 160
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aj;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aj;->d:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "/"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->c:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/aj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "/"

    goto :goto_1
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aj;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/api/track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public g()Lcom/chartboost/sdk/Libraries/f$a;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->g:Lcom/chartboost/sdk/Libraries/f$a;

    return-object v0
.end method

.method public h()Lcom/chartboost/sdk/impl/ac$b;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->h:Lcom/chartboost/sdk/impl/ac$b;

    return-object v0
.end method

.method public i()Lcom/chartboost/sdk/impl/aj$a;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->f:Lcom/chartboost/sdk/impl/aj$a;

    return-object v0
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lcom/chartboost/sdk/impl/aj;->f:Lcom/chartboost/sdk/impl/aj$a;

    .line 192
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->b:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v0, p0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/impl/aj$a;)V

    .line 193
    return-void
.end method
