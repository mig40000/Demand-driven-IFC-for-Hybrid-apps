.class Lcom/cmcm/utils/k$a$1;
.super Ljava/lang/Object;
.source "ParseUrlUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/utils/k$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmcm/utils/k$a;


# direct methods
.method constructor <init>(Lcom/cmcm/utils/k$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cmcm/utils/k$a$1;->b:Lcom/cmcm/utils/k$a;

    iput-object p2, p0, Lcom/cmcm/utils/k$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cmcm/utils/k$a$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/utils/k$a$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/picks/market/MarketUtils;->isGooglePlayUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/cmcm/utils/k$a$1;->b:Lcom/cmcm/utils/k$a;

    iget-object v0, v0, Lcom/cmcm/utils/k$a;->d:Lcom/cmcm/utils/k;

    iget-object v1, p0, Lcom/cmcm/utils/k$a$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcm/utils/k;->a(Lcom/cmcm/utils/k;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v0, Lcom/cmcm/utils/l;

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmcm/utils/l;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v1, Lcom/cmcm/utils/k$a$1$1;

    invoke-direct {v1, p0}, Lcom/cmcm/utils/k$a$1$1;-><init>(Lcom/cmcm/utils/k$a$1;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/utils/l;->a(Lcom/cmcm/utils/l$a;)V

    .line 81
    iget-object v1, p0, Lcom/cmcm/utils/k$a$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcm/utils/k$a$1;->b:Lcom/cmcm/utils/k$a;

    iget-object v2, v2, Lcom/cmcm/utils/k$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcm/utils/k$a$1;->b:Lcom/cmcm/utils/k$a;

    iget-object v3, v3, Lcom/cmcm/utils/k$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcm/utils/k$a$1;->b:Lcom/cmcm/utils/k$a;

    iget-object v4, v4, Lcom/cmcm/utils/k$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmcm/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
