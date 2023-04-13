.class Lcom/chartboost/sdk/impl/al$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/al$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/chartboost/sdk/impl/al$1;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/al$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/chartboost/sdk/impl/al$1$1;->b:Lcom/chartboost/sdk/impl/al$1;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/al$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al$1$1;->b:Lcom/chartboost/sdk/impl/al$1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/al$1;->d:Lcom/chartboost/sdk/impl/al;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/al$1$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/al$1$1;->b:Lcom/chartboost/sdk/impl/al$1;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/al$1;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/al$1$1;->b:Lcom/chartboost/sdk/impl/al$1;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/al$1;->c:Lcom/chartboost/sdk/c$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-class v1, Lcom/chartboost/sdk/impl/al;

    const-string v2, "open openOnUiThread Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
