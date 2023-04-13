.class public Lcom/yandex/metrica/impl/ob/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/cf;

.field private final c:J

.field private final d:Z

.field private final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cf;J)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    .line 58
    iput-wide p3, p0, Lcom/yandex/metrica/impl/ob/cd;->c:J

    .line 59
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/cd;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Z

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/cd;->e:J

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Ljava/lang/String;

    .line 45
    const-string v0, "device_snapshot_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/cf;

    const-string v1, "device_snapshot_key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cf;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    .line 50
    :goto_0
    const-string v0, "last_elections_time"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/cd;->c:J

    .line 51
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/cd;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Z

    .line 52
    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/cd;->e:J

    .line 53
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    goto :goto_0
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/cd;->c:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/cd;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 99
    :cond_0
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "device_snapshot_key"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cf;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_0
    const-string v1, "last_elections_time"

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/cd;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    if-ne p0, p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 107
    :cond_3
    check-cast p1, Lcom/yandex/metrica/impl/ob/cd;

    .line 109
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Z

    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/cd;->d:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 110
    :cond_4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/cd;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 111
    :cond_5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cf;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/cd;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 75
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 76
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/cd;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 77
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x7b2

    if-ne v2, v3, :cond_0

    .line 79
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 77
    goto :goto_0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/cf;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 118
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cf;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 120
    return v0

    :cond_1
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Credentials{mFresh="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastElectionsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/cd;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/cf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
