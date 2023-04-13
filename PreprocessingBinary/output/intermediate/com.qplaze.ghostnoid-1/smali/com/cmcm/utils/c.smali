.class public Lcom/cmcm/utils/c;
.super Landroid/os/AsyncTask;
.source "BuinessDataReporter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/cmcm/picks/loader/e;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    sget v0, Lcom/cmcm/adsdk/CMAdManager;->mAdResource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 53
    invoke-static {}, Lcom/cmcm/picks/loader/g;->c()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-string v0, "https://ssdk.adkmob.com/rp/"

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "http://unrcv.adkmob.com/rp/"

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/cmcm/utils/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmcm/utils/c$1;

    invoke-direct {v2, p0}, Lcom/cmcm/utils/c$1;-><init>(Lcom/cmcm/utils/c;)V

    invoke-static {v0, v1, v2}, Lcom/cmcm/utils/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/utils/f$a;)V

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cmcm/utils/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/utils/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 101
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v0, "&attach=["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/4 v0, 0x1

    .line 104
    iget-object v1, p0, Lcom/cmcm/utils/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/loader/d;

    .line 105
    if-eqz v1, :cond_2

    .line 106
    const/4 v1, 0x0

    .line 110
    :goto_2
    invoke-virtual {v0}, Lcom/cmcm/picks/loader/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 108
    :cond_2
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 112
    :cond_3
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/cmcm/utils/c;->a:Lcom/cmcm/picks/loader/e;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-object v2

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/cmcm/utils/c;->a:Lcom/cmcm/picks/loader/e;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-direct {p0}, Lcom/cmcm/utils/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/cmcm/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/cmcm/picks/loader/d;Lcom/cmcm/picks/loader/e;)V
    .locals 1

    .prologue
    .line 35
    iput-object p2, p0, Lcom/cmcm/utils/c;->a:Lcom/cmcm/picks/loader/e;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/utils/c;->b:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/cmcm/utils/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cmcm/utils/c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
