.class public final Lcom/chartboost/sdk/impl/an;
.super Lcom/chartboost/sdk/impl/aj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/an$1;,
        Lcom/chartboost/sdk/impl/an$a;
    }
.end annotation


# instance fields
.field private final c:Lorg/json/JSONObject;

.field private final d:Lorg/json/JSONObject;

.field private final e:Lorg/json/JSONObject;

.field private final f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 29
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v1

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->c:Lorg/json/JSONObject;

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->d:Lorg/json/JSONObject;

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    .line 35
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ak;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ak;->c:Lcom/chartboost/sdk/impl/ay;

    .line 41
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->d:Lorg/json/JSONObject;

    const-string v4, "app"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->n:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->d:Lorg/json/JSONObject;

    const-string v4, "bundle"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->e:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->d:Lorg/json/JSONObject;

    const-string v4, "bundle_id"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->d:Lorg/json/JSONObject;

    const-string v4, "custom_id"

    sget-object v5, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->d:Lorg/json/JSONObject;

    const-string v4, "session_id"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->d:Lorg/json/JSONObject;

    const-string v4, "ui"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->d:Lorg/json/JSONObject;

    const-string v4, "test_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v3, "app"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->d:Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const/4 v3, 0x5

    new-array v3, v3, [Lcom/chartboost/sdk/Libraries/d$a;

    const-string v4, "carrier_name"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->p:Lorg/json/JSONObject;

    const-string v6, "carrier-name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "mobile_country_code"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->p:Lorg/json/JSONObject;

    const-string v6, "mobile-country-code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string v5, "mobile_network_code"

    iget-object v6, v2, Lcom/chartboost/sdk/impl/ay;->p:Lorg/json/JSONObject;

    const-string v7, "mobile-network-code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "iso_country_code"

    iget-object v6, v2, Lcom/chartboost/sdk/impl/ay;->p:Lorg/json/JSONObject;

    const-string v7, "iso-country-code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "phone_type"

    iget-object v6, v2, Lcom/chartboost/sdk/impl/ay;->p:Lorg/json/JSONObject;

    const-string v7, "phone-type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/d;->a([Lcom/chartboost/sdk/Libraries/d$a;)Lorg/json/JSONObject;

    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v5, "carrier"

    invoke-static {v4, v5, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "model"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->a:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "device_type"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->o:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "os"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "country"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "language"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->d:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v5, "timestamp"

    invoke-static {v4, v5, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "reachability"

    iget-object v5, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ak;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/ak;->b:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/ai;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "scale"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->m:Ljava/lang/Float;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "is_portrait"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "rooted_device"

    iget-boolean v5, v2, Lcom/chartboost/sdk/impl/ay;->q:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "timezone"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->r:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "mobile_network"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->s:Ljava/lang/Integer;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "dw"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->j:Ljava/lang/Integer;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "dh"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->k:Ljava/lang/Integer;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "dpi"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->l:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "w"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->h:Ljava/lang/Integer;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "h"

    iget-object v5, v2, Lcom/chartboost/sdk/impl/ay;->i:Ljava/lang/Integer;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "device_family"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "retina"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ak;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ak;->a:Lcom/chartboost/sdk/Libraries/c;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/c;->b()Lcom/chartboost/sdk/Libraries/c$a;

    move-result-object v3

    .line 83
    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v5, "identity"

    iget-object v6, v3, Lcom/chartboost/sdk/Libraries/c$a;->b:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget v4, v3, Lcom/chartboost/sdk/Libraries/c$a;->a:I

    if-eq v4, v8, :cond_0

    .line 85
    iget v3, v3, Lcom/chartboost/sdk/Libraries/c$a;->a:I

    if-ne v3, v0, :cond_7

    .line 86
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    const-string v4, "limit_ad_tracking"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_0
    const-string v0, "device"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v3}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->c:Lorg/json/JSONObject;

    const-string v3, "framework"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->c:Lorg/json/JSONObject;

    const-string v3, "sdk"

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ay;->g:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->c:Lorg/json/JSONObject;

    const-string v2, "framework_version"

    sget-object v3, Lcom/chartboost/sdk/i;->f:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->c:Lorg/json/JSONObject;

    const-string v2, "wrapper_version"

    sget-object v3, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->c:Lorg/json/JSONObject;

    const-string v2, "mediation"

    sget-object v3, Lcom/chartboost/sdk/i;->h:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->c:Lorg/json/JSONObject;

    const-string v2, "commit_hash"

    const-string v3, "63dd0d940a3282a768c7fef5092e3beea28b6689"

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ak;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ak;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->a:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->c:Lorg/json/JSONObject;

    const-string v3, "config_variant"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_2
    const-string v0, "sdk"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->c:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->b:Lcom/chartboost/sdk/impl/ak;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ak;->e:Landroid/content/SharedPreferences;

    const-string v2, "cbPrefSessionCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 113
    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    const-string v3, "session"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    const-string v2, "amount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    const-string v2, "amount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    const-string v2, "retry_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    const-string v2, "retry_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    const-string v1, "location"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_6
    const-string v0, "ad"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void

    :cond_7
    move v0, v1

    .line 85
    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/chartboost/sdk/impl/an$a;)V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/chartboost/sdk/impl/an$1;->a:[I

    invoke-virtual {p3}, Lcom/chartboost/sdk/impl/an$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v0, "ad"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->f:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/an;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
