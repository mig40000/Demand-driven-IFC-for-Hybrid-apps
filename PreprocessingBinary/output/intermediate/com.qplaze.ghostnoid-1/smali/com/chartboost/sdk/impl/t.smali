.class public Lcom/chartboost/sdk/impl/t;
.super Lcom/chartboost/sdk/impl/s;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/z;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 22
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/s;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/z;

    .line 24
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Landroid/widget/ImageView;

    .line 25
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0x6e

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 6

    .prologue
    .line 31
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v0

    .line 33
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "assets"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "portrait"

    :goto_0
    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string v0, "index"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v0, "checksum"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->k:Lcom/chartboost/sdk/impl/am;

    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/chartboost/sdk/impl/t;->b:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/am$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    .line 41
    :cond_0
    return-void

    .line 33
    :cond_1
    const-string v0, "landscape"

    goto :goto_0
.end method
