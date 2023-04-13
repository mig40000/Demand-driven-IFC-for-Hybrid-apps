.class Lcom/chartboost/sdk/impl/am$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/am$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Libraries/i$a;

.field final synthetic b:Lcom/chartboost/sdk/impl/am$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/am$a;Lcom/chartboost/sdk/Libraries/i$a;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/chartboost/sdk/impl/am$a$3;->b:Lcom/chartboost/sdk/impl/am$a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/am$a$3;->a:Lcom/chartboost/sdk/Libraries/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am$a$3;->b:Lcom/chartboost/sdk/impl/am$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/am$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-static {v0}, Lcom/chartboost/sdk/impl/am;->a(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/am$a;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am$a$3;->a:Lcom/chartboost/sdk/Libraries/i$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/am$a$3;->b:Lcom/chartboost/sdk/impl/am$a;

    if-ne v2, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/chartboost/sdk/impl/am$a$3;->a:Lcom/chartboost/sdk/Libraries/i$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i$a;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am$a$3;->b:Lcom/chartboost/sdk/impl/am$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/am$a;->d:Lcom/chartboost/sdk/impl/am$b;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am$a$3;->b:Lcom/chartboost/sdk/impl/am$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/am$a;->d:Lcom/chartboost/sdk/impl/am$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am$a$3;->a:Lcom/chartboost/sdk/Libraries/i$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/am$a$3;->b:Lcom/chartboost/sdk/impl/am$a;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/am$a;->f:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/impl/am$b;->a(Lcom/chartboost/sdk/Libraries/i$a;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-class v1, Lcom/chartboost/sdk/impl/am$a;

    const-string v2, "finishOnUiThread Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
