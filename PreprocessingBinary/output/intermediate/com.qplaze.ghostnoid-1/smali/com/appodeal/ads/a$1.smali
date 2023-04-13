.class Lcom/appodeal/ads/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/a;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/os/HandlerThread;

.field final synthetic c:Lcom/appodeal/ads/a;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/a;JLandroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a$1;->c:Lcom/appodeal/ads/a;

    iput-wide p2, p0, Lcom/appodeal/ads/a$1;->a:J

    iput-object p4, p0, Lcom/appodeal/ads/a$1;->b:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lcom/appodeal/ads/a$1;->a:J

    iget-object v2, p0, Lcom/appodeal/ads/a$1;->c:Lcom/appodeal/ads/a;

    invoke-static {v2}, Lcom/appodeal/ads/a;->a(Lcom/appodeal/ads/a;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/a$1;->c:Lcom/appodeal/ads/a;

    invoke-static {v0}, Lcom/appodeal/ads/a;->b(Lcom/appodeal/ads/a;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/appodeal/ads/a$1;->c:Lcom/appodeal/ads/a;

    invoke-static {v2}, Lcom/appodeal/ads/a;->a(Lcom/appodeal/ads/a;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/Appodeal;->a:Z

    const-string v0, "Appodeal paused"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/a$1;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
