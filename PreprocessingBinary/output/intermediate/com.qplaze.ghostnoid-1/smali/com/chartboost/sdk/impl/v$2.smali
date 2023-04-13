.class Lcom/chartboost/sdk/impl/v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/v;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bc;

.field final synthetic b:Lcom/chartboost/sdk/impl/bb;

.field final synthetic c:Lcom/chartboost/sdk/impl/v;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v;Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/bb;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$2;->c:Lcom/chartboost/sdk/impl/v;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/v$2;->a:Lcom/chartboost/sdk/impl/bc;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/v$2;->b:Lcom/chartboost/sdk/impl/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$2;->a:Lcom/chartboost/sdk/impl/bc;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$2;->b:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bc;->a(ZLandroid/view/View;)V

    .line 71
    return-void
.end method
