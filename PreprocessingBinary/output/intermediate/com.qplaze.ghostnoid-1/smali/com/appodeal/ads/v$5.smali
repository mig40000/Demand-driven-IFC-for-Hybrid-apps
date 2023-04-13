.class final Lcom/appodeal/ads/v$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/v;->a(Landroid/app/Activity;Ljava/lang/String;ZLcom/appodeal/ads/f/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/w;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/w;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/v$5;->a:Lcom/appodeal/ads/w;

    iput-object p2, p0, Lcom/appodeal/ads/v$5;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/v$5;->a:Lcom/appodeal/ads/w;

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/v$5;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/appodeal/ads/v$5;->a:Lcom/appodeal/ads/w;

    sget v3, Lcom/appodeal/ads/v;->q:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/z;->a(Landroid/app/Activity;Lcom/appodeal/ads/w;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
