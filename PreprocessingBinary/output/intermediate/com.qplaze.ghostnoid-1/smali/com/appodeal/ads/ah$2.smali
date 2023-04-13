.class final Lcom/appodeal/ads/ah$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/ah;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/appodeal/ads/f/c;

.field final synthetic c:Lcom/appodeal/ads/ap;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/ap;I)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/ah$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appodeal/ads/ah$2;->b:Lcom/appodeal/ads/f/c;

    iput-object p3, p0, Lcom/appodeal/ads/ah$2;->c:Lcom/appodeal/ads/ap;

    iput p4, p0, Lcom/appodeal/ads/ah$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/ah$2;->a:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget-boolean v1, Lcom/appodeal/ads/AppodealSettings;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/appodeal/ads/AppodealSettings;->f:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/ah$2;->b:Lcom/appodeal/ads/f/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f/c;->b(I)V

    iget-object v0, p0, Lcom/appodeal/ads/ah$2;->c:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/ah$2;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/appodeal/ads/ah$2;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/aq;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
