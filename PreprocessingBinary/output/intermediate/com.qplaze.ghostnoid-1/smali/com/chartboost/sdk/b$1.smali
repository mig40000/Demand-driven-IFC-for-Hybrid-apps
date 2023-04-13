.class final Lcom/chartboost/sdk/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/aj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/b$a;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/h;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic c:Landroid/content/SharedPreferences;

.field final synthetic d:Lcom/chartboost/sdk/b$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/b$a;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/h;

    iput-object p2, p0, Lcom/chartboost/sdk/b$1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/chartboost/sdk/b$1;->c:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/chartboost/sdk/b$1;->d:Lcom/chartboost/sdk/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/h;

    iput-boolean v2, v0, Lcom/chartboost/sdk/h;->j:Z

    .line 92
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "response"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/chartboost/sdk/b$1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/chartboost/sdk/b$1;->c:Landroid/content/SharedPreferences;

    invoke-static {v1, v0, v2}, Lcom/chartboost/sdk/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/chartboost/sdk/b$1;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->d:Lcom/chartboost/sdk/b$a;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->d:Lcom/chartboost/sdk/b$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/b$a;->a()V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/h;

    iget-boolean v0, v0, Lcom/chartboost/sdk/h;->k:Z

    if-nez v0, :cond_3

    .line 104
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 105
    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/h;

    iput-boolean v3, v0, Lcom/chartboost/sdk/h;->k:Z

    .line 109
    :cond_3
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/h;->j:Z

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->d:Lcom/chartboost/sdk/b$a;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->d:Lcom/chartboost/sdk/b$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/b$a;->a()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/h;

    iget-boolean v0, v0, Lcom/chartboost/sdk/h;->k:Z

    if-nez v0, :cond_2

    .line 117
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 118
    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/h;->k:Z

    .line 122
    :cond_2
    return-void
.end method
