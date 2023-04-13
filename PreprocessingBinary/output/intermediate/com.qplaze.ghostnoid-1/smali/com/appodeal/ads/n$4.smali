.class final Lcom/appodeal/ads/n$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/n;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/f/c;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/f/c;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/n$4;->a:Lcom/appodeal/ads/f/c;

    iput-object p2, p0, Lcom/appodeal/ads/n$4;->b:Landroid/app/Activity;

    iput p3, p0, Lcom/appodeal/ads/n$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/n$4;->a:Lcom/appodeal/ads/f/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f/c;->b(I)V

    invoke-static {}, Lcom/appodeal/ads/b/c;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/n$4;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/appodeal/ads/n$4;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/r;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
