.class Lcom/chartboost/sdk/impl/z$a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/z$a$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/chartboost/sdk/impl/s;

.field final synthetic c:Lcom/chartboost/sdk/impl/z$a$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/z$a$a;Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/s;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->c:Lcom/chartboost/sdk/impl/z$a$a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->b:Lcom/chartboost/sdk/impl/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->a:Lorg/json/JSONObject;

    const-string v1, "deep-link"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->a:Lorg/json/JSONObject;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 300
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->a:Lorg/json/JSONObject;

    const-string v2, "x"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->c:Lcom/chartboost/sdk/impl/z$a$a;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/z$a$a;->a:Lcom/chartboost/sdk/impl/z$a;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/z$a;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->a:Lorg/json/JSONObject;

    const-string v2, "y"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->c:Lcom/chartboost/sdk/impl/z$a$a;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/z$a$a;->a:Lcom/chartboost/sdk/impl/z$a;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/z$a;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->a:Lorg/json/JSONObject;

    const-string v2, "width"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->b:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/s;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->a:Lorg/json/JSONObject;

    const-string v2, "height"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->b:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/s;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->c:Lcom/chartboost/sdk/impl/z$a$a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/z$a$a;->a:Lcom/chartboost/sdk/impl/z$a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/z$a$a$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/z;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 306
    return-void
.end method
