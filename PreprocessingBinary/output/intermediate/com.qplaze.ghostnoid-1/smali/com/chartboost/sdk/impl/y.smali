.class public Lcom/chartboost/sdk/impl/y;
.super Lcom/chartboost/sdk/d;
.source "SourceFile"


# instance fields
.field protected o:I

.field private p:Lcom/chartboost/sdk/Model/a;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/impl/am;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/b;",
            "Lcom/chartboost/sdk/impl/d;",
            "Lcom/chartboost/sdk/c;",
            "Lcom/chartboost/sdk/impl/af;",
            "Lcom/chartboost/sdk/impl/ai;",
            "Lcom/chartboost/sdk/impl/ak;",
            "Lcom/chartboost/sdk/h;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/chartboost/sdk/Tracking/a;",
            "Lcom/chartboost/sdk/e;",
            "Lcom/chartboost/sdk/impl/am;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct/range {p0 .. p12}, Lcom/chartboost/sdk/d;-><init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/impl/am;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/y;->p:Lcom/chartboost/sdk/Model/a;

    .line 73
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
    .locals 7

    .prologue
    .line 118
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    sget-object v2, Lcom/chartboost/sdk/Model/a$a;->b:Lcom/chartboost/sdk/Model/a$a;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/y;->e()Lcom/chartboost/sdk/Model/a$b;

    move-result-object v6

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/Model/a;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a$a;ZLjava/lang/String;ZLcom/chartboost/sdk/Model/a$b;)V

    return-object v0
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/y;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/y;->r:Z

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/y;->r:Z

    .line 97
    if-eqz p2, :cond_0

    .line 98
    const-string v0, "cells"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/y;->o:I

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)V

    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/y;->o:I

    .line 89
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/y;->f()V

    .line 90
    invoke-super {p0, p1}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected b()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/chartboost/sdk/impl/y$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/y$1;-><init>(Lcom/chartboost/sdk/impl/y;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string v0, "more-apps"

    return-object v0
.end method

.method protected e(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/chartboost/sdk/impl/y;->p:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method protected e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/aj;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/more/get"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/y;->e:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 124
    sget-object v1, Lcom/chartboost/sdk/impl/ac$b;->c:Lcom/chartboost/sdk/impl/ac$b;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/ac$b;)V

    .line 125
    sget-object v1, Lcom/chartboost/sdk/Model/b;->d:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/Libraries/f$a;)V

    .line 126
    return-object v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/y;->p:Lcom/chartboost/sdk/Model/a;

    .line 154
    return-void
.end method

.method protected l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/aj;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/more/show"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/y;->e:Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 132
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "location"

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lorg/json/JSONObject;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_1

    const-string v2, "cells"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    const-string v2, "cells"

    const-string v3, "cells"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    :cond_1
    return-object v0
.end method

.method protected p(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/chartboost/sdk/impl/y;->p:Lcom/chartboost/sdk/Model/a;

    .line 159
    return-void
.end method
