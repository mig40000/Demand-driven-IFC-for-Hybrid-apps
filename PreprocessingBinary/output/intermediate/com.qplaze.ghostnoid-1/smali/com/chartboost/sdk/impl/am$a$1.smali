.class Lcom/chartboost/sdk/impl/am$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/am$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/am$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/am$a;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/chartboost/sdk/impl/am$a$1;->a:Lcom/chartboost/sdk/impl/am$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ad;)V
    .locals 3

    .prologue
    .line 139
    const-string v0, "CBWebImageCache"

    const-string v1, "Error downloading the bitmap image from the server"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ad;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "CBWebImageCache"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ad;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "CBWebImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error status Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ad;->a:Lcom/chartboost/sdk/impl/ah;

    invoke-interface {v2}, Lcom/chartboost/sdk/impl/ah;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    :cond_1
    return-void
.end method
