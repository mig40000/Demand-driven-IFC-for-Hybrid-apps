.class final Lcom/appodeal/ads/g$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/g;->a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Ljava/lang/String;Lcom/appodeal/ads/g$b;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/f/c;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I

.field final synthetic d:Lcom/appodeal/ads/g$b;

.field final synthetic e:Lcom/appodeal/ads/g$b;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/f/c;Landroid/app/Activity;ILcom/appodeal/ads/g$b;Lcom/appodeal/ads/g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/g$4;->a:Lcom/appodeal/ads/f/c;

    iput-object p2, p0, Lcom/appodeal/ads/g$4;->b:Landroid/app/Activity;

    iput p3, p0, Lcom/appodeal/ads/g$4;->c:I

    iput-object p4, p0, Lcom/appodeal/ads/g$4;->d:Lcom/appodeal/ads/g$b;

    iput-object p5, p0, Lcom/appodeal/ads/g$4;->e:Lcom/appodeal/ads/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/g$4;->a:Lcom/appodeal/ads/f/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f/c;->b(I)V

    invoke-static {}, Lcom/appodeal/ads/a/c;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/h;->f()Lcom/appodeal/ads/k;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/g$4;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/appodeal/ads/a/c;->h()Lcom/appodeal/ads/h;

    move-result-object v2

    iget v3, p0, Lcom/appodeal/ads/g$4;->c:I

    iget-object v4, p0, Lcom/appodeal/ads/g$4;->d:Lcom/appodeal/ads/g$b;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/appodeal/ads/g$4;->e:Lcom/appodeal/ads/g$b;

    invoke-virtual/range {v0 .. v6}, Lcom/appodeal/ads/k;->a(Landroid/app/Activity;Lcom/appodeal/ads/h;ILcom/appodeal/ads/g$b;ZLcom/appodeal/ads/g$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
