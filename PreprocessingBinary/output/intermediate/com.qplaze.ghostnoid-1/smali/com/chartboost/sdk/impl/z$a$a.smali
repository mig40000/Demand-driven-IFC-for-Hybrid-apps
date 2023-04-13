.class public Lcom/chartboost/sdk/impl/z$a$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/z$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/z$a;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/z$a;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 243
    iput-object p1, p0, Lcom/chartboost/sdk/impl/z$a$a;->a:Lcom/chartboost/sdk/impl/z$a;

    .line 244
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/z;->k:Ljava/util/List;

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 245
    iput-object p2, p0, Lcom/chartboost/sdk/impl/z$a$a;->b:Landroid/content/Context;

    .line 246
    return-void
.end method


# virtual methods
.method public a(I)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a$a;->a:Lcom/chartboost/sdk/impl/z$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a$a;->a:Lcom/chartboost/sdk/impl/z$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 315
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/z$a$a;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/z$a$a;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 326
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {}, Lcom/chartboost/sdk/impl/z$b;->values()[Lcom/chartboost/sdk/impl/z$b;

    move-result-object v3

    move v0, v1

    .line 329
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 330
    aget-object v4, v3, v0

    iget-object v4, v4, Lcom/chartboost/sdk/impl/z$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    :goto_1
    return v0

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 333
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/z$a$a;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 251
    const-string v1, "type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    const/4 v1, 0x0

    .line 254
    if-nez p2, :cond_2

    .line 255
    invoke-static {}, Lcom/chartboost/sdk/impl/z$b;->values()[Lcom/chartboost/sdk/impl/z$b;

    move-result-object v4

    .line 256
    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_5

    aget-object v6, v4, v0

    .line 257
    iget-object v7, v6, Lcom/chartboost/sdk/impl/z$b;->e:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 259
    :try_start_0
    iget-object v0, v6, Lcom/chartboost/sdk/impl/z$b;->f:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/chartboost/sdk/impl/z;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 261
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/z$a$a;->a:Lcom/chartboost/sdk/impl/z$a;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/chartboost/sdk/impl/z$a$a;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object p2, v0

    .line 275
    .end local p2    # "convertView":Landroid/view/View;
    :goto_2
    if-nez p2, :cond_3

    .line 276
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z$a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 309
    :cond_0
    :goto_3
    return-object p2

    .line 262
    .restart local p2    # "convertView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 263
    const-string v3, "error in more apps list"

    invoke-static {p0, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getView cell constructor"

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 266
    goto :goto_1

    .line 256
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_2
    instance-of v0, p2, Lcom/chartboost/sdk/impl/s;

    if-eqz v0, :cond_0

    .line 272
    check-cast p2, Lcom/chartboost/sdk/impl/s;

    goto :goto_2

    .line 278
    .end local p2    # "convertView":Landroid/view/View;
    :cond_3
    invoke-virtual {p2, v2, p1}, Lcom/chartboost/sdk/impl/s;->a(Lorg/json/JSONObject;I)V

    .line 281
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/s;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v1, :cond_4

    .line 283
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 284
    iput v8, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 285
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/s;->a()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 290
    :goto_4
    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/s;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v0, Lcom/chartboost/sdk/impl/z$a$a$1;

    invoke-direct {v0, p0, v2, p2}, Lcom/chartboost/sdk/impl/z$a$a$1;-><init>(Lcom/chartboost/sdk/impl/z$a$a;Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/s;)V

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/s;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 287
    :cond_4
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/s;->a()I

    move-result v1

    invoke-direct {v0, v8, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    goto :goto_4

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/chartboost/sdk/impl/z$b;->values()[Lcom/chartboost/sdk/impl/z$b;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
