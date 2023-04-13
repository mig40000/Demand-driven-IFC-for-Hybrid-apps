.class public final Lcom/chartboost/sdk/InPlay/CBInPlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/chartboost/sdk/InPlay/a;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/InPlay/a;)V
    .locals 0
    .param p1, "manager"    # Lcom/chartboost/sdk/InPlay/a;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Lcom/chartboost/sdk/InPlay/a;

    .line 40
    return-void
.end method

.method public static cacheInPlay(Ljava/lang/String;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v1, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/InPlay/a;

    .line 92
    iget-object v0, v1, Lcom/chartboost/sdk/InPlay/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 93
    iget-boolean v2, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/chartboost/sdk/Model/c;->v:Z

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v2, :cond_0

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->f:Z

    if-eqz v0, :cond_0

    .line 94
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    const-string v0, "CBInPlay"

    const-string v1, "Inplay location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/InPlay/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInPlay(Ljava/lang/String;)Lcom/chartboost/sdk/InPlay/CBInPlay;
    .locals 4
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 141
    :goto_0
    return-object v0

    .line 130
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v2, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/InPlay/a;

    .line 131
    iget-object v0, v2, Lcom/chartboost/sdk/InPlay/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    .line 132
    iget-boolean v3, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/chartboost/sdk/Model/c;->v:Z

    if-nez v3, :cond_2

    :cond_1
    iget-boolean v3, v0, Lcom/chartboost/sdk/Model/c;->e:Z

    if-eqz v3, :cond_5

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->f:Z

    if-eqz v0, :cond_5

    .line 133
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    const-string v0, "CBInPlay"

    const-string v2, "Inplay location cannot be empty"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_3

    .line 136
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v2}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :cond_3
    move-object v0, v1

    .line 137
    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {v2, p0}, Lcom/chartboost/sdk/InPlay/a;->c(Ljava/lang/String;)Lcom/chartboost/sdk/InPlay/CBInPlay;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 141
    goto :goto_0
.end method

.method public static hasInPlay(Ljava/lang/String;)Z
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const-string v1, "CBInPlay"

    const-string v2, "Inplay location cannot be empty"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v1, p0, v2}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/InPlay/a;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lorg/json/JSONObject;

    .line 80
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public click()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Lcom/chartboost/sdk/InPlay/a;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->b(Lcom/chartboost/sdk/InPlay/CBInPlay;)V

    .line 48
    return-void
.end method

.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->b:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Lcom/chartboost/sdk/InPlay/a;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->a(Lcom/chartboost/sdk/InPlay/CBInPlay;)V

    .line 44
    return-void
.end method
