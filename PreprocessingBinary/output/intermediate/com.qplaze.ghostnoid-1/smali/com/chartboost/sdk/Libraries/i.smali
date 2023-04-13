.class public Lcom/chartboost/sdk/Libraries/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/i$a;
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/am$b;

.field private b:Lcom/chartboost/sdk/Libraries/i$a;

.field private final c:Lcom/chartboost/sdk/f;

.field private d:Ljava/lang/String;

.field private e:F


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/f;)V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chartboost/sdk/Libraries/i;->e:F

    .line 165
    new-instance v0, Lcom/chartboost/sdk/Libraries/i$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/i$1;-><init>(Lcom/chartboost/sdk/Libraries/i;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/i;->a:Lcom/chartboost/sdk/impl/am$b;

    .line 178
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/i;->c:Lcom/chartboost/sdk/f;

    .line 179
    return-void
.end method


# virtual methods
.method a(Lcom/chartboost/sdk/Libraries/i$a;)V
    .locals 1

    .prologue
    .line 173
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/i;->b:Lcom/chartboost/sdk/Libraries/i$a;

    .line 174
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i;->c:Lcom/chartboost/sdk/f;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/f$b;)V

    .line 175
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/i;->c:Lcom/chartboost/sdk/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 194
    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 199
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 200
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/i;->d:Ljava/lang/String;

    .line 201
    if-nez v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v0, "url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    const-string v0, "scale"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/chartboost/sdk/Libraries/i;->e:F

    .line 207
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i;->c:Lcom/chartboost/sdk/f;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/f;->b(Lcom/chartboost/sdk/f$b;)V

    .line 215
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/i;->c:Lcom/chartboost/sdk/f;

    .line 216
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/chartboost/sdk/Libraries/i$2;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/Libraries/i$2;-><init>(Lcom/chartboost/sdk/Libraries/i;Lorg/json/JSONObject;Lcom/chartboost/sdk/f;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i;->b:Lcom/chartboost/sdk/Libraries/i$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i$a;->e()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/i;->b:Lcom/chartboost/sdk/Libraries/i$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i$a;->c()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i;->b:Lcom/chartboost/sdk/Libraries/i$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i$a;->f()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/i;->b:Lcom/chartboost/sdk/Libraries/i$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i$a;->c()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i;->b:Lcom/chartboost/sdk/Libraries/i$a;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i;->b:Lcom/chartboost/sdk/Libraries/i$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i$a;->d()V

    .line 237
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i;->b:Lcom/chartboost/sdk/Libraries/i$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i;->b:Lcom/chartboost/sdk/Libraries/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i;->b:Lcom/chartboost/sdk/Libraries/i$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/chartboost/sdk/Libraries/i;->e:F

    return v0
.end method

.method public h()I
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/i;->b()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/chartboost/sdk/Libraries/i;->e:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/i;->c()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/chartboost/sdk/Libraries/i;->e:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
